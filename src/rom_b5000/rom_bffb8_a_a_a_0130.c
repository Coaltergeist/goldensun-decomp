#include "gba/io.h"

extern unsigned char iwram_3001f00[];

void Func_80c0130(void)
{
    register unsigned char **r2 asm("r2") = (unsigned char **)iwram_3001f00;
    register unsigned char *r3 asm("r3") = *r2;
    register int r3i asm("r3");

    r3i = *(int *)(r3 + 8);
    if (r3i == 2) {
        register unsigned char **r3b asm("r3") = (unsigned char **)((char *)r2 - 0x88);
        register unsigned char *r4 asm("r4") = *r3b;
        register int r3c asm("r3") = *(int *)r4;
        register unsigned char *r0 asm("r0") = r4 + r3c * 0x140;
        register unsigned short r3d asm("r3");
        register unsigned short *r1 asm("r1");
        register unsigned int *r3e asm("r3");
        register unsigned int r2b asm("r2");

        asm volatile("ldrh %0, [%1, #0x20]" : "=r"(r3d) : "r"(r0));
        r1 = &REG_BG2CNT;
        *r1 = r3d;
        asm volatile ("" : "+r"(r1));

        r3e = (unsigned int *)&REG_DMA0SAD;
        asm volatile ("" : "+r"(r3e));
        r2b = 0xa2600001;
        asm volatile ("" : "+r"(r2b));
        r0 = r0 + 0x22;
        asm volatile("stmia %0!, {%1, %2, %3}\n\tsub %0, #0xc"
                     : "+r"(r3e) : "r"(r0), "r"(r1), "r"(r2b) : "memory");

        r0 = r4;
        r3e = (unsigned int *)((char *)r3e + 0x24);
        r0 = r0 + 0x10;
        r1 = (unsigned short *)((char *)r1 + 0x14);
        r2b = 0x84000004;
        asm volatile("stmia %0!, {%1, %2, %3}\n\tsub %0, #0xc"
                     : "+r"(r3e) : "r"(r0), "r"(r1), "r"(r2b) : "memory");
    }
}
