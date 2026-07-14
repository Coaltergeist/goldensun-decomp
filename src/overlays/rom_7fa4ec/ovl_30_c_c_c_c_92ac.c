#include "dma.h"

extern void *__Func_8004970(unsigned int size);
extern int __AllocSpriteSlot(void);
extern void __UploadSpriteGFX(int sprite, int size, void *source);
extern void __StartTask(void (*task)(void), int priority);
extern short L1c1a[] __asm__(".L1c1a");
extern short L1c18[] __asm__(".L1c18");
extern void OvlFunc_970_20091c4(void);

void OvlFunc_970_20092ac(void)
{
    register void *gfx asm("r6");
    register short *slotPtr asm("r5");

    gfx = __Func_8004970(0x100);
    slotPtr = L1c1a;
    *slotPtr = __AllocSpriteSlot();
    DMA3_FILL(gfx, 0x11111111, 0x100);
    {
        unsigned int size2;
        asm volatile("mov %0, #0x80" : "=r"(size2));
        size2 <<= 1;
        __UploadSpriteGFX(*slotPtr, size2, gfx);
    }
    *L1c18 = 0x30;
    {
        unsigned int priority = 0xc8;
        priority <<= 4;
        __StartTask(OvlFunc_970_20091c4, priority);
    }
}
