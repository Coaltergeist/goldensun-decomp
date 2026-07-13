#include "dma.h"

#define DmaObjCopy Func_80a22f4

/* OBJパレット用データを２ブロック転送 */
void DmaObjCopy(void)
{
    register vu32 *dma __asm__("r3") = &REG_DMA3SAD;
    register const void *src __asm__("r0") = (void *)0x05000200;
    register void *dst __asm__("r1") = (void *)0x050001c0;
    register u32 cnt __asm__("r2") = 0x80000010;

    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        : "+r" (dma), "+r" (src), "+r" (cnt)
        : "r" (dst)
        : "memory"
    );

    dst = (u8 *)dst + 0x1c;
    src = (void *)0x050001e8;
    cnt = 0x80000001;
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        : "+r" (dma)
        : "r" (src), "r" (dst), "r" (cnt)
        : "memory"
    );
}
