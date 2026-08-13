/* field/map_actor.c */
#include "nonmatching.h"

extern unsigned char iwram_3001ebc[];
extern void *galloc_ewram(unsigned int index, unsigned int size);
extern void _Func_8011590(void);
extern void _Func_8011644(void);

INCLUDE_ASM("asm/field/map_actor/Func_808ba38.s");

INCLUDE_ASM("asm/field/map_actor/Func_808bb2c.s");

INCLUDE_ASM("asm/field/map_actor/Func_808bc44.s");

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

INCLUDE_ASM("asm/field/map_actor/Func_808bd24.s");

INCLUDE_ASM("asm/field/map_actor/CheckSpecialExits.s");

INCLUDE_ASM("asm/field/map_actor/Func_808bec0.s");

INCLUDE_ASM("asm/field/map_actor/Func_808c2dc.s");

INCLUDE_ASM("asm/field/map_actor/Func_808c30c.s");

INCLUDE_ASM("asm/field/map_actor/UpdatePoison.s");

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
