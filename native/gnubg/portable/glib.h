/* Private GNUbg headless compatibility layer. GPL-3.0-or-later. */
#pragma once
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>
#ifdef _WIN32
#include <malloc.h>
#ifndef alloca
#define alloca _alloca
#endif
#else
#include <alloca.h>
#endif
#include <errno.h>
#include <math.h>
#include <time.h>
#define TRUE 1
#define FALSE 0
#define G_PI 3.14159265358979323846
#define G_PI_2 1.57079632679489661923
#define GLIB_CHECK_VERSION(a,b,c) 1
#define G_GNUC_PRINTF(a,b)
#define G_GNUC_NORETURN
#define G_GNUC_UNUSED
#define G_GNUC_CONST
#define G_GNUC_PURE
#define G_BEGIN_DECLS
#define G_END_DECLS
#define G_FILE_TEST_EXISTS 1
#define G_FILE_TEST_IS_REGULAR 2
#define gettext(s) (s)
#define MIN(a,b) ((a)<(b)?(a):(b))
#define MAX(a,b) ((a)>(b)?(a):(b))
#define g_assert assert
#define g_assert_not_reached() assert(0)
#define g_return_val_if_fail(c,v) do {if(!(c)) return (v);}while(0)
#define g_alloca alloca
#define g_free free
#define g_malloc malloc
#define g_new0(t,n) ((t*)calloc(n,sizeof(t)))
#define g_strdup strdup
#define g_strerror strerror
#define g_fopen fopen
#define g_print printf
#define g_printerr(...) fprintf(stderr,__VA_ARGS__)
#define g_warning(...) fprintf(stderr,__VA_ARGS__)
#define g_error(...) do {fprintf(stderr,__VA_ARGS__); abort();}while(0)
#define g_ascii_strtoull strtoull
typedef char gchar;
typedef int gint, gboolean;
typedef unsigned int guint;
typedef float gfloat;
typedef uint64_t guint64;
typedef void* gpointer;
typedef const void* gconstpointer;
typedef size_t gsize;
typedef ptrdiff_t gssize;
typedef struct GList { void *data; struct GList *next,*prev;} GList;
typedef struct {char *str;size_t len,allocated_len;} GString;
typedef void* GCond;
typedef void* GMutex;
typedef void* GPrivate;
typedef struct {char *message;} GError;
typedef struct {char *data;size_t size;} GMappedFile;
typedef struct GMarkupParseContext GMarkupParseContext;
typedef int GMarkupParseFlags;
typedef struct {
 void (*start_element)(GMarkupParseContext*,const char*,const char**,const char**,void*,GError**);
 void (*end_element)(GMarkupParseContext*,const char*,void*,GError**);
 void (*text)(GMarkupParseContext*,const char*,size_t,void*,GError**);
 void (*passthrough)(GMarkupParseContext*,const char*,size_t,void*,GError**);
 void (*error)(GMarkupParseContext*,GError*,void*);
} GMarkupParser;
void *g_memdup2(const void*,size_t);
char *g_build_filename(const char*,const char*,void*);
#define g_memdup g_memdup2
double g_ascii_strtod(const char*,char**);
int g_file_test(const char*,int);
int g_file_get_contents(const char*,char**,size_t*,GError**);
void g_error_free(GError*);
GMappedFile *g_mapped_file_new(const char*,int,GError**);
char *g_mapped_file_get_contents(GMappedFile*);
void g_mapped_file_unref(GMappedFile*);
GMarkupParseContext *g_markup_parse_context_new(const GMarkupParser*,int,void*,void(*)(void*));
int g_markup_parse_context_parse(GMarkupParseContext*,const char*,size_t,GError**);
void g_markup_parse_context_free(GMarkupParseContext*);
