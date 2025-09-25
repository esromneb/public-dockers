#define _GNU_SOURCE 1

#include <dlfcn.h>

static void *(*orig_dlopen)(char const *, int) = 0;

void *dlopen(char const *name, int flags)
{
    if(!orig_dlopen)
        orig_dlopen = dlsym(RTLD_NEXT, "dlopen");
    flags &= ~RTLD_DEEPBIND;
    return orig_dlopen(name, flags);
}

