/* field/moves/cloak.c */
#include "nonmatching.h"

extern unsigned char gState;
extern void Func_8099678(void);
extern void StartTask(void *task, int priority);

INCLUDE_ASM("asm/field/moves/cloak/Func_8099678.s");

INCLUDE_ASM("asm/field/moves/cloak/Func_8099738.s");

void Func_8099810(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    r3 = (unsigned int)&gState;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);
    if (val != 0) {
        StartTask(Func_8099678, 0xc8 << 4);
    }
}

INCLUDE_ASM("asm/field/moves/cloak/Field_Cloak.s");
