#ifndef _ACTOR_H_
#define _ACTOR_H_

#include "gba/types.h"

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
    fx32 bounce;
    fx32 gravity;
    fx32 __unk4C;
    void *sprite; // struct Sprite
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

// GS1 only

    vec3_t __unk70;
    u32 __unk7C;
};

#endif // _ACTOR_H_