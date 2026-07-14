#include "gba/types.h"

extern u8 iwram_3001e70[];
extern u16 L1fc0[] asm(".L1fc0");
extern void __PlaySound(int sound_id);
extern void __WaitFrames(int frames);

void OvlFunc_951_2008880(void)
{
    u8 *state;
    s32 *field;
    s32 i;

    state = *(u8 **)iwram_3001e70;
    __PlaySound(0xd8);

    field = (s32 *)(state + 0x164);
    for (i = 15; i >= 0; i--) {
        field[3] += 0xffff0000;
        __WaitFrames(4);
    }

    {
        u16 blendValue = 0x3f42;
        volatile u16 *bldcntAddr = (volatile u16 *)0x04000050;
        u16 *tablePtr = L1fc0;
        volatile u16 *alphaAddr = (volatile u16 *)0x04000052;
        s32 j;

        j = 7;
        do {
            register s32 waitArg asm("r0");

            *bldcntAddr = blendValue;
            *alphaAddr = *tablePtr;
            tablePtr++;
            asm volatile("" : "+r"(tablePtr));
            waitArg = 8;
            asm volatile("" : "+r"(waitArg));
            j--;
            __WaitFrames(waitArg);
        } while (j >= 0);
    }
}
