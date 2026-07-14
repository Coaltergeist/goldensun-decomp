#include "actor.h"
#include "gba/types.h"

extern unsigned char L1d28[] asm(".L1d28");
extern struct Actor *__MapActor_GetActor(s32 actorNo);
extern void __Func_8010704(s32 sourceX, s32 sourceZ, s32 width, s32 height,
                           s32 destinationX, s32 destinationZ);

void OvlFunc_907_2008cb4(void)
{
    struct Actor *actor;
    s32 x;
    s32 z;
    unsigned char *p;
    u32 i;

    actor = __MapActor_GetActor(8);
    x = actor->pos.x >> 20;
    z = actor->pos.z >> 20;

    p = L1d28;
    i = 0;
    do {
        s32 a = p[0];
        s32 b = p[1];
        __Func_8010704(1, 0, 1, 1, a, b);
        p += 2;
        i += 2;
    } while (i <= 0x13);

    __Func_8010704(0, 0, 1, 1, x, z);
}
