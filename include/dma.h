#ifndef _DMA_H_
#define _DMA_H_

// wrapper inline assembly for starting a DMA3 transfer.
// I'm not sure if this is the whole story, but it matches the
// common pattern of
// fill r0-r3 with dma-related values
// stmia r3!, {r0,r1,r2}
// subs r3, #0xc

static inline void DMA3_COPY(void *src, void *dst, unsigned cnt) {
    register unsigned _base __asm__("r3") = (unsigned)0x040000D4;
    register unsigned _src  __asm__("r0") = (unsigned)(src);
    register unsigned _dst  __asm__("r1") = (unsigned)(dst);
    register unsigned _cnt  __asm__("r2") = (unsigned)(cnt);
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "r0", "r1", "r2", "r3", "memory"
    );
}

#endif // _DMA_H_
