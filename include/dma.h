#ifndef _DMA_H_
#define _DMA_H_

#include "gba/io.h"
#include "gba/types.h"

// wrapper inline assembly for starting a DMA3 transfer.
// I'm not sure if this is the whole story, but it matches the
// common pattern of
// fill r0-r3 with dma-related values
// stmia r3!, {r0,r1,r2}
// subs r3, #0xc

static inline void DMA3_COPY(const void *src, void *dst, u32 size) {
    register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
    register const void *_src  __asm__("r0") = src;
    register void *_dst  __asm__("r1") = dst;
    register u32 _cnt  __asm__("r2") = 0x84000000 | (size / 4);
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "memory"
    );
}

// there must be a way to unify those, maybe they were macros instead of
// inline functions and had some sort of common DMAN_SET

static inline void DMA3_CLEAR(void *dst, unsigned size) {
    u32 value;
    register u32 * _src  __asm__("r0") = (&value);
    *_src = 0;
    {
        register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
        register unsigned _dst  __asm__("r1") = (unsigned)(dst);
        register unsigned _cnt  __asm__("r2") = (unsigned)(0x85000000 | (size / 4));
        __asm__ volatile (
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            :
            : "l" (_base), "l" (_src), "l" (_dst), "l" (_cnt)
            : "memory"
        );
    }
}

// there must be a way to unify those, maybe they were macros instead of
// inline functions and had some sort of common DMAN_SET

static inline void DMA3_FILL(void *dst, u32 _value, unsigned size) {
    u32 value;
    register u32 * _src  __asm__("r0") = (&value);
    *_src = _value;
    {
        register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
        register unsigned _dst  __asm__("r1") = (unsigned)(dst);
        register unsigned _cnt  __asm__("r2") = (unsigned)(0x85000000 | (size / 4));
        __asm__ volatile (
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            :
            : "l" (_base), "l" (_src), "l" (_dst), "l" (_cnt)
            : "memory"
        );
    }
}

static inline void DMA3_COPY16(const void *src, void *dst, u32 size) {
    register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
    register const void *_src  __asm__("r0") = src;
    register void *_dst  __asm__("r1") = dst;
    register u32 _cnt  __asm__("r2") = 0x80000000 | (size / 4);
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "memory"
    );
}

// prelude on some functions

static inline u16 UnknownDMAPrefix(void) {
    vu16 *dma = (vu16*)&REG_DMA0SAD;
    u16 cnt = dma[5];
    dma[5] = cnt & 0xc5ff;
    cnt = dma[5];
    dma[5] = cnt & 0x7fff;
    return dma[5];
}

#endif // _DMA_H_
