/* field/unknown_808ce74.c */
#include "nonmatching.h"

extern int _GetFlag(void);
extern unsigned int __start_overlay[];

INCLUDE_ASM("asm/field/unknown_808ce74/Func_808ce74.s");

INCLUDE_ASM("asm/field/unknown_808ce74/InitPlayerPos.s");

INCLUDE_ASM("asm/field/unknown_808ce74/Debug_PaletteEditor.s");

INCLUDE_ASM("asm/field/unknown_808ce74/Func_808d394.s");

unsigned int Func_808d428(int x)
{
    int v;
    if (x == -1)
        return 1;
    if (x & 0x1000)
        return _GetFlag();
    v = _GetFlag();
    return 1 - (((unsigned int)(-v | v)) >> 31);
}

unsigned int Func_808d458(unsigned int arg0, unsigned int arg1)
{
    unsigned int a;
    unsigned int b;

    if ((arg0 & 0xf) != 3)
        return 0;
    if ((arg0 & 0x1ff) == 3)
        return 0;
    a = (arg1 & 0xfff00000) ^ (0xa0 << 15);
    b = -a;
    return (b | a) >> 31;
}

INCLUDE_ASM("asm/field/unknown_808ce74/FindMapActorEvent.s");

void InitMap(void) {
    extern void _call_via_r0(void (*)(void));
    _call_via_r0((void (*)(void))__start_overlay[1]);
}

INCLUDE_ASM("asm/field/unknown_808ce74/FindSpeakEvent.s");

INCLUDE_ASM("asm/field/unknown_808ce74/rodata.s");
