#include "actor.h"
#include "gba/types.h"

extern u8 iwram_3001ebc[];

struct ActorPosition {
    s32 x;
    s32 y;
    s32 z;
};

struct OverlayActorTable {
    u8 header[0x14];
    struct Actor *actors[66];
};

struct Actor *OvlFunc_883_200806c(
    const struct ActorPosition *position,
    const struct Actor *excludedActor)
{
    struct OverlayActorTable *actorTable;
    struct Actor *actor;
    u32 actorIndex;
    register s32 rawY __asm__("r3");
    register s32 positionTileY __asm__("r2");

    actorTable = *(struct OverlayActorTable **)iwram_3001ebc;
    for (actorIndex = 8; actorIndex <= 65; actorIndex++) {
        actor = actorTable->actors[actorIndex];
        if ((position->x >> 20) != (actor->pos.x >> 20))
            continue;

        rawY = position->y;
        if (rawY < 0)
            rawY += 0xffff;
        positionTileY = rawY >> 16;

        rawY = actor->pos.y;
        if (rawY < 0)
            rawY += 0xffff;
        rawY >>= 16;
        if (positionTileY != rawY)
            continue;

        if ((position->z >> 20) == (actor->pos.z >> 20))
            return actor;
    }
    return 0;
}
