#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"

extern unsigned char iwram_3001ea8[];

static inline void DMA0_SET(const void *src, void *dst, u32 cnt) {
    register vu32 *_base __asm__("r3") = &REG_DMA0SAD;
    register const void *_src  __asm__("r0") = src;
    register void *_dst  __asm__("r1") = dst;
    register u32 _cnt  __asm__("r2") = cnt;
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "memory"
    );
}

void Func_8097868(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001ea8;

    if (base[0xa5 << 2] == 0) {
        u32 wordIdx = base[0x28a] * 0x51;

        (void) UnknownDMAPrefix();

        DMA0_SET(base + (wordIdx << 2), (void *)&REG_BG0HOFS, 0xa2600001);
    }
}
