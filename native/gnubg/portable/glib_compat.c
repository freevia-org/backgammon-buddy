/* GPL-3.0-or-later. Implements only the GLib subset used by the evaluator. */
#include <stddef.h>
#include "glib.h"
#include <expat.h>
#include <locale.h>
#ifdef __APPLE__
/* Darwin declares strtod_l and the extended locale APIs in xlocale.h. */
#include <xlocale.h>
#endif
void *g_memdup2(const void *p,size_t n){void *r=malloc(n);if(r)memcpy(r,p,n);return r;}
char *g_build_filename(const char *dir,const char *name,void *unused){(void)unused;size_t n=strlen(dir)+strlen(name)+2;char *p=malloc(n);if(p)snprintf(p,n,"%s/%s",dir,name);return p;}
/* XML numeric values use C syntax; never mutate the host process locale. */
double g_ascii_strtod(const char *s,char **end){
#ifdef _WIN32
 /* A null locale is not portable to pass on. The process locale is "C" unless
    the host changed it, so plain strtod is the closest available fallback. */
 _locale_t l=_create_locale(LC_NUMERIC,"C");if(!l)return strtod(s,end);
 double r=_strtod_l(s,end,l);_free_locale(l);return r;
#else
 locale_t l=newlocale(LC_NUMERIC_MASK,"C",0);if(!l)return strtod(s,end);
 double r=strtod_l(s,end,l);freelocale(l);return r;
#endif
}
/* Callers read error->message unconditionally, so on allocation failure hand
   back a static error whose message is always valid. g_error_free skips it. */
static GError error_oom={(char*)"out of memory"};
static void error_set(GError **e,const char *s){
 if(!e||*e)return;
 GError *r=calloc(1,sizeof(GError));
 if(r)r->message=strdup(s);
 if(!r||!r->message){free(r);r=&error_oom;}
 *e=r;
}
void g_error_free(GError *e){if(e&&e!=&error_oom){free(e->message);free(e);}}
int g_file_test(const char *p,int f){(void)f;FILE *h=fopen(p,"rb");if(!h)return 0;fclose(h);return 1;}
int g_file_get_contents(const char *p,char **out,size_t *size,GError **e){
 *out=NULL;*size=0;FILE *h=fopen(p,"rb");if(!h){error_set(e,strerror(errno));return 0;}
 if(fseek(h,0,SEEK_END)){fclose(h);error_set(e,"seek failed");return 0;}
 long n=ftell(h);if(n<0||fseek(h,0,SEEK_SET)){fclose(h);error_set(e,"seek failed");return 0;}
 char *b=malloc((size_t)n+1);if(!b){fclose(h);error_set(e,"allocation failed");return 0;}
 if(fread(b,1,n,h)!=(size_t)n){free(b);fclose(h);error_set(e,"read failed");return 0;}
 fclose(h);b[n]=0;*out=b;*size=n;return 1;
}
GMappedFile *g_mapped_file_new(const char *p,int w,GError **e){(void)w;GMappedFile *f=calloc(1,sizeof(*f));if(!f)return NULL;if(!g_file_get_contents(p,&f->data,&f->size,e)){free(f);return NULL;}return f;}
char *g_mapped_file_get_contents(GMappedFile *f){return f->data;}
void g_mapped_file_unref(GMappedFile *f){if(f){free(f->data);free(f);}}
struct GMarkupParseContext{XML_Parser xml;GMarkupParser cb;void *data;void(*destroy)(void*);GError *error;};
static void start(void *v,const char *name,const char **attrs){
 GMarkupParseContext *c=v;size_t n=0;while(attrs[n*2])n++;
 const char **names=calloc(n+1,sizeof(char*)),**values=calloc(n+1,sizeof(char*));
 if(!names||!values){free(names);free(values);error_set(&c->error,"allocation failed");XML_StopParser(c->xml,XML_FALSE);return;}
 for(size_t i=0;i<n;i++){names[i]=attrs[i*2];values[i]=attrs[i*2+1];}
 c->cb.start_element(c,name,names,values,c->data,&c->error);free(names);free(values);
 if(c->error)XML_StopParser(c->xml,XML_FALSE);
}
static void end(void *v,const char *name){GMarkupParseContext *c=v;c->cb.end_element(c,name,c->data,&c->error);if(c->error)XML_StopParser(c->xml,XML_FALSE);}
static void chars(void *v,const char *text,int n){GMarkupParseContext *c=v;if(!c->cb.text)return;char *copy=malloc((size_t)n+1);if(!copy){error_set(&c->error,"allocation failed");XML_StopParser(c->xml,XML_FALSE);return;}memcpy(copy,text,n);copy[n]=0;c->cb.text(c,copy,n,c->data,&c->error);free(copy);if(c->error)XML_StopParser(c->xml,XML_FALSE);}
GMarkupParseContext *g_markup_parse_context_new(const GMarkupParser *cb,int flags,void *data,void(*destroy)(void*)){
 (void)flags;GMarkupParseContext *c=calloc(1,sizeof(*c));if(!c)return NULL;c->xml=XML_ParserCreate(NULL);if(!c->xml){free(c);return NULL;}
 c->cb=*cb;c->data=data;c->destroy=destroy;XML_SetUserData(c->xml,c);XML_SetElementHandler(c->xml,start,end);XML_SetCharacterDataHandler(c->xml,chars);return c;
}
int g_markup_parse_context_parse(GMarkupParseContext *c,const char *s,size_t n,GError **e){
 if(n>INT32_MAX){error_set(e,"XML too large");return 0;}
 int ok=XML_Parse(c->xml,s,(int)n,XML_TRUE)==XML_STATUS_OK;
 if(!ok){
  GError *local=NULL;if(!e)e=&local;
  if(c->error){*e=c->error;c->error=NULL;}else error_set(e,XML_ErrorString(XML_GetErrorCode(c->xml)));
  if(c->cb.error)c->cb.error(c,*e,c->data);
  g_error_free(local);
 }
 return ok;
}
void g_markup_parse_context_free(GMarkupParseContext *c){if(c){XML_ParserFree(c->xml);if(c->destroy)c->destroy(c->data);g_error_free(c->error);free(c);}}
