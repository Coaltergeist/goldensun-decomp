#include "nonmatching.h"
#include "gba/types.h"
#include "actor.h"
#include "sprite.h"
#include "dma.h"
#include "math.h"

/* .rodata */

static const matrix_t sCameraMatrixData = {
    {  0x10000,       0,       0 },
    { -0x0CCCC, 0x10000,       0 },
    {        0,       0, 0x10000 },
    {        0,       0,       0 },
};

extern void Actor_SetScript();

extern void *gPtrs[];

// those accesses into the gPtrs array seem to usually
// emit absolute addresses, which I can't reproduce with
// simple gPtrs[id]. This seems to work at least.
#define GPTR(id) (*(gPtrs + (id)))

// not really sure about the names of these structs
struct SceneTile {
    u32 __unk00 : 12;               /* Bits 0–11 */
    u32 layer : 2;                  /* Bits 12–13 */
    u32 priority : 2;               /* Bits 14–15 */
    u32 __unk10 : 16;               /* Bits 16–31 */
};                                  /* 0x04 */

struct SceneLayer {
    struct SceneTile *tiles;        /* 0x00 */
    u8 pad_04[0x2C];                /* 0x04 */
};                                  /* 0x30 */

struct SceneState {
    u8 pad_00[0xE4];                /* 0x00 */
    vec2_t cameraPos;               /* 0xE4 */
    fx32 camMinX;                   /* 0xEC */
    fx32 camMinZ;                   /* 0xF0 */
    fx32 camMaxX;                   /* 0xF4 */
    fx32 camMaxZ;                   /* 0xF8 */
    u8 pad_FC[0x34];                /* 0xFC */
    struct SceneLayer layers[0];    /* 0x130 */
};

struct ActorSpriteState {
    u16 __unk00;                    /* 0x00 */
    u8 pad_02[2];                   /* 0x02 */
    s16 __unk04;                    /* 0x04 */
    u8 __unk06;                     /* 0x06 */
    u8 __unk07;                     /* 0x07 */
    struct Sprite *sprites[4];      /* 0x08 */
    s32 count;                      /* 0x18 */
    u8 pad_1C[0x40];                /* 0x1C */
};                                  /* 0x5C */

struct SpriteDrawPos {
    fx32 x;                         /* 0x00 */
    fx32 y;                         /* 0x04 */
    fx32 z;                         /* 0x08 */
    fx32 floorPos;                  /* 0x0C */
    u8 reserved_10[0x24];           /* 0x10 */ /* Part of stack frame? */
};                                  /* 0x34 */

struct ActorCameraState {
    vec3_t eye;             /* 0x00 */
    vec3_t target;          /* 0x0C */
    vec3_t *eyeOverride;    /* 0x18 */
    vec3_t *targetOverride; /* 0x1C */
};                          /* 0x20 */

extern void Func_8000a30(matrix_t *m);
static inline void MatrixMultiply(matrix_t *m) {
    void (*mul)(matrix_t *m) = Func_8000a30;
    mul(m);
}

extern s32 atan2(s32, s32);
extern void InitMatrixStack(void);
extern bool32 _GetFlag(u32 flag);
extern void MatrixLook(vec3_t *eye, vec3_t *target);
extern void MatrixSetLook(vec3_t *eye, vec3_t *target);
extern void Func_800b388(struct Sprite *sprite, vec3_t *pos, vec2_t *scale, s32 angle, u32 layer);

extern void *galloc_ewram(u32 id, u32 size);
extern void gfree(u32 id);
extern void InitSprites(s32 mode);
extern void Func_800d340(void);
extern void UpdateActors(void);
extern void StartTask(void (*func)(void), u32 priority);
extern void Func_800c62c(void);
extern void Func_800c880(void);

extern void _DrawSprite(void);
extern void Func_8003f78(u32 slot);

extern void UpdateSprite(struct Sprite *sprite, struct SpriteDrawPos *pos, vec2_t *scale, u32 facing);
extern void Sprite_SetAnimSpeed(struct Sprite *sprite, u32 speed);

extern u32 iwram_3001d1c;
extern u32 iwram_3001cc0;

s32 Func_800bfa4(struct Actor *actor, s32 *out) {
    fx32 x, z;
    struct SceneState *scene = GPTR(8);
    vec2_t *camera = &scene->cameraPos;

    x = FxFloor(camera->x);
    z = FxFloor(camera->y);

    x = actor->pos.x - x;
    z = actor->pos.z - z;

    if (x > -0x200000 && x < 0x1100000 &&
        z > 0 && z < 0xE00000) {
        *out++ = x >> 16;
        *out = z >> 16;
        return 0;
    } else {
        *out++ = 0;
        *out = 0;
        return -1;
    }
}

void InitActors(s32 mode) {
    struct ActorSpriteState *state;
    struct Actor *actors;
    vu32 zero;

    state = galloc_ewram(6, sizeof(*state));
    actors = galloc_ewram(5, 64 * sizeof(*actors));

    InitSprites(mode);

    zero = 0;
    DMA3_SET((const void *)&zero, actors, 0x85000000 | (64 * sizeof(*actors) / 4));

    zero = 0;
    DMA3_SET((const void *)&zero, state, 0x85000000 | (sizeof(*state) / 4));

    if (mode == 4)
        StartTask(Func_800d340, 0xC8A);
    else
        StartTask(UpdateActors, 0xC8A);

    if (mode == 3 || mode == 4) {
        StartTask(Func_800c880, 0xC80);
    } else {
        StartTask(Func_800c62c, 0xC80);

        iwram_3001d1c = 0;
        iwram_3001cc0 = 0;
    }

    state->__unk06 = 0xF;
    state->__unk07 = 0;
}

void Func_800c0c4(void) {}
void Func_800c0c8(void) {}

struct Actor *NewActor(void) {
    struct Actor *actor = GPTR(5);
    struct Actor *result = NULL;
    s32 i;

    for (i = 0; i < 64; i++, actor++) {
        if (actor->script == NULL) {
            result = actor;
            break;
        }
    }

    return result;
}

extern void DeleteSprite(struct Sprite *);

void DeleteActor(struct Actor *actor) {
    struct Sprite **sprites;
    struct Sprite *sprite;
    s32 i;

    if (actor != NULL) {
        switch (actor->visible & 0xF) {
        case 1:
            DeleteSprite(actor->sprite);
            break;

        case 2:
            sprites = (struct Sprite **)actor->sprite;

            for (i = 3; i >= 0; i--) {
                sprite = *sprites++;

                if (sprite != NULL)
                    DeleteSprite(sprite);
            }
            break;
        }

        DMA3_CLEAR(actor, sizeof(*actor));
    }
}

extern s32 gScript_Idle[];
extern struct Sprite *CreateSprite(s32 spriteId);
extern struct SpriteInfo *_GetSpriteInfo(s32 spriteId);
extern void Actor_SetPos(struct Actor *actor, fx32 x, fx32 y, fx32 z);

// Requires -fstrict-aliasing
struct Actor *CreateActor(s32 spriteId, fx32 x, fx32 y, fx32 z) {
    struct Actor *actor;
    struct Sprite *sprite;
    struct Sprite **sprites;
    struct ActorSpriteState *spriteState;
    s32 type;

    NewActor();

    type = spriteId / 0x1000;
    spriteId &= 0xFFF;

    actor = NewActor();
    if (actor == NULL)
        goto done;

    actor->width = 0x10;

    switch (type) {
    case 0:
        sprite = CreateSprite(spriteId);

        if (sprite != NULL) {
            actor->visible = 1;
            actor->sprite = sprite;
            actor->width = _GetSpriteInfo(spriteId)->actorWidth / 2;
        } else {
            actor->visible = 0;
        }
        break;

    case 2:
        spriteState = GPTR(6);
        sprites = &spriteState->sprites[spriteState->count++];

        actor->visible = 2;
        actor->sprite = (struct Sprite *)sprites;

        DMA3_CLEAR(sprites, 4 * sizeof(struct Sprite *));

        sprite = CreateSprite(spriteId);

        if (sprite != NULL) {
            u32 width;
            struct Sprite **slot;
        
            width = _GetSpriteInfo(spriteId)->actorWidth / 2;
            slot = sprites;
            actor->width = width;
            sprites++;
            *slot = sprite;
        }

        sprite = CreateSprite(spriteId + 1);

        if (sprite != NULL)
            *sprites = sprite;
        break;
    }

    if (actor != NULL) {
        Actor_SetPos(actor, x, y, z);

        actor->script = gScript_Idle;
        actor->speed = 0x20000;
        actor->scriptPos = 0;
        actor->scale.x = 0x10000;
        actor->scale.y = 0x10000;
        actor->accel = 0x10000;
        actor->__unk55 = 3;
        actor->gravity = 0x10000;
        actor->bounce = 0x4000;
        actor->collision = 0;
        actor->__unk5A = 1;
        actor->__unk4C = 0;
        actor->facing = 0x4000;
        actor->waveCounter = x / 0x10000;
        actor->__unk66 = z / 0x10000;
    }

done:
    return actor;
}

void Actor_SetScript(struct Actor *actor, s32 *script) {
    if (actor == NULL)
        return;

    actor->script = script;
    actor->scriptPos = 0;
    actor->stop = 0;
    actor->scriptLoop = 0;
    actor->scriptVar = 0;
}

// needs to be s32 even if return value is unused here?
extern s32 Sprite_SetAnim(struct Sprite *sprite, u32 animID);

void Actor_SetAnim(struct Actor *actor, u32 animID) {
    struct Sprite *sprite;
    struct Sprite **sprites;
    s32 i;

    if (actor == NULL)
        return;

    switch (actor->visible & 0xF) {
    case 1:
        Sprite_SetAnim(actor->sprite, animID);
        break;

    case 2:
        sprites = (struct Sprite **)actor->sprite;

        for (i = 3; i >= 0; i--) {
            sprite = *sprites++;

            if (sprite != NULL)
                Sprite_SetAnim(sprite, animID);
        }
        break;
    }
}

void Actor_SetAnimSpeed(struct Actor *actor, u32 speed) {
    struct Sprite *sprite;
    struct Sprite **sprites;
    s32 i;

    if (actor == NULL)
        return;

    switch (actor->visible & 0xF) {
    case 1:
        Sprite_SetAnimSpeed(actor->sprite, speed);
        break;

    case 2:
        sprites = (struct Sprite **)actor->sprite;

        for (i = 3; i >= 0; i--) {
            sprite = *sprites++;

            if (sprite != NULL)
                Sprite_SetAnimSpeed(sprite, speed);
        }
        break;
    }
}

void Actor_SetAnimAndSpeed(struct Actor *actor, u32 animID, u32 speed) {
    struct Sprite *sprite;
    struct Sprite **sprites;
    s32 i;

    if (actor == NULL)
        return;

    switch (actor->visible & 0xF) {
    case 1:
        Sprite_SetAnim(actor->sprite, animID);
        Sprite_SetAnimSpeed(actor->sprite, speed);
        break;

    case 2:
        sprites = (struct Sprite **)actor->sprite;

        for (i = 3; i >= 0; i--) {
            sprite = *sprites++;

            if (sprite != NULL) {
                Sprite_SetAnim(sprite, animID);
                Sprite_SetAnimSpeed(sprite, speed);
            }
        }
        break;
    }
}

extern void InitSprite(struct Sprite *sprite);
extern void Sprite_AddLayer(struct Sprite *sprite, s32 spriteID);
extern void WaitFrames(u32 nframes);

extern unsigned char gScript_08013608[] __asm__("gScript_08013608");
extern unsigned char gScript_08013590[] __asm__("gScript_08013590");
extern unsigned char gScript_080135a8[] __asm__("gScript_080135a8");
extern unsigned char gScript_080135c0[] __asm__("gScript_080135c0");
extern unsigned char gScript_080135d8[] __asm__("gScript_080135d8");
extern unsigned char gScript_08013620[] __asm__("gScript_08013620");
extern unsigned char gScript_080135f0[];

void Actor_SetRotation(struct Actor *actor, s32 rotation) {
    if (actor == NULL)
        return;

    if ((actor->visible & 0xF) != 1)
        return;

    actor->sprite->rotation = rotation;
}

void Actor_SetSpriteID(struct Actor *actor, s32 spriteID) {
    if (actor != NULL && (actor->visible & 0xF) == 1) {
        struct Sprite *sprite = actor->sprite;

        if (spriteID >= 0) {
            sprite->layers[0]->spriteID = spriteID;
            InitSprite(sprite);
        }
    }
}

void Actor_AddSpriteLayer(struct Actor *actor, s32 spriteID) {
    if (actor != NULL && (actor->visible & 0xF) == 1) {
        struct Sprite *sprite = actor->sprite;

        if (spriteID >= 0)
            Sprite_AddLayer(sprite, spriteID);
    }
}

void Actor_Ride(struct Actor *actor, struct Actor *other) {
    Actor_SetScript(actor, (s32 *)gScript_08013608);
    actor->linkedActor = other;
}

void Func_800c46c(struct Actor *actor) {
    Actor_SetScript(actor, (s32 *)gScript_08013590);
}

void Func_800c47c(struct Actor *actor) {
    Actor_SetScript(actor, (s32 *)gScript_080135a8);
}

void Func_800c48c(struct Actor *actor) {
    Actor_SetScript(actor, (s32 *)gScript_080135c0);
}

void Func_800c49c(struct Actor *actor) {
    Actor_SetScript(actor, (s32 *)gScript_080135d8);
}

void Actor_Stop(struct Actor *actor) {
    Actor_SetScript(actor, (s32 *)gScript_08013620);
}

void Camera_SetTarget(struct Actor *actor, struct Actor *target) {
    Actor_SetScript(actor, (s32 *)gScript_080135f0);

    if (target != NULL) {
        actor->accel = 0x8000;
        actor->speed = 0x40000;
        actor->linkedActor = target;
        actor->waveCounter = 0;
    }
}

void Actor_WaitScript(struct Actor *actor) {
    s32 frames = 0;

    if (actor->script[actor->scriptPos] != 0x10) {
        do {
            WaitFrames(1);
            frames++;

            if (frames > 0x12B)
                break;
        } while (actor->script[actor->scriptPos] != 0x10);
    }
}

void Actor_SetSpriteFlags(struct Actor *actor, u32 flags) {
    if (actor != NULL && (actor->visible & 0xF) == 1) {
        actor->sprite->flags = flags;
    }
}

void Func_800c548(struct Actor *actor, u32 value) {
    if (actor != NULL && actor->visible == 1)
        actor->sprite->oam.attr0Bits.objMode = value;
}

void Func_800c570(struct Actor *actor, u32 value) {
    if (actor != NULL && actor->visible == 1)
        actor->sprite->flags1D.bit1 = value;
}

extern void Sprite_SetColorswap(void *, int);

void Actor_SetColorswap(struct Actor *actor, s32 colorswap) {
    if (actor == NULL)
        return;

    if (actor->visible != 1)
        return;

    Sprite_SetColorswap(actor->sprite, colorswap);
}

extern void Func_80042c8(void (*func)(void));
extern void _Func_8091200(s32 arg0, s32 arg1);
extern void _Func_8091254(s32 arg0);

void Func_800c5b4(void) {
    Func_80042c8(Func_800c62c);
    Func_80042c8(Func_800c880);

    _Func_8091200(0x10000, 1);
    _Func_8091254(1);
    WaitFrames(1);

    SET_IO(REG_DISPCNT, (REG_DISPCNT & 0xF1FF) | 0x1000);
}

extern void Func_800439c(void *);

void Func_800c5fc(void) {
    Func_800439c(Func_800c62c);
    Func_800439c(Func_800c880);

    SET_IO(REG_DISPCNT, REG_DISPCNT & 0xE1FF);
}

/* FF: int stub_0800C628(void) */
u32 Func_800c628(void) {
    return 1;
}

extern u8 _DRAW_SPRITE_SIZE[];

#define INIT_DRAW_CODE(drawCode) do { \
    (drawCode) = galloc_iwram(0x34, (u32)_DRAW_SPRITE_SIZE); \
    DMA3_COPY((const void *)_DrawSprite, (drawCode), (u32)_DRAW_SPRITE_SIZE); \
} while (0)

void Func_800c62c(void) {
    s32 i;
    struct SceneState *scene;
    struct Actor *actor;
    struct Sprite *sprite;
    void *drawCode;
    fx32 cameraX, cameraZ;
    struct ActorSpriteState *state;
    fx32 x, z, screenZ;
    s32 type;
    struct SceneTile *tile;
    u32 priority, layer;
    vec2_t scale;
    struct SpriteDrawPos pos;
    vec2_t *camera;
 
    scene = GPTR(8);
    camera = &scene->cameraPos;
 
    cameraX = FxFloor(camera->x);
    cameraZ = FxFloor(camera->y);
 
    state = GPTR(6);
    INIT_DRAW_CODE(drawCode);
    state->__unk00 = 0;
 
    actor = GPTR(5);
 
    for (i = 0; i < 64; i++, actor++) {
        if (actor->script == NULL)
            continue;
 
        if (actor->pos.x != 0 || actor->pos.z != 0) {
            type = actor->visible & 0xF;
            if (type == 0)
                continue;
            if (type != 1)
                continue;
            if (state->__unk04 != 0 && actor->__unk5C == 0) {
                struct Sprite *hidden = actor->sprite;
                Func_8003f78(hidden->slot);
                hidden->visible = 1;
                continue;
            }
            x = actor->pos.x - cameraX;
            z = actor->pos.z - cameraZ;
            screenZ = z - actor->pos.y;
            sprite = actor->sprite;
            if (x > -0x200000 && x < 0x1100000 &&
                screenZ > -0x200000 && screenZ < 0xE00000) {
                tile = &scene->layers[actor->layer].tiles[
                    (actor->pos.x >> 20) +
                    ((actor->pos.z >> 20) << 7)
                ];
                if (actor->flags & 1) {
                    priority = tile->priority;
                    if (priority != 0) {
                        sprite->oam.priority = priority;
                        sprite->shadowOAM.priority = priority;
                    }
                }
                layer = tile->layer;
                if (layer != 0)
                    actor->layer = layer - 1;
                scale.x = fx32_multiply(actor->scale.x, sprite->scale);
                scale.y = fx32_multiply(actor->scale.y, sprite->scale);
                pos.x = x;
                pos.y = actor->pos.y;
                pos.z = z;
                pos.floorPos = actor->floorPos;
                if (actor->flags & 2) {
                    pos.y -= 0x1400000;
                    pos.z -= 0x1400000;
                    pos.floorPos -= 0x1400000;
                }
                if (actor->flags & 4) {
                    pos.y += 0x1400000;
                    pos.z += 0x1400000;
                    pos.floorPos += 0x1400000;
                }
                UpdateSprite(sprite, &pos, &scale, actor->facing);
                continue;
            }
            if (actor->__unk5C == 0) {
                if (!(sprite->__unk1D & 1)) {
                    Func_8003f78(sprite->slot);
                    sprite->visible = 1;
                }
            }
        } else {
            type = actor->visible & 0xF;
            if (type != 1)
                continue;
            sprite = actor->sprite;
            if (actor->__unk5C == 0) {
                if (!(sprite->__unk1D & 1)) {
                    Func_8003f78(sprite->slot);
                    sprite->visible = 1;
                }
            }
        }
    }
    gfree(0x34);
}

/* FF: int stub_0800C87C(void) */
u32 Func_800c87c(void) {
    return 1;
}

void Func_800c880(void)
{
    struct ActorCameraState *camera;
    struct ActorSpriteState *state;
    struct Actor *actor;
    struct Sprite *sprite;
    struct Sprite **sprites;
    vec3_t *eye;
    vec3_t *target;
    void *drawCode;
    s32 angle;
    s32 i, j;
    vec3_t unused1; // stack
    vec3_t unused2; // stack

    camera = GPTR(12);
    state = GPTR(6);

    INIT_DRAW_CODE(drawCode);

    eye = &camera->eye;
    target = &camera->target;

    if (camera->eyeOverride != NULL)
        eye = camera->eyeOverride;

    if (camera->targetOverride != NULL)
        target = camera->targetOverride;

    angle = (s16)atan2(
        (eye->x - target->x) >> 16,
        (eye->z - target->z) >> 16
    );

    state->__unk00 = 0;

    InitMatrixStack();

    if (_GetFlag(0x16B)) {
        angle -= 0x2000;
        MatrixMultiply(&sCameraMatrixData);
        MatrixLook(eye, target);
    } else {
        MatrixSetLook(eye, target);
    }

    actor = GPTR(5);
    actor += 63;

    for (i = 0; i < 64; i++, actor--) {
        if (actor->script == NULL)
            continue;

        switch (actor->visible & 0xF) {
        case 0:
            break;

        case 1:
        {
            vec3_t *pos;
            vec2_t scale;

            pos = &actor->pos;

            scale.x = actor->scale.x;
            scale.y = actor->scale.y;

            sprite = actor->sprite;

            if (_GetFlag(0x16B)) {
                scale.x = 0x10000;
                scale.y = 0x10000;
            }

            Func_800b388(sprite, pos, &scale, actor->facing + angle, actor->layer);
            break;
        }

        case 2:
        {
            vec2_t scale;

            scale.x = actor->scale.x;
            scale.y = actor->scale.y;

            if (_GetFlag(0x16B)) {
                scale.x = 0x10000;
                scale.y = 0x10000;
            }

            sprites = (struct Sprite **)actor->sprite;

            for (j = 3; j >= 0; j--) {
                sprite = *sprites++;

                if (sprite != NULL) {
                    Func_800b388(sprite, &actor->pos, &scale, actor->facing + angle, actor->layer);
                }
            }
            break;
        }
        }
    }
    gfree(0x34);
}
