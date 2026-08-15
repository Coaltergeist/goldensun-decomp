/* title.c -- Nintendo/Camelot logo + title intro sequence. */
#include "nonmatching.h"

void Func_80f2b6c(void) {}

INCLUDE_ASM("asm/title/rom_f2028_c_a.s");

void Func_80f2eb8(void) {}

INCLUDE_ASM("asm/title/rom_f2028_c_c_a_a_a.s");

#include "dma.h"
#include "task.h"
extern void *galloc_ewram(int index, unsigned int size);
extern void Func_80f3078(unsigned int, unsigned int, unsigned int, unsigned int);
extern void Func_80f2f10(void);

void Func_80f377c(void)
{
    unsigned char *p;

    p = galloc_ewram(0x20, 0x3004);
    DMA3_CLEAR(p, 0x3004);
    DMA3_COPY((void *)0x05000000, p, 0x200);
    DMA3_COPY((void *)0x05000200, p + 0x200, 0x200);
    Func_80f3078(0x10000, (unsigned int)p, (unsigned int)(p + 0x1000), 0);
    StartTask(Func_80f2f10, 0xc80);
}

extern void gfree(int index);

void Func_80f37ec(void) {
    StopTask(Func_80f2f10);
    gfree(0x20);
}

extern unsigned char iwram_3001ed0[];

void Func_80f3804(int arg0, int arg1) {
    unsigned char *base;
    base = *(unsigned char **)iwram_3001ed0;
    if (base != (unsigned char *)0) {
        Func_80f3078(arg0, base, base + 0x1000, arg1);
    }
}


void Func_80f3824(unsigned int arg0, unsigned int arg1) {
    unsigned int r1;
    r1 = *(unsigned int *)iwram_3001ed0;
    if (r1 != 0) {
        Func_80f3078(arg0, r1, r1 + (0x80 << 3), arg1);
    }
}

extern unsigned short *iwram_3001ed0__a2 __asm__("iwram_3001ed0");

void Func_80f3844(int arg0)
{
    unsigned short *p;
    p = iwram_3001ed0__a2;
    if (p)
        *p = arg0;
}

INCLUDE_ASM("asm/title/rom_f2028_c_c_c_a_a.s");

int Func_80f3898(int arg0) {
    if (arg0 > 0x1f)
        arg0 = 0x1f;
    else if (arg0 < 0)
        arg0 = 0;
    return arg0;
}

int Func_80f38ac(int arg0) {
    int max;

    max = 0xf8 << 7;
    if (arg0 > max)
        arg0 = max;
    return arg0;
}
