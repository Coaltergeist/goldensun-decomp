/* field/map_actor.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/map_actor/rom_8ba38_a_a_a.s");

extern unsigned char iwram_3001ebc[];

int Func_808bc9c(void)
{
    unsigned int r1;

    r1 = *(unsigned int *)iwram_3001ebc;
    return *(short *)((char *)r1 + 0xb6 * 2) +
           *(short *)((char *)r1 + 0xb7 * 2) +
           *(short *)((char *)r1 + 0xb8 * 2) +
           *(short *)((char *)r1 + 0xb9 * 2) +
           *(short *)((char *)r1 + 0xba * 2) +
           *(short *)((char *)r1 + 0xbb * 2) +
           *(short *)((char *)r1 + 0xbc * 2) +
           *(short *)((char *)r1 + 0xbd * 2) +
           *(short *)((char *)r1 + 0xbc * 2) +
           *(short *)((char *)r1 + 0xbe * 2) +
           *(short *)((char *)r1 + 0xbf * 2) +
           *(short *)((char *)r1 + 0xc0 * 2) +
           *(short *)((char *)r1 + 0xc1 * 2);
}

INCLUDE_ASM("asm/field/map_actor/rom_8ba38_a_a_c_a.s");

extern void *galloc_ewram(unsigned int index, unsigned int size);
extern void _Func_8011590(void);

void Func_808c44c(void)
{
    void *pvVar1;
    void *pvVar2;

    pvVar1 = galloc_ewram(0x1b, 0xccc);
    if (*(short *)((int)pvVar1 + (0xcf << 1)) == 3)
    {
        pvVar2 = galloc_ewram(0x1f, 0xa8 << 3);
        if (pvVar2 != 0 && *(signed char *)((int)pvVar2 + 0x53d) != 0)
        {
            *(unsigned char *)((int)pvVar2 + 0x53a) = 0;
            *(unsigned char *)((int)pvVar2 + 0x53b) = 0;
            *(unsigned char *)((int)pvVar2 + 0x53c) = 1;
            *(unsigned char *)((int)pvVar2 + 0x53d) = 0;
        }
        *(unsigned char *)(*(int *)((int)pvVar1 + (0xf0 << 1)) + 0x5b) = 1;
        _Func_8011590();
    }
}

extern void _Func_8011644(void);

void Func_808c4c0(void)
{
    void *base;
    short *r5;

    base = galloc_ewram(0x1b, 0xccc);
    r5 = (short *)((char *)base + (0xcf << 1));
    if (*r5 == 3) {
        _Func_8011644();
        *(unsigned char *)(*(unsigned int *)((char *)base + (0xf0 << 1)) + 0x5b) = 0;
    }
}

INCLUDE_ASM("asm/field/map_actor/rom_8ba38_a_c.s");

extern int _GetFlag(void);

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

INCLUDE_ASM("asm/field/map_actor/rom_8ba38_c_a.s");

extern unsigned int __start_overlay[];

void InitMap(void) {
    extern void _call_via_r0(void (*)(void));
    _call_via_r0((void (*)(void))__start_overlay[1]);
}

INCLUDE_ASM("asm/field/map_actor/rom_8ba38_c_c.s");
