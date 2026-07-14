#include "dma.h"

extern void *__Func_8004970(unsigned int size);
extern int __AllocSpriteSlot(void);
extern void __UploadSpriteGFX(int sprite, int size, void *source);
extern void *__GetFile(int index);
extern void __DecompressLZ(void *src, void *dst);
extern void __free(void *memory);
extern short L650[] __asm__(".L650");
extern int _FILE_1c;
#define FILE_1c ((int)&_FILE_1c)

void OvlFunc_879_20081c0(void)
{
    void *gfx;
    short *slotPtr;

    gfx = __Func_8004970(0xa4 << 3);
    slotPtr = L650;
    if (*slotPtr == -1) {
        *slotPtr = __AllocSpriteSlot();
    }
    __DecompressLZ(__GetFile(FILE_1c), gfx);
    DMA3_SET(gfx, (void *)0x50003e0, 0x84000008);
    {
        void *src = (char *)gfx + 0x20;
        int size = 0xa0 << 3;
        __UploadSpriteGFX(*slotPtr, size, src);
    }
    {
        vu32 *dma = (vu32 *)&REG_DMA3SAD;
        while (dma[2] & 0x80000000) ;
    }
    __free(gfx);
}
