#include "gba/types.h"

extern u8 iwram_3001f2c[];
extern u32 Func_80b2778(u32 arg0, u32 arg1);
extern void _Func_8016478(u8 *box);
extern int Func_80b27b0(int item, int category);
extern s32 Func_80b2884(s32 position);
extern void _Func_8019908(u32 arg0, u32 arg1);
extern int _DrawSmallText(int text, int box, int x, int y);

void Func_80b2ed8(u8 *box, int item)
{
    register u8 *state __asm__("r3");
    register int offset __asm__("r2");
    register int value __asm__("r5");
    register int itemReg __asm__("r7");
    register u8 *boxReg __asm__("r6");
    register u32 uVar2 __asm__("r8");

    state = iwram_3001f2c;
    offset = 0x3aa;
    __asm__ volatile("" : "+r"(state), "+r"(offset));
    state = *(u8 **)state;
    state += offset;
    __asm__ volatile("" : "+r"(state));
    value = 0;
    value = *(signed char *)(state + value);
    __asm__ volatile("" : "+r"(value));

    itemReg = item;
    boxReg = box;
    __asm__ volatile("" : "+r"(itemReg), "+r"(boxReg), "+r"(value));

    {
        register u32 callArg1 __asm__("r1");
        register u32 callArg0 __asm__("r0");

        callArg1 = value;
        callArg0 = itemReg;
        __asm__ volatile("" : "+r"(callArg0), "+r"(callArg1));
        uVar2 = Func_80b2778(callArg0, callArg1);
    }

    if (boxReg != 0) {
        _Func_8016478(boxReg);

        if (Func_80b27b0(itemReg, value) != 0) {
            value = 0xd2c;
            __asm__ volatile("" : "+r"(value));
        } else {
            value = 0xd2d;
            __asm__ volatile("" : "+r"(value));
        }

        value = Func_80b2884(value);
        _Func_8019908(uVar2, 5);
        _DrawSmallText(value, (int)boxReg, 0, 0);
    }
}
