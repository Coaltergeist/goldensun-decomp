/* actor/player.c -- consolidated TU. */
#include "nonmatching.h"
#include "gba/types.h"
#include "math.h"
#include "sprite.h"
#include "actor.h"

struct State_3001ebc {
    u8 pad_000[0x172];
    u16 __unk172;          /* 0x172 */
    u16 __unk174;          /* 0x174 */
    u16 __unk176;          /* 0x176 */
    u8 pad_178[6];
    u16 __unk17E;          /* 0x17E */
    u16 __unk180;          /* 0x180 */
    s16 __unk182;          /* 0x182 */
    u8 pad_184[0x18];
    u16 __unk19C;          /* 0x19C */
    s16 __unk19E;          /* 0x19E */
};

struct GlobalState {
    u8 pad_000[0x1F4];
    u32 __unk1F4;
    u8 pad_1F8[0x18];
    u16 __unk210;
    u16 __unk212;
    u16 __unk214;
    u16 __unk216;
    u16 __unk218;
    u16 __unk21A;
    u16 __unk21C;
    u8 pad_21E[2];
    u16 __unk220;
    u16 __unk222;
};

struct State_3001e70 {
    u8 pad_00[0x17];
    u8 __unk17;
    u8 pad_18[0xd4];
    fx32 camMinX;    /* 0xec */
    fx32 camMinZ;    /* 0xf0 */
    fx32 camMaxX;    /* 0xf4 */
    fx32 camMaxZ;    /* 0xf8 */
    u8 pad_fc[0x1e]; /* 0xfc */
    u16 __unk11A;    /* 0x11a */
};

struct Unit {
    u8 pad_00[0x38];
    s16 __unk38;
};

struct Tile {
    u8 pad_00[2];
    u8 __unk02;
    u8 pad_03;
};

extern struct State_3001e70 *iwram_3001e70;
extern struct State_3001ebc *iwram_3001ebc;
extern struct Actor *iwram_3001e64;

extern u8 gDebugMode;
extern vu32 gKeyHeld;
extern vu32 gKeyPress;
extern vu32 gKeyRepeat;
extern u8 gSpriteAllocTable[512];
extern struct GlobalState gState;


extern bool32 _GetFlag(u32 flag);
extern void _PlaySound(u32 sound);
extern struct Unit *_GetUnit(u32 id);
extern void vec3_translate(fx32 distance, s32 angle, vec3_t *pos);
extern s32 TestCollision(struct Actor *actor, vec3_t *pos);
extern s32 Func_800d924(struct Actor *actor, vec3_t *pos);
extern s32 Func_800eba0(vec3_t *a, s32 radiusA, vec3_t *b, s32 radiusB);
extern s32 atan2(s32, s32);
extern void Actor_SetAnim(struct Actor *actor, u32 anim);
extern void Actor_TravelTo(struct Actor *actor, fx32 x, fx32 y, fx32 z);
extern struct Actor *CreateActor(s32 id, fx32 x, fx32 y, fx32 z);
extern void Actor_SetScript(struct Actor *actor, s32 *script);
extern void Sprite_SetAnim(struct Sprite *sprite, u32 anim);
extern s32 Func_800eaf8(void);

extern s32 Func_80122ac(struct Actor *actor, vec3_t *pos);
extern s32 Func_8012204(vec3_t *pos);
extern fx32 Func_8011f54(u32 layer, fx32 x, fx32 z);

extern s32 Func_801219c(vec3_t *pos);

// .rodata

static const s16 sDPadAngles[16] = {
    0xFFFF, 0x0000, 0x8000, 0xFFFF, 0xC000, 0xE000, 0xA000, 0xC000,
    0x4000, 0x2000, 0x6000, 0x4000, 0xFFFF, 0x0000, 0x8000, 0xFFFF
};

static const s32 sScript_08013274[3] = {
    0x0,
    0x78,
    0x1b
};

static const s32 sScript_08013280[3] = {
    0x0,
    0x1e,
    0x1b
};

static const s32 sWorldCameraAngles[16] = {
    0x00000000, 0xFFFFFE00, 0x00000200, 0x00000000,
    0x00000000, 0xFFFFFE80, 0x00000180, 0x00000000,
    0x00000000, 0xFFFFFE80, 0x00000180, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000
};

s32 Func_800ea60(u32 param) {
    struct State_3001ebc *state;
    u32 type, value;

    type = param >> 14;
    value = param & 0x3FFF;
    state = iwram_3001ebc;

    if (_GetFlag(0x107)) {
        state->__unk182 = 250;
    } else if (state->__unk19E == 3) {
        if (gKeyPress & 0x100)
            state->__unk182 = -888;
        else if (gKeyPress & 0x200)
            state->__unk182 = -889;
    } else {
        switch (type) {
        case 0:
            state->__unk17E = value;
            break;

        case 1:
            state->__unk180 = value;
            break;
        }
    }

    return value;
}

s32 Func_800eaf8(void) {
    struct State_3001ebc *state;
    s32 result;

    state = iwram_3001ebc;
    result = 0;

    if (state == NULL) // ??
        return 0;

    if (gKeyPress & gState.__unk214) {
        state->__unk172 = 1;
        result = 1;
    } else if (gKeyPress & gState.__unk210) {
        state->__unk174 = 1;
        result = 1;
    } else if (gKeyPress & gState.__unk216) {
        state->__unk176 = 1;
        result = 1;
    } else if (gKeyPress & gState.__unk218) {
        result = Func_800ea60(gState.__unk220);
    } else if (gKeyPress & gState.__unk21A) {
        result = Func_800ea60(gState.__unk222);
    }

    return result;
}

s32 Func_800eba0(vec3_t *posA, s32 radiusA, vec3_t *posB, s32 radiusB) {
    const fx32 *a = (const fx32 *)posA; // to produce the ldm sequence below.
    const fx32 *b = (const fx32 *)posB;
    s32 x, y, z;
    s32 radius;

    x = (*a++ - *b++) >> 16;
    y = (*a++ - *b++) >> 16;
    z = (*a - *b) >> 16;

    radius = radiusA + radiusB;

    if (x > 0x400000 || z > 0x400000)
        return -1;

    if (x * x + y * y + z * z < radius * radius)
        return 0;

    return -1;
}


// weird way to write a conditional macro, but an inline
// won't match.

#define PlayerProbe(A, P, D, N, O) ({                 \
    (P)->x = (A)->pos.x;                             \
    (P)->y = (A)->pos.y;                             \
    (P)->z = (A)->pos.z;                             \
    vec3_translate((D), (u16)(N) + (O), (P));         \
    TestCollision((A), (P));                         \
})

bool32 ActorCmd_Player(struct Actor *actor)
{
    vec3_t travelTarget;
    vec3_t probe;
    vec3_t actorProbe;
    u8 unused[0x20]; // unused stack frame, debug?
    s16 angles[6];
    u32 moveFlags;
    u32 pushed;
    s32 moveAngle;
    s32 moveAnim;
    u16 inputAngle;
    s16 candidateAngle;
    s32 i, radius, delta, anim;
    fx32 magnitude;
    struct Actor *current, *effect;
    struct Sprite *sprite;
    struct State_3001ebc *state;
    u8 *debug;
    s32 effectAngle;

    moveFlags = 0;
    pushed = 0;

    debug = &gDebugMode;
    if (*debug && _GetFlag(0x15E)) {
        u8 *allocation = gSpriteAllocTable;
        s32 count = 0;
        s32 remaining = 512;
        do {
            if (*allocation++ == 0xFF)
                count++;
        } while (--remaining != 0);

        if (count - 0x88 < 0)
            _PlaySound(0x87);
    }

    // leftover debug code, assumingly iterations through some global arrays like gSpriteAllocTable, etc.
    // the asm volatile (""); cause the loops not to be optimized away.
    if (gDebugMode && (gKeyHeld & 0x200)) {
        s32 delay;
        delay = 512;
        for (delay = 512; delay != 0; delay--) { asm volatile (""); }
        for (delay = 95; delay >= 0; delay--) { asm volatile (""); }
        for (delay = 63; delay >= 0; delay--) { asm volatile (""); }
        for (delay = 63; delay >= 0; delay--) { asm volatile (""); }
    }

    if (gKeyHeld & gState.__unk21C) {
        actor->speed = 0x18000;
        actor->accel = 0x4000;
        moveAnim = 5;
    } else {
        actor->speed = 0x10000;
        actor->accel = 0x4000;
        moveAnim = 2;
    }

    if (_GetFlag(0x17F) && (gKeyHeld & 2)) {
        actor->speed = 0x40000;
        actor->accel = 0x10000;
        moveAnim = 5;
    }

    inputAngle = sDPadAngles[(gKeyHeld >> 4) & 0xF];
    if ((u16)inputAngle == 0xFFFF) {
        moveFlags |= 4;
    } else {

        moveFlags = 0;
        travelTarget.x = actor->pos.x;
        travelTarget.y = actor->pos.y;
        travelTarget.z = actor->pos.z;
        vec3_translate(0x80000, (u16)inputAngle, &travelTarget);

        if (gDebugMode && (gKeyHeld & 0x200)) {
            moveAngle = (s16)inputAngle;
        } else {
            if (TestCollision(actor, &travelTarget) == 0 &&
                PlayerProbe(actor, &probe, 0x80000, inputAngle, +0x1000) == 0 &&
                PlayerProbe(actor, &probe, 0x80000, inputAngle, -0x1000) == 0 &&
                PlayerProbe(actor, &probe, 0x80000, inputAngle, +0x2000) == 0 &&
                PlayerProbe(actor, &probe, 0x80000, inputAngle, -0x2000) == 0) {
                moveAngle = (s16)inputAngle;
                candidateAngle = moveAngle;
            } else {

                s32 numAngles = sizeof(angles) / sizeof(angles[0]);
                angles[0] = (u16)inputAngle + 0x1000;
                angles[1] = (u16)inputAngle - 0x1000;
                angles[2] = (u16)inputAngle + 0x2000;
                angles[3] = (u16)inputAngle - 0x2000;
                angles[4] = (u16)inputAngle + 0x3000;
                angles[5] = (u16)inputAngle - 0x3000;

                for (i = 0; i < numAngles; i++) {
                    moveAngle = angles[i];
                    candidateAngle = moveAngle;
                    travelTarget.x = actor->pos.x;
                    travelTarget.y = actor->pos.y;
                    travelTarget.z = actor->pos.z;
                    vec3_translate(0x80000, (u16)candidateAngle, &travelTarget);

                    if (TestCollision(actor, &travelTarget) == 0 &&
                        PlayerProbe(actor, &probe, 0x80000, candidateAngle, +0x1000) == 0 &&
                        PlayerProbe(actor, &probe, 0x80000, candidateAngle, -0x1000) == 0 &&
                        PlayerProbe(actor, &probe, 0x80000, candidateAngle, +0x2000) == 0 &&
                        PlayerProbe(actor, &probe, 0x80000, candidateAngle, -0x2000) == 0)
                        goto check_actor_collisions;
                }

                travelTarget.x = actor->pos.x;
                travelTarget.y = actor->pos.y;
                travelTarget.z = actor->pos.z;
                moveFlags |= 1;
            }

check_actor_collisions:
            actorProbe.x = actor->pos.x;
            actorProbe.y = actor->pos.y;
            actorProbe.z = actor->pos.z;
            vec3_translate(0x40000, (u16)candidateAngle, &actorProbe);

            current = iwram_3001e64;
            for (i = 63; i >= 0; i--, current++) {
                radius = actor->width - 2;
                if (current->script == 0 || !(current->collision & 1) || current == actor)
                    continue;

                if (Func_800eba0(&current->pos, radius,
                    &actorProbe, current->width - 2) < 0)
                    continue;

                if ((*(u32 *)&current->__unk58 & 0xFF000200) == 0x200) {
                    moveAngle = (s16)atan2(current->pos.z - actor->pos.z,
                        current->pos.x - actor->pos.x);

                    probe.x = current->pos.x;
                    probe.y = current->pos.y;
                    probe.z = current->pos.z;
                    vec3_translate(0x4000, (u16)moveAngle, &probe);
                    if (Func_800d924(current, &probe) == 0 &&
                        PlayerProbe(current, &probe, 0xA0000, moveAngle, 0) == 0 &&
                        PlayerProbe(current, &probe, 0xA0000, moveAngle, +0x1000) == 0 &&
                        TestCollision(current, &probe) == 0 &&
                        PlayerProbe(current, &probe, 0xA0000, moveAngle, -0x1000) == 0) {
                        vec3_translate(0x4000, (u16)moveAngle, &current->pos);
                        current->prevPos.x = (fx32)0x80000000;
                        current->prevPos.y = (fx32)0x80000000;
                        current->prevPos.z = (fx32)0x80000000;
                        pushed |= 1;
                        continue;
                    }
                }
                moveFlags |= 2;
            }

            if (moveFlags == 0 && pushed != 0) {
                actor->speed = 0x4000;
                actor->accel = 0x2000;
            }

        }
    }

    state = iwram_3001ebc;
    if (state != 0) {
        if (moveFlags & 3)
            state->__unk19C++;
        else
            state->__unk19C = 0;
    }

    if (pushed != 0) {
        Actor_SetAnim(actor, 8);
    } else if (moveFlags != 0) {
        anim = 9;
        if (_GetUnit(gState.__unk1F4)->__unk38 == 0)
            anim = 0x16;
        Actor_SetAnim(actor, anim);
    } else {
        Actor_SetAnim(actor, moveAnim);
    }

    if (moveFlags != 0) {
        actor->prevPos.x = (fx32)0x80000000;
        actor->prevPos.y = (fx32)0x80000000;
        actor->prevPos.z = (fx32)0x80000000;
        actor->motion.x = 0;
        actor->motion.z = 0;

        if (moveFlags & 3) {
            delta = (s16)((u16)inputAngle - actor->facing);
            if (delta > 0x1000)
                delta = 0x1000;
            if (delta < -0x1000)
                delta = -0x1000;
            actor->facing += delta;
        }

        actor->waveCounter = 0;
        actor->__unk66 = 2;
    } else {
        Actor_TravelTo(actor, travelTarget.x, travelTarget.y, travelTarget.z);
        magnitude = FastIntSqrtFP1616_RAM(
            fx32_multiply(actor->motion.x, actor->motion.x) +
            fx32_multiply(actor->motion.z, actor->motion.z));
        actor->motion.x = moveFlags;
        actor->motion.z = moveFlags;
        vec3_translate(magnitude, (u16)moveAngle, &actor->motion);

        if (actor->waveCounter != 0)
            actor->waveCounter--;
    }

    effectAngle = inputAngle;
    if (iwram_3001e70->__unk17 != 0 &&
        actor->waveCounter == 0 && moveFlags == 0) {
        effect = CreateActor(0x19, actor->pos.x, actor->pos.y, actor->pos.z);
        if (effect != 0) {
            effect->floorPos = actor->floorPos;
            sprite = effect->sprite;
            Actor_SetScript(effect, sScript_08013274);
            effect->flags = 2;
            effect->__unk55 = moveFlags;

            if (sprite != 0) {
                Sprite_SetAnim(sprite, 1);
                sprite->flags = moveFlags;
                sprite->rotation = effectAngle + 0x4000;
                sprite->oam.priority = 3;
            }

            if ((s16)actor->__unk66 == 2) {
                Sprite_SetAnim(sprite, 2);
                actor->__unk66 = moveFlags;
            }
            if ((s16)actor->__unk66 != 0)
                effect->facing = 0x8000;

            if (moveAnim == 5)
                actor->waveCounter = 12;
            else
                actor->waveCounter = 18;

            actor->__unk66 ^= 1;
        }
    }

    Func_800eaf8();
    actor->scriptPos++;
    return 1;
}

#undef PlayerProbe

// maybe some of the signedness is incorrect and this is not needed
static inline s16 AngleDelta(u16 a, u16 b) {
    return (s16)(a - b);
}

// similar to PlayerProbe(...)
#define WorldProbe(A, P, D, N, O) ({                 \
    (P)->x = (A)->pos.x;                             \
    (P)->y = (A)->pos.y;                             \
    (P)->z = (A)->pos.z;                             \
    vec3_translate((D), (u16)(N) + (O), (P));         \
    Func_80122ac((A), (P));                          \
})

bool32 ActorCmd_Player_World(struct Actor *actor)
{
    vec3_t travelTarget;
    vec3_t probe;
    u8 unused[0x28]; // unused stack frame, debug?
    s16 angles[8];
    u32 moveFlags;
    s32 moveAngle, moveAnim;
    u16 inputAngle;
    u16 candidateAngle;
    s32 i, delta, terrain;
    fx32 magnitude;
    struct State_3001ebc *state;
    struct State_3001e70 *scene;
    struct Actor *effect;
    struct Sprite *sprite;
    s32 cameraAngle;

    moveAnim = 2;
    moveFlags = 0;
    if (gKeyHeld & gState.__unk21C) {
        actor->speed = 0x10000;
        actor->accel = 0x14000;
        moveAnim = 5;
    } else {
        actor->speed = 0x8000;
        actor->accel = 0x4000;
    }
    if (gKeyRepeat & 0x200)
        actor->speed = 0x40000;

    moveAngle = sDPadAngles[(gKeyHeld >> 4) & 0xF];
    inputAngle = moveAngle;
    if (inputAngle == 0xFFFF) {
        moveFlags |= 4;
    } else {
        moveFlags = 0;
        travelTarget.x = actor->pos.x;
        travelTarget.y = actor->pos.y;
        travelTarget.z = actor->pos.z;
        vec3_translate(0x70000, inputAngle, &travelTarget);

        if (!(gDebugMode && (gKeyHeld & 0x200))) {
            if (!(Func_80122ac(actor, &travelTarget) == 0 &&
                WorldProbe(actor, &probe, 0x70000, inputAngle, +0x1000) == 0 &&
                WorldProbe(actor, &probe, 0x70000, inputAngle, -0x1000) == 0 &&
                WorldProbe(actor, &probe, 0x70000, inputAngle, +0x2000) == 0 &&
                WorldProbe(actor, &probe, 0x70000, inputAngle, -0x2000) == 0)) {
                s32 numAngles = sizeof(angles) / sizeof(angles[0]);
                angles[0] = inputAngle + 0x1000;
                angles[1] = inputAngle - 0x1000;
                angles[2] = inputAngle + 0x2000;
                angles[3] = inputAngle - 0x2000;
                angles[4] = inputAngle + 0x3000;
                angles[5] = inputAngle - 0x3000;
                angles[6] = inputAngle + 0x4000;
                angles[7] = inputAngle - 0x4000;

                for (i = 0; i < numAngles; i++) {
                    candidateAngle = angles[i];
                    travelTarget.x = actor->pos.x;
                    travelTarget.y = actor->pos.y;
                    travelTarget.z = actor->pos.z;
                    vec3_translate(0x70000, (u16)candidateAngle, &travelTarget);
                    if (Func_80122ac(actor, &travelTarget) == 0 &&
                        WorldProbe(actor, &probe, 0x70000, candidateAngle, +0x1000) == 0 &&
                        WorldProbe(actor, &probe, 0x70000, candidateAngle, -0x1000) == 0 &&
                        WorldProbe(actor, &probe, 0x70000, candidateAngle, +0x2000) == 0 &&
                        WorldProbe(actor, &probe, 0x70000, candidateAngle, -0x2000) == 0) {
                        moveAngle = (s16)candidateAngle;
                        goto movement_selected;
                    }
                }
                moveFlags |= 1;
            }
        }
    }

movement_selected:
    state = iwram_3001ebc;
    if (state != 0) {
        if (moveFlags & 3)
            state->__unk19C++;
        else
            state->__unk19C = 0;
    }

    if (moveFlags != 0)
        Actor_SetAnim(actor, 9);
    else
        Actor_SetAnim(actor, moveAnim);

    if (moveFlags != 0) {
        actor->prevPos.x = (fx32)0x80000000;
        actor->prevPos.y = (fx32)0x80000000;
        actor->prevPos.z = (fx32)0x80000000;
        actor->motion.x = 0;
        actor->motion.z = 0;
        if (moveFlags & 3) {
            delta = AngleDelta((u16)moveAngle, actor->facing);
            if (delta > 0x1000) delta = 0x1000;
            if (delta < -0x1000) delta = -0x1000;
            actor->facing += delta;
        }
        actor->waveCounter = 0;
        actor->__unk66 = 2;
    } else {
        Actor_TravelTo(actor, travelTarget.x, travelTarget.y, travelTarget.z);
        magnitude = FastIntSqrtFP1616_RAM(
            fx32_multiply(actor->motion.x, actor->motion.x) +
            fx32_multiply(actor->motion.z, actor->motion.z));
        actor->motion.x = moveFlags;
        actor->motion.z = moveFlags;
        vec3_translate(magnitude, (u16)moveAngle, &actor->motion);
        if (actor->waveCounter != 0)
            actor->waveCounter--;
    }

    {
        s32 cameraDelta;
        scene = iwram_3001e70;
        cameraAngle = sWorldCameraAngles[(gKeyHeld >> 4) & 0xF];
        cameraDelta = (s16)(cameraAngle - scene->__unk11A) / 8;
        if (cameraDelta > 0x200) cameraDelta = 0x200;
        if (cameraDelta < -0x200) cameraDelta = -0x200;
        if (cameraDelta > -16 && cameraDelta < 16)
            cameraDelta = cameraAngle - scene->__unk11A;
        scene->__unk11A += cameraDelta;
    }

    if (actor->visible == 1) {
        sprite = actor->sprite;
        terrain = Func_8012204(&actor->pos);
        if (terrain == 9) {
            sprite->layers[1]->priority = 1;
            sprite->flags = 0;
        } else {
            sprite->layers[1]->priority = 9;
            sprite->flags = 1;
        }
        if (terrain == 6 && actor->waveCounter == 0 && moveFlags == 0) {
            effect = CreateActor(0x18, actor->pos.x, actor->pos.y, actor->pos.z);
            if (effect != 0) {
                struct Sprite *effectSprite;
                effectSprite = effect->sprite;
                Actor_SetScript(effect, sScript_08013280);
                effect->__unk55 = moveFlags;
                effect->layer = 1;
                if (effectSprite != 0) {
                    Sprite_SetAnim(effectSprite, 1);
                    effectSprite->flags = moveFlags;
                    effectSprite->oam.attr0Bits.objMode = 1;
                    effectSprite->oam.priority = 2;
                }
                actor->waveCounter = 10;
            }
        }
    }
    Func_800eaf8();
    actor->scriptPos++;
    return TRUE;
}
#undef WorldProbe

bool32 ActorCmd_Camera2(struct Actor *actor) {
    Func_800eaf8();
    actor->scriptPos++;
    return TRUE;
}

#define TILES_ADDR 0x02010000
#define TILES ((struct Tile *)TILES_ADDR)

// the raw address matches, using the symbol `gBuffer` does not.

extern struct Tile *gBuffer;

bool32 ActorCmd_Player_Climb(struct Actor *actor) {
    vec3_t target;
    u8 unused[0x44]; // unused stack frame, debug?
    u16 inputAngle;
    u32 moveFlags;
    s32 moveAnim = 12;
    s32 direction;
    fx32 dz;
    fx32 height;
    struct Tile *currentTile, *targetTile;
    struct State_3001ebc *state;
 
    actor->speed = 0x8000;
    actor->accel = 0x4000;
 
    inputAngle = sDPadAngles[(gKeyHeld >> 4) & 0xF];
    if (inputAngle == 0xFFFF) {
        moveFlags = 4;
    } else {
        direction = inputAngle & 0xF000;
        if (direction == 0)
            moveAnim = 14;
        else if (direction == 0x8000)
            moveAnim = 15;
        else
            moveAnim = 10;
 
        moveFlags = 0;
        target.x = 0;
        target.y = 0;
        target.z = 0;
        vec3_translate(0x80000, inputAngle, &target);
        target.x += actor->pos.x;
 
        dz = target.z;
        if (dz < 0)
            actor->facing = 0xC000;
        if (dz > 0)
            actor->facing = 0x4000;
 
        target.y = actor->pos.y - target.z;
        target.z = actor->pos.z;
 
        currentTile = &TILES[actor->pos.x / 0x100000 + actor->pos.z / 0x100000 * 128];
        targetTile = &TILES[target.x / 0x100000 + actor->pos.z / 0x100000 * 128];
 
        if (Func_801219c(&target) != 0 || currentTile->__unk02 != targetTile->__unk02) {
            moveFlags = 4;
            moveAnim = 12;
        } else if (gKeyHeld & 0x40) { /* Up takes precedence over Down. */
            height = Func_8011f54(actor->layer, target.x, target.z - 0x100000);
            if (height - actor->pos.y < 0x100000)
                goto climb;
        } else if (gKeyHeld & 0x80) {
            height = Func_8011f54(actor->layer, target.x, target.z);
            if (height - actor->pos.y > -0x80000) {
            climb:
                moveFlags = 1;
                moveAnim = 12;
            }
        }
    }
    state = iwram_3001ebc;
    if (state != 0) {
        if (moveFlags & 3)
            state->__unk19C++;
        else
            state->__unk19C = 0;
    }
 
    Actor_SetAnim(actor, moveAnim);
    if (moveFlags != 0) {
        actor->prevPos.x = (fx32)0x80000000;
        actor->prevPos.y = (fx32)0x80000000;
        actor->prevPos.z = (fx32)0x80000000;
        actor->motion.x = 0;
        actor->motion.y = 0;
        actor->motion.z = 0;
    } else {
        Actor_TravelTo(actor, target.x, target.y, target.z);
    }
    actor->scriptPos++;
    return TRUE;
}
