#ifndef _ACTOR_H_
#define _ACTOR_H_

#include "gba/types.h"
#include "sprite.h"

// A field-map actor (GS1). GS2 appends a tail after `update` (vec3 + u32); add
// it under `#if !GS1` when GS2 support lands.

struct Actor;

typedef void (*actorfun_t)(struct Actor *actor);
typedef bool32 (*actorcmd_t)(struct Actor *actor);

struct Actor {
/* 0x00 */  s32 *script;
/* 0x04 */  s16 scriptPos;
/* 0x06 */  u16 facing;
/* 0x08 */  vec3_t pos;
/* 0x14 */  fx32 floorPos;
/* 0x18 */  vec2_t scale;
/* 0x20 */  u16 width;
/* 0x22 */  u8 layer;
/* 0x23 */  u8 flags;
/* 0x24 */  vec3_t motion;
/* 0x30 */  fx32 speed;
/* 0x34 */  fx32 accel;
/* 0x38 */  vec3_t prevPos;
/* 0x44 */  fx32 bounce;
/* 0x48 */  fx32 gravity;
/* 0x4C */  fx32 __unk4C;
/* 0x50 */  struct Sprite *sprite;
/* 0x54 */  bool8 visible;
/* 0x55 */  u8 __unk55;
/* 0x56 */  u8 __unk56;
/* 0x57 */  u8 scriptVar;
/* 0x58 */  u8 __unk58;
/* 0x59 */  u8 collision;
/* 0x5A */  u8 __unk5A;
/* 0x5B */  bool8 stop;
/* 0x5C */  u8 __unk5C;
/* 0x5D */  u8 scriptLoop;
/* 0x5E */  s16 waitTimer;
/* 0x60 */  u8 __unk60;
/* 0x61 */  u8 __unk61;
/* 0x62 */  u8 __unk62;
/* 0x63 */  u8 __unk63;
/* 0x64 */  s16 waveCounter;
/* 0x66 */  s16 __unk66;
/* 0x68 */  struct Actor *linkedActor;
/* 0x6C */  actorfun_t update;
};                                   // sizeof = 0x70 (112 bytes)

// Target ABI checks for the production compiler.
typedef char ActorSizeCheck[(sizeof(struct Actor) == 112) ? 1 : -1];
typedef char ActorAlignmentCheck[(__alignof__(struct Actor) == 4) ? 1 : -1];
typedef char ActorFieldWidthsCheck[
    (sizeof(((struct Actor *)0)->pos) == 12 &&
     sizeof(((struct Actor *)0)->pos.y) == 4 &&
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
