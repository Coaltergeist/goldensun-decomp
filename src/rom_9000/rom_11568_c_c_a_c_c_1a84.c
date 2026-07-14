#include "gba/types.h"
#include "gba/io.h"

extern unsigned char iwram_3001e70[];
extern int StartTask(void *task, int priority);
extern void Func_80119cc(void);

void Func_8011a84(unsigned short *param0) {
    unsigned char *base;
    unsigned char *dst;
    unsigned int started;
    unsigned int value;

    base = *(unsigned char **)iwram_3001e70;
    started = 0;

    {
        register unsigned int *src __asm__("r0") = &value;
        dst = base + 0xd8;
        *src = started;
        {
            register vu32 *dma __asm__("r3") = &REG_DMA3SAD;
            register unsigned int ddst __asm__("r1") = (unsigned int)dst;
            register unsigned int cnt __asm__("r2") = 0x85000003;
            __asm__ volatile (
                "stmia\tr3!, {r0, r1, r2}\n\t"
                "sub\tr3, #0xc"
                : "+r" (dma)
                : "r" (src), "r" (ddst), "r" (cnt)
                : "memory"
            );
        }
    }

    if (*param0 != 0xffff) {
        *(unsigned short **)dst = param0;
        *(unsigned short **)(dst + 4) = param0;
        *(unsigned short *)(dst + 8) = 0;
        *(unsigned short *)(dst + 0xa) = 0;
        started = 1;
    }

    if (started) {
        StartTask(Func_80119cc, 200 << 4);
    }
}
