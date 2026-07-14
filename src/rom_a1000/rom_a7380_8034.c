#include "gba/types.h"

extern u8 iwram_3001f2c[];
extern void *Func_80a1814(void *actor);
extern void Func_80a1870(void *a0, int a1, int a2, int a3, int a4);

void Func_80a8034(void)
{
    u8 *base = *(u8 **)iwram_3001f2c;

    Func_80a1870(Func_80a1814(base), 2, 2, 8, 0);

    *(u32 *)(base + 0x28) = 0;
    *(u32 *)(base + 0x24) = 0;
    *(u32 *)(base + 0x2c) = 0;
    *(u32 *)(base + 0x20) = 0;
    base[0x110] = 0;
    base[0x111] = 0;
    base[0x112] = 8;
    base[0x113] = 2;
}
