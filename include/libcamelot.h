#ifndef _LIBCAMELOT_H_
#define _LIBCAMELOT_H_

#include "gba/types.h"

void Func_80008d4(void*, u32);

// not sure if this works everywhere, static inline did not match Func_8003d04,
// do...while(0) macro idiom does not match either.
// this version does not work in a braceless if statement.

#define CAMELOT_MEMCLEAR(dst, size)                      \
{                                                        \
    u32 _size = size;                                    \
    void (*_mclear)(void *, u32) = Func_80008d4;         \
    void *_dst = dst;                                    \
    _mclear(_dst, _size);                                \
}

#endif // _LIBCAMELOT_H_
