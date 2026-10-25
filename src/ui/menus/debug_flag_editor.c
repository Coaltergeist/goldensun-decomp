#include "nonmatching.h"

extern void _SetFlag(unsigned int);
extern void _GiveDjinni(unsigned int, unsigned int, unsigned int);

INCLUDE_ASM("asm/ui/menus/debug_flag_editor/Debug_FlagEditor.s");

void Func_8029274(unsigned int val, unsigned int n, char *out)
{
    char buf[8];
    int i;
    unsigned int d;

    if (n > 5)
        n = 5;
    for (i = 0; i != n; i++) {
        d = val & 0xf;
        if (d < 10)
            buf[i] = d + '0';
        else
            buf[i] = d + '7';
        val >>= 4;
    }
    for (i = n - 1; i >= 0; i--)
        *out++ = buf[i];
}

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
