/* ui/menus/debug_flag_editor.c */
#include "nonmatching.h"

extern void _SetFlag(unsigned int);
extern void _GiveDjinni(unsigned int, unsigned int, unsigned int);

INCLUDE_ASM("asm/ui/menus/debug_flag_editor/Debug_FlagEditor.s");

INCLUDE_ASM("asm/ui/menus/debug_flag_editor/Func_8029274.s");

INCLUDE_ASM("asm/ui/menus/debug_flag_editor/Func_80292c4.s");

INCLUDE_ASM("asm/ui/menus/debug_flag_editor/Func_802938c.s");

void Func_80294d0(void) {}

void CollectDjinni(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int r5;
    unsigned int r6;
    unsigned int r0;

    r5 = arg1;
    r6 = arg2;
    r0 = r5 << 2;
    r0 += r5;
    r0 <<= 2;
    r0 += r6;
    r0 += 0x30;
    _SetFlag(r0);
    _GiveDjinni(arg0, r5, r6);
}


INCLUDE_ASM("asm/ui/menus/debug_flag_editor/StartMenu.s");
