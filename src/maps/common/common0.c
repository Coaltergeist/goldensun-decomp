/* Shared "common0" module: the field/effects actor runtime linked into the 19
 * overlays that bundle it. Provides the per-frame physics integrator,
 * sprite/attr helpers, and the effect-actor spawner (OvlFunc_common0_10c) that
 * map cutscenes call into. */

#include "nonmatching.h"
#include "actor.h"

void OvlFunc_common0_0(struct Actor *actor, int priority)
{
    actor->sprite->oam.priority = priority;
}
INCLUDE_ASM("asm/maps/common/common0/OvlFunc_common0_18.s");
INCLUDE_ASM("asm/maps/common/common0/OvlFunc_common0_70.s");

void OvlFunc_common0_d4(struct Actor *actor) {
    actor->pos.x += actor->bounce;
    actor->pos.y += actor->gravity;
    actor->pos.z += actor->__unk4C;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}

INCLUDE_ASM("asm/maps/common/common0/OvlFunc_common0_10c.s");
