#ifndef DMA0_H
#define DMA0_H
#include "gba/types.h"
/* Program DMA0 SAD, DAD and CNT in address order. The fixed registers form
 * the STM register list, as in DMA3_SET. Write-back advances p by 12 bytes;
 * SUB restores it. Keep the read/write base operand and memory clobber. */
static inline void DMA0_SET(const void *src, void *dst, u32 control)
{
    register const void *s asm("r0") = src;
    register void *d asm("r1") = dst;
    register u32 c asm("r2") = control;
    register volatile u32 *p asm("r3") = (volatile u32 *)0x040000b0;
    asm volatile("stmia %0!, {%1, %2, %3}\n\tsub %0, #0xc"
                 : "+r"(p) : "r"(s), "r"(d), "r"(c) : "memory");
}
#endif
