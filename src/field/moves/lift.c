#include "nonmatching.h"
#include "actor.h"

extern struct Actor *CreateParticleActor(int, int, int, int);

INCLUDE_ASM("asm/field/moves/lift/Field_Lift_Target.s");

INCLUDE_ASM("asm/field/moves/lift/Field_Lift.s");

struct Actor *Func_8098a84(int x, int y, int z, int dir)
{
    struct Actor *p;
    int s;

    _PlaySound(0x8a);
    p = CreateParticleActor(0xd7, x, y, z);
    if (p != 0) {
        p->scale.x = p->scale.y = 0x4000;
        p->accel = p->speed = 0x30000;
        p->sprite->oam.priority = 0;
        _Actor_SetAnim(p, 3);
        s = p->scale.x;
        if (s < 0x10000) {
            do {
                s += 0x800;
                p->scale.x = p->scale.y = s;
                p->facing += 0x2000;
                WaitFrames(1);
                s = p->scale.x;
            } while (s <= 0xffff);
        }
        p->facing = dir;
    }
    return p;
}
