#pragma once
// This header will disappear at one point of time.

#include <cstdlib>

char *xstrdup (const char *s);
void *xcalloc (size_t nmemb, size_t size);
void *xmalloc (size_t size);
void *xrealloc (void *oldptr, size_t size);

template <typename T>
T* cppalloc(size_t nmemb=1) {
    return static_cast<T*>(std::malloc(nmemb*sizeof(T)));
}

