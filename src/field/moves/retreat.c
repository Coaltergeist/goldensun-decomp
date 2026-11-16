#include "nonmatching.h"
#include "actor.h"

void Func_809b0b0(unsigned int arg0)
{
    unsigned short *p;
    unsigned short *base;
    int n;
    unsigned int v;

    base = (unsigned short *)arg0;
    p = (unsigned short *)(arg0 + 0x64);
    n = *(short *)p;
    v = (unsigned int)((n * 5) << 4);
    base[3] = (unsigned short)(base[3] + v + 0x1000);
    if (v < 0x1000) {
        *p = *p + 1;
    }
}

void Func_809b0dc(struct Actor *actor)
{
    fx32 scaleX;

    actor->scale.y -= 0x280;
    scaleX = actor->scale.x - 0x280;
    actor->facing += 0x2000;
    actor->pos.y += 0x10000;
    actor->scale.x = scaleX;
    if (scaleX < 0x3000) {
        actor->visible = 0;
    }
}

INCLUDE_ASM("asm/field/moves/retreat/Func_809b11c.s");

INCLUDE_ASM("asm/field/moves/retreat/Field_Retreat.s");
