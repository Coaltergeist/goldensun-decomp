#include "actor.h"
#include "gba/types.h"

extern struct Actor *__MapActor_GetActor(s32 actorNo);
extern void __Func_8010704(s32 sourceX, s32 sourceZ, s32 width, s32 height,
                            s32 destinationX, s32 destinationZ);
extern void __SetFlag(int flag);

void OvlFunc_957_2008cf8(void)
{
    struct Actor *actor = __MapActor_GetActor(0xc);

    if ((actor->pos.x >> 20) == 0x1e) {
        s32 tileZ = actor->pos.z >> 20;

        if (tileZ == 0x14) {
            actor->__unk55 = 2;
            actor->floorPos = 0;
            actor->flags = 2;
            __Func_8010704(0x1e, 0x14, 1, 1, 0x20, tileZ);
            __SetFlag(0x212);
        }
    }
}
