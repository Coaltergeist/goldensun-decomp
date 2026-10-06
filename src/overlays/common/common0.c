/* Shared "common0" module: the field/effects actor runtime linked into all 19
 * common0-bundling overlays (dungeons, lighthouses, deserts, …). Provides the
 * per-frame physics integrator, sprite/attr helpers, and the effect-actor
 * spawner (OvlFunc_common0_10c) that map cutscenes call into.
 *
 * Skeleton: remaining functions are INCLUDE_ASM stubs pending decomp.
 */

#include "nonmatching.h"
#include "actor.h"

void OvlFunc_common0_0(struct Actor *actor, int priority)
{
    actor->sprite->oam.priority = priority;
}
INCLUDE_ASM("asm/overlays/common/common0/OvlFunc_common0_18.s");
INCLUDE_ASM("asm/overlays/common/common0/OvlFunc_common0_70.s");

void OvlFunc_common0_d4(struct Actor *actor) {
    actor->pos.x += actor->bounce;
    actor->pos.y += actor->gravity;
    actor->pos.z += actor->__unk4C;
    actor->scale.x += actor->speed;
    actor->scale.y += actor->accel;
    actor->sprite->rotation += actor->waveCounter;
}

INCLUDE_ASM("asm/overlays/common/common0/OvlFunc_common0_10c.s");
