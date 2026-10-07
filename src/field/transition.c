/* unknown/sub_809b804.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/transition/Func_809bb64.s");

extern unsigned char gBuffer[65536];

void Func_809bcd4(void) {
    unsigned int r5;
    r5 = (unsigned int)&gBuffer;
    Func_8003f3c(*(unsigned short *)r5);
    Func_8003f3c(*(unsigned short *)(r5 + 2));
    _CloseUIBox(*(unsigned int *)(r5 + 0x1c), 2);
}

INCLUDE_ASM("asm/field/transition/Func_809bcf8.s");
INCLUDE_ASM("asm/field/transition/Func_809c138.s");
INCLUDE_ASM("asm/field/transition/Func_809c314.s");

typedef struct { unsigned char _bytes[4]; } KeyState32;
extern KeyState32 gKeyHeld;
extern void *galloc_ewram(int index, unsigned int size);
extern void Func_800430c(void);
extern void Func_809c314(void);
extern void ResetPlayerSpeed(void);
extern void Func_80936a0(int a, int b);
extern void WaitFrames(unsigned int nframes);
extern void Func_80043e0(void);

void Func_809c3a4(void)
{
    void *base;

    base = galloc_ewram(0x1b, 0xccc);
    if (*(short *)((char *)base + 0x19e) == 3) {
        Func_800430c();
        Func_809c314();
        ResetPlayerSpeed();
        Func_80936a0(0x9d89, 6);
        while ((*(unsigned int *)&gKeyHeld & 0x200) != 0) {
            WaitFrames(1);
        }
        Func_80936a0(0x10000, 6);
        Func_80043e0();
    }
}
