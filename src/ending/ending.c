#include "nonmatching.h"
#include "dma.h"

void Func_80f0254(unsigned int arg0)
{
    unsigned int fill;
    void *vram;
    void *pal;
    vu32 buf;

    if (arg0 == 0) {
        fill = 0x01010101;
        vram = (void *)0x6000000;
        pal = (void *)0x5000000;
    } else {
        fill = 0x81818181;
        vram = (void *)0x6008000;
        pal = (void *)0x5000100;
    }
    buf = fill;
    DMA3_SET((const void *)&buf, vram, 0x85001e00);
    buf = 0;
    DMA3_SET((const void *)&buf, pal, 0x85000040);
}
INCLUDE_ASM("asm/ending/ending/LoadGS1CreditsBG.s");
void Func_80f037c(unsigned int *p)
{
    unsigned int v1 = 0x01ff01ff;
    unsigned int v2 = 0x80 << 9;
    int i;

    for (i = 0; i < 0x20; i++) {
        *p++ = v1;
    }
    for (i = 0; i < 0xf0; i++) {
        *p++ = v2;
        v2 += 0x00020002;
    }
    for (i = 0; i < 0x30; i++) {
        *p++ = v1;
    }
    v2 = 0;
    for (i = 0; i < 0xc0; i++) {
        *p++ = v2;
    }
}

extern unsigned int iwram_3001800;
extern unsigned short iwram_3001ad0;

void Func_80f03c0(void) {
    unsigned short *p;
    if ((iwram_3001800 & 3) == 0) {
        p = &iwram_3001ad0;
        *(unsigned short *)((char *)p + 8) = *(unsigned short *)((char *)p + 8) - 1;
        *(unsigned short *)((char *)p + 12) = *(unsigned short *)((char *)p + 12) - 1;
    }
}

INCLUDE_ASM("asm/ending/ending/StartGS1Credits.s");
INCLUDE_ASM("asm/ending/ending/Func_80f0538.s");
INCLUDE_ASM("asm/ending/ending/Func_80f0614.s");
INCLUDE_ASM("asm/ending/ending/Func_80f0678.s");
INCLUDE_ASM("asm/ending/ending/Func_80f07f0.s");
