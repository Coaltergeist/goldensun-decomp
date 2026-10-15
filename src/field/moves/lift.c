#include "nonmatching.h"

INCLUDE_ASM("asm/field/moves/lift/Field_Lift_Target.s");

INCLUDE_ASM("asm/field/moves/lift/Field_Lift.s");

struct SB98a84 { unsigned char pad[9]; unsigned char lo:2; unsigned char f:2; };
unsigned char *Func_8098a84(int x, int y, int z, int dir)
{
    unsigned char *p;
    int s;

    _PlaySound(0x8a);
    p = CreateParticleActor(0xd7, x, y, z);
    if (p != 0) {
        *(int *)(p + 0x18) = *(int *)(p + 0x1c) = 0x4000;
        *(int *)(p + 0x34) = *(int *)(p + 0x30) = 0x30000;
        (*(struct SB98a84 **)(p + 0x50))->f = 0;
        _Actor_SetAnim(p, 3);
        s = *(int *)(p + 0x18);
        if (s < 0x10000) {
            do {
                s += 0x800;
                *(int *)(p + 0x18) = *(int *)(p + 0x1c) = s;
                *(unsigned short *)(p + 6) += 0x2000;
                WaitFrames(1);
                s = *(int *)(p + 0x18);
            } while (s <= 0xffff);
        }
        *(short *)(p + 6) = dir;
    }
    return p;
}
