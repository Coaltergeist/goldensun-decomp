#include "gba/types.h"

typedef struct Actor {
    u8 filler0[8];
    int x;
    int y;
    int z;
    u8 filler14[0x14];
    int field28;
    u8 filler2c[4];
    int field30;
    int field34;
    u8 filler38[0xc];
    int field44;
    int field48;
    u8 filler4c[0xe];
    u8 field5a;
} Actor;

extern void _Actor_TravelTo(Actor *, int, int, int);
extern void _Actor_SetAnim(Actor *, int);

void Func_80b80b8(Actor **actorAddress, Actor **targetAddress, int progress)
{
    register int progressCopy asm("r10") = progress;
    Actor *actor = *actorAddress;
    int x;
    int newX;
    int z;
    int newZ;
    int targetZ;

    {
        register Actor *target asm("r6") = *targetAddress;
        x = actor->x;
        newX = x + ((target->x - x) * progressCopy) / 100;
        targetZ = target->z;
    }
    z = actor->z;
    newZ = z + ((targetZ - z) * progressCopy) / 100;
    *(volatile u16 *)0x04000050 = 0;
    actor->field34 = 0x20000;
    actor->field30 = 0x80000;
    actor->field28 = 0x40000;
    actor->field48 = 0xab85;
    actor->field44 = 0;
    actor->field5a = 1;
    _Actor_TravelTo(actor, newX, 0, newZ);
    _Actor_SetAnim(actor, 2);
}
