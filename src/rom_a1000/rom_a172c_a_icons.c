#include "gba/types.h"

extern int AllocSpriteSlot(void);
extern void UploadSpriteGFX(int slot, int size, const void *data);
extern int _Func_801eadc(int slot, unsigned int flags, unsigned int x,
                         unsigned int y, unsigned int arg4);
extern u8 SpriteGfx[] asm(".Laea4c");

int Func_80a172c(unsigned int x, unsigned int unused, unsigned int y,
                 unsigned int arg4)
{
    register unsigned int savedX asm("r8");
    register unsigned int savedY asm("r10");
    register unsigned int savedArg4 asm("r7");
    register int slot asm("r5");
    register int result asm("r6");

    asm volatile("mov r8, r0\n\t"
                 "mov r10, r2\n\t"
                 "mov r7, r3"
                 : "=r"(savedX), "=r"(savedY), "=r"(savedArg4));
    slot = AllocSpriteSlot();
    result = 0;
    if (slot != 0) {
        UploadSpriteGFX(slot, 0x80, SpriteGfx);
        result = _Func_801eadc(slot, 0x40000000, savedX, savedY,
                               savedArg4);
    }
    return result;
}

int Func_80a1778(unsigned int x, unsigned int y, unsigned int arg4)
{
    register unsigned int savedX asm("r8");
    register unsigned int savedY asm("r10");
    register unsigned int savedArg4 asm("r7");
    register int slot asm("r5");
    register int result asm("r6");

    asm volatile("mov r8, r0\n\t"
                 "mov r10, r1\n\t"
                 "mov r7, r2"
                 : "=r"(savedX), "=r"(savedY), "=r"(savedArg4));
    slot = AllocSpriteSlot();
    result = 0;
    if (slot != 0) {
        UploadSpriteGFX(slot, 0x80, SpriteGfx);
        result = _Func_801eadc(slot, 0x40000000, savedX, savedY,
                               savedArg4);
    }
    return result;
}
