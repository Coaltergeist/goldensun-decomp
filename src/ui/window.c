#include "nonmatching.h"
#include "dma.h"

INCLUDE_ASM("asm/ui/window/Func_8015e8c.s");

extern unsigned int iwram_3001e8c;

void Func_8015ec0(unsigned int arg0)
{
    unsigned char *base;
    unsigned int *slot;
    unsigned int *prev;

    base = (unsigned char *)iwram_3001e8c;
    if (arg0 < (unsigned int)(base + 0x698))
        return;
    if (arg0 >= (unsigned int)(base + 0xd98))
        return;
    slot = (unsigned int *)(base + 0xd9c);
    prev = (unsigned int *)*slot;
    *slot = arg0;
    *prev = arg0;
    *(unsigned int *)arg0 = 0;
}
void Func_8015ef4(void)
{
    unsigned int base;
    unsigned int *p;
    int i;

    base = iwram_3001e8c;
    p = (unsigned int *)(base + 0x698);
    *(unsigned int **)(base + 0xd98) = p;
    for (i = 0x3e; i >= 0; i--) {
        unsigned int *next = (unsigned int *)((char *)p + 0x1c);
        *p = (unsigned int)next;
        p = next;
    }
    *p = 0;
    *(unsigned int **)(base + 0xd9c) = p;
}

extern void *galloc_ewram(int index, unsigned int size);
extern void Func_8015ef4(void);
extern void Func_8019d0c(void);
extern void StartTask(void (*task)(void), unsigned int priority);
extern void Func_80173f4(void);
extern void Func_80160fc(void);

struct Ui8015f30 {
    unsigned char pad0[0xea3];
    unsigned char fea3;
    unsigned char pad1[3];
    unsigned char fea7;
    unsigned char pad2[0x12b6 - 0xea8];
    unsigned short f12b6;
    unsigned char pad3[0x12fc - 0x12b8];
};

void Func_8015f30(void)
{
    struct Ui8015f30 *p;
    vu32 value;
    unsigned int prio;

    p = galloc_ewram(0xf, 0x12fc);
    value = 0;
    DMA3_SET((const void *)&value, p, 0x850004bf);
    p->fea3 = 1;
    p->f12b6 = 0x63;
    p->fea7 = 0xf;
    value = 0xf000f000;
    DMA3_SET((const void *)&value, p, 0x85000140);
    Func_8015ef4();
    Func_8019d0c();
    prio = 0x90 << 3;
    StartTask(Func_80160fc, prio);
    Func_80173f4();
}
INCLUDE_ASM("asm/ui/window/Func_8015fb8.s");
INCLUDE_ASM("asm/ui/window/Func_8016018.s");
INCLUDE_ASM("asm/ui/window/Func_80160fc.s");
