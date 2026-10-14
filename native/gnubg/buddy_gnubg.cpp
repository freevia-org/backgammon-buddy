// GPL-3.0-or-later. GNUbg globals are protected across all Dart isolates.
#include <mutex>
#include <string>
#include <cstring>
#include <cstdarg>
extern "C" {
#include "backgammon.h"
#include "matchequity.h"
#include "multithread.h"
#include "positionid.h"
}
#ifdef _WIN32
#define API extern "C" __declspec(dllexport)
#else
#define API extern "C" __attribute__((visibility("default")))
#endif
static std::mutex gate;
static std::string data_dir;
static int ready=0;
static move moves[MAX_INCOMPLETE_MOVES];
static NNState nn_states[3];
static ThreadLocalData tld={0,moves,nn_states};
extern "C" {
ThreadData td={};
char *getPkgDataDir(void){return data_dir.data();}
int LogCube(int n){int r=0;while(n>1){n>>=1;r++;}return r;}
void outputerrf(const char *fmt,...){va_list args;va_start(args,fmt);vfprintf(stderr,fmt,args);va_end(args);}
void PrintError(const char *text){fprintf(stderr,"GNUbg: %s\n",text);}
}
// Signed 26-pip encoding, as used by wildbg. GNUbg row 1 is on roll.
static bool board_from(const int *p,TanBoard b){
 if(!p||p[0]>0||p[25]<0)return false;
 memset(b,0,sizeof(TanBoard));int totals[2]={0,0};
 for(int i=0;i<26;i++){if(p[i]<-15||p[i]>15)return false;}
 b[0][24]=-p[0];b[1][24]=p[25];totals[0]=-p[0];totals[1]=p[25];
 for(int i=1;i<=24;i++){if(p[i]>0){b[1][i-1]=p[i];totals[1]+=p[i];}else{b[0][24-i]=-p[i];totals[0]-=p[i];}}
 return totals[0]<=15&&totals[1]<=15;
}
// cube, relative owner (-1 centered,0 opponent,1 mover), match length,
// opponent score, mover score, Crawford, Jacoby, search plies, cubeless.
static bool context_from(const int *c,cubeinfo &ci,evalcontext &ec){
 if(!c||c[0]<1||c[0]>32768||(c[0]&(c[0]-1))||c[1]<-1||c[1]>1||c[2]<0||c[2]>MAXSCORE||c[3]<0||c[4]<0||c[7]<0||c[7]>2)return false;
 if(c[2]&&(c[3]>=c[2]||c[4]>=c[2]))return false;
 // GNUbg's match gammon-price cache has MAXCUBELEVEL rows (0..6).
 // Reject an out-of-range cube before SetCubeInfo indexes that cache.
 if(c[2]&&c[0]>(1<<(MAXCUBELEVEL-1)))return false;
 if(c[5]<0||c[5]>1||c[6]<0||c[6]>1||c[8]<0||c[8]>1)return false;
 int scores[2]={c[3],c[4]};if(SetCubeInfo(&ci,c[0],c[1],1,c[2],scores,c[5],c[6],0,VARIATION_STANDARD))return false;
 ec={};ec.fCubeful=!c[8];ec.nPlies=c[7];ec.fUsePrune=1;ec.fDeterministic=1;return true;
}
API int buddy_gnubg_version(){return 108003;}
API int buddy_gnubg_abi_version(){return 1;}
API int buddy_gnubg_init(const char *path){
 std::lock_guard<std::mutex> lock(gate);if(!path)return -1;
 if(ready)return ready>0&&data_dir==path?0:-2;
 data_dir=path;
 const char *files[]={"gnubg.wd","gnubg_os0.bd","gnubg_ts0.bd","kazaross-xg2.xml"};
 for(auto name:files){FILE *f=fopen((data_dir+"/"+name).c_str(),"rb");if(!f)return -3;fclose(f);}
 // Keep caches for process lifetime: upstream cannot reopen after shutdown.
 td.tld=&tld;std::string wd=data_dir+"/gnubg.wd";ready=-1;
 if(BuddyEvalInitialise(nullptr,wd.data(),0,nullptr))return -4;
 const neuralnet *nets[]={&nnRace,&nnCrashed,&nnContact};
 for(int i=0;i<3;i++){
  nn_states[i].state=NNSTATE_NONE;
  nn_states[i].savedBase=(float*)calloc(nets[i]->cHidden,sizeof(float));
  nn_states[i].savedIBase=(float*)calloc(nets[i]->cInput,sizeof(float));
  if(!nn_states[i].savedBase||!nn_states[i].savedIBase)return -6;
 }
 InitMatchEquity((data_dir+"/kazaross-xg2.xml").c_str());
 if(!pbc1||!pbc2||miCurrent.nLength!=25)return -5;
 ready=1;return 0;
}
API int buddy_gnubg_evaluate(const int *p,const int *c,float *out){
 std::lock_guard<std::mutex> lock(gate);TanBoard b;cubeinfo ci;evalcontext ec;
 if(ready!=1||!out||!board_from(p,b)||!context_from(c,ci,ec))return -1;
 return GeneralEvaluationE(out,b,&ci,&ec);
}
API int buddy_gnubg_rank(const int *p,const int *c,int d1,int d2,int capacity,int *details,float *scores,const int *played_after){
 std::lock_guard<std::mutex> lock(gate);TanBoard b;cubeinfo ci;evalcontext ec;
 if(ready!=1||!details||!scores||capacity<1||d1<1||d1>6||d2<1||d2>6||!board_from(p,b)||!context_from(c,ci,ec))return -1;
 positionkey key;positionkey *played_key=nullptr;
 if(played_after){TanBoard after;if(!board_from(played_after,after))return -1;PositionKey(after,&key);played_key=&key;}
 // GNUbg's own analysis path brings the played and top candidate to comparable
 // depth, including re-analysis of mistakes filtered out of the first search.
 movelist ml={};int result=FindnSaveBestMoves(&ml,d1,d2,b,played_key,0,&ci,&ec,defaultFilters);
 if(result){free(ml.amMoves);return -2;}
 if(ml.cMoves>(unsigned)capacity){free(ml.amMoves);return -3;}
 for(unsigned i=0;i<ml.cMoves;i++){
  memcpy(details+i*8,ml.amMoves[i].anMove,8*sizeof(int));
  memcpy(scores+i*9,ml.amMoves[i].arEvalMove,7*sizeof(float));
  scores[i*9+7]=ci.nMatchTo?eq2mwc(ml.amMoves[i].rScore,&ci):ml.amMoves[i].rScore;
  scores[i*9+8]=ml.amMoves[i].esMove.ec.nPlies;
 }
 int count=ml.cMoves;free(ml.amMoves);return count;
}
API int buddy_gnubg_cube(const int *p,const int *c,float *out){
 std::lock_guard<std::mutex> lock(gate);TanBoard b;cubeinfo ci;evalcontext ec;
 if(ready!=1||!out||!board_from(p,b)||!context_from(c,ci,ec))return -1;
 float evaluations[2][NUM_ROLLOUT_OUTPUTS]={};evalsetup es={};es.et=EVAL_EVAL;es.ec=ec;
 if(GeneralCubeDecisionE(evaluations,b,&ci,&ec,&es))return -2;
 cubedecision decision=FindCubeDecision(out,evaluations,&ci);
 if(ci.nMatchTo)for(int i=0;i<4;i++)out[i]=eq2mwc(out[i],&ci);
 memcpy(out+4,evaluations[0],7*sizeof(float));return decision;
}
