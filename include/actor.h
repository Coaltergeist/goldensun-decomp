#ifndef _ACTOR_H_
#define _ACTOR_H_

#include "gba/types.h"
#include "sprite.h"

// A field-map actor (GS1). GS2 appends a tail after `update` (vec3 + u32); add
// it under `#if !GS1` when GS2 support lands.

struct Actor;

typedef void (*actorfun_t)(struct Actor *actor);

struct Actor {
    void *script;
    u16 scriptPos;
    u16 facing;
    vec3_t pos;
    fx32 floorPos;
    vec2_t scale;
    u16 width;
    u8 layer;
    u8 flags;
    vec3_t motion;
    fx32 speed;
    fx32 accel;
    vec3_t prevPos;
    fx32 bounce;
    fx32 gravity;
    fx32 __unk4C;
    struct Sprite *sprite;
    bool8 visible;
    u8 __unk55;
    u8 __unk56;
    u8 scriptVar;
    u8 __unk58;
    u8 __unk59;
    u8 __unk5A;
    bool8 stop;
    u8 __unk5C;
    u8 scriptLoop;
    u16 waitTimer;
    u8 __unk60;
    u8 __unk61;
    u8 __unk62;
    u8 __unk63;
    s16 waveCounter;
    u16 __unk66;
    struct Actor *linkedActor;
    // UpdateActors calls the word at 0x6c directly with this actor in r0.
    // Retain the legacy declaration until all callback signatures are reconciled.
    actorfun_t *update;
};

// Target ABI checks for the production compiler.
typedef char ActorSizeCheck[(sizeof(struct Actor) == 112) ? 1 : -1];
typedef char ActorAlignmentCheck[(__alignof__(struct Actor) == 4) ? 1 : -1];
typedef char ActorFieldWidthsCheck[
    (sizeof(((struct Actor *)0)->pos) == 12 &&
     sizeof(((struct Actor *)0)->flags) == 1 &&
     sizeof(((struct Actor *)0)->sprite) == 4 &&
     sizeof(((struct Actor *)0)->linkedActor) == 4 &&
     sizeof(((struct Actor *)0)->update) == 4) ? 1 : -1];
typedef char ActorOffsetsCheck[
    ((unsigned long)&((struct Actor *)0)->pos == 8 &&
     (unsigned long)&((struct Actor *)0)->flags == 35 &&
     (unsigned long)&((struct Actor *)0)->sprite == 80 &&
     (unsigned long)&((struct Actor *)0)->linkedActor == 104 &&
     (unsigned long)&((struct Actor *)0)->update == 108 &&
     (unsigned long)&((struct Actor *)0)->pos.y == 12) ? 1 : -1];

#endif // _ACTOR_H_
