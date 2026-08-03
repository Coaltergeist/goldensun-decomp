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
    u32 __unk60;
    u32 __unk64;
    u32 __unk68;
    actorfun_t *update;
};

#endif // _ACTOR_H_
