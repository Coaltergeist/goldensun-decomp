/* Shared "common0" module: the field/effects actor runtime linked into the 19
 * overlays that bundle it. Provides the per-frame physics integrator,
 * sprite/attr helpers, and the effect-actor spawner (OvlFunc_common0_10c) that
 * map cutscenes call into. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

void OvlFunc_common0_0(struct Actor *actor, int priority)
{
    actor->sprite->oam.priority = priority;
}

struct Actor *OvlFunc_common0_18(int x, int y, int z, int id)
{
    extern void __Actor_SetSpriteFlags();
    extern void __Func_80929d8(int, int);
    extern void __Func_800c548(int, int);
    struct Actor *actor;

    actor = (struct Actor *)API_CreateActor(id, x, y, z);
    if (actor != 0) {
        actor->sprite->oam.priority = 0;
        actor->__unk55 = 0;
        actor->collision = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8((int)actor, 0xe);
        __Func_800c548((int)actor, 1);
        return actor;
    }
    return 0;
}

struct Actor *OvlFunc_common0_70(int x, int y, int z, int id)
{
    extern void __Actor_SetSpriteFlags();
    extern void __Func_80929d8(int, int);
    struct Actor *actor;

    actor = (struct Actor *)API_CreateActor(id, x, y, z);
    if (actor != 0) {
        actor->sprite->oam.priority = 1;
        actor->__unk55 = 0;
        actor->collision = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8((int)actor, 0xf);
        actor->flags = (actor->flags & 0xfe) | 2;
        return actor;
    }
    return 0;
}

void OvlFunc_common0_d4(struct Actor *actor) {
    actor->pos.x += actor->bounce;
    actor->pos.y += actor->gravity;
    actor->pos.z += actor->__unk4C;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}

INCLUDE_ASM("asm/maps/common/common0/OvlFunc_common0_10c.s");
