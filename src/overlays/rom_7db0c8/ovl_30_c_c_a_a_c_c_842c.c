#include "actor.h"
#include "gba/types.h"

struct OvlFunc954ActorRef {
    u8 pad[500];
    u32 actor;
};

extern u8 gState[];
extern struct Actor *__MapActor_GetActor(int actor_id);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_954_200833c(int, int, int);

void OvlFunc_954_200842c(void)
{
    struct Actor *actor;
    int z;
    int offset;

    actor = __MapActor_GetActor(((struct OvlFunc954ActorRef *)gState)->actor);
    z = actor->pos.z >> 20;
    offset = (z > 8) ? -0x30 : 0x30;
    __Func_8010704(0x43, 8, 3, 1, 0x40, z);
    OvlFunc_954_200833c(0x11, 0, offset);
    actor = __MapActor_GetActor(0x11);
    z = actor->pos.z >> 20;
    __Func_8010704(0x40, 0x18, 3, 1, 0x40, z);
}
