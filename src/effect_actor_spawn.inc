#include "gba/types.h"

typedef struct EffectSprite {
    u8 unk00[9];
    u8 priority : 2;
    u8 direction : 2;
    u8 flags09_hi : 4;
    u8 unk0a[0x14];
    u16 angle1e;
    u8 unk20[6];
    u8 enabled26;
} EffectSprite;

typedef struct EffectActor {
    u8 unk00[8];
    s32 posX;
    s32 posY;
    s32 posZ;
    u8 unk14[4];
    s32 offsetX;
    s32 offsetY;
    u8 unk20[3];
    u8 flags23;
    u8 unk24[0x0c];
    s32 stepX;
    s32 stepY;
    u8 unk38[0x0c];
    s32 velocityX;
    s32 velocityY;
    s32 velocityZ;
    EffectSprite *sprite;
    u8 unk54;
    u8 active55;
    u8 unk56[0x0e];
    u16 angleStep64;
    u8 unk66[6];
    void (*update)(struct EffectActor *);
} EffectActor;

typedef struct EffectScript {
    u8 unk00[0x0c];
    s32 duration;
} EffectScript;

typedef struct EffectSpawn {
    u8 direction;
    u8 unk01[3];
    s32 initValue;
    s32 offsetX;
    s32 offsetY;
    s32 targetX;
    s32 targetY;
    s16 actorId;
    u8 unk1a[2];
    EffectScript *script;
    u16 angle;
    u16 angleStep;
    void (*update)(EffectActor *);
} EffectSpawn;

extern EffectActor *EFFECT_MAP_ACTOR_GET(int actorId);
extern EffectActor *EFFECT_CREATE_ACTOR(int actorId, int x, int y, int z);
extern void EFFECT_SET_ANIM(EffectActor *actor, int animation);
extern void EFFECT_SET_SCRIPT(EffectActor *actor, EffectScript *script);
extern void EFFECT_APPLY_INIT(EffectActor *actor, int value);
extern void EFFECT_DEFAULT_UPDATE(EffectActor *actor);
extern EffectScript *gEffectScripts[] __asm__(EFFECT_SCRIPT_TABLE_LABEL);

enum {
    EFFECT_VARIANT_MASK = 0x0000000f,
    EFFECT_USE_INIT = 0x00010000,
    EFFECT_USE_DIRECTION = 0x00020000,
    EFFECT_INTERPOLATE = 0x00040000,
    EFFECT_USE_OFFSET = 0x00080000,
    EFFECT_USE_ACTOR_ID = 0x00100000,
    EFFECT_USE_SCRIPT = 0x00200000,
    EFFECT_USE_ANGLE = 0x00400000,
    EFFECT_USE_ANGLE_STEP = 0x00800000,
    EFFECT_USE_UPDATE = 0x01000000
};

void EFFECT_SPAWN_FUNCTION(
    int x,
    int y,
    int z,
    int velocityX,
    int velocityY,
    int velocityZ,
    unsigned int flags,
    EffectSpawn *spawn)
{
    register EffectActor *leader __asm__("r9");
    EffectActor *actor;
    EffectSprite *sprite;
    register EffectScript *selectedScript __asm__("r1");
    EffectScript *moveScript;
    register int actorId __asm__("r0");
    register int createY __asm__("r2");
    register int createX __asm__("r5") = x;
    register int sourceY __asm__("r6") = y;
    register int createZ __asm__("r8") = z;
    register unsigned int effectFlags __asm__("r10") = flags;
    register int directionMask __asm__("r9");
    register unsigned int scriptOffset __asm__("r11");
    register unsigned int selectedOffset __asm__("r3");
    register int variantMask __asm__("r5");
    register EffectActor *scriptActor __asm__("r0");
    register EffectScript **scriptTable __asm__("r2");

    leader = EFFECT_MAP_ACTOR_GET(0);
    if ((effectFlags & EFFECT_USE_ACTOR_ID) != 0 && spawn != 0) {
        actorId = spawn->actorId;
        __asm__ volatile ("" : "+r" (actorId));
        createY = sourceY;
        __asm__ volatile ("" : "+r" (createY));
    } else {
        createY = sourceY;
        __asm__ volatile ("" : "+r" (createY));
        actorId = 0xde;
        __asm__ volatile ("" : "+r" (actorId));
    }
    actor = EFFECT_CREATE_ACTOR(actorId, createX, createY, createZ);
    if (actor == 0) {
        return;
    }

    __asm__ volatile ("" : : : "r0");
    sprite = actor->sprite;
    variantMask = EFFECT_VARIANT_MASK;
    EFFECT_SET_ANIM(actor, (effectFlags + 1) & variantMask);
    selectedOffset = effectFlags;
    scriptTable = gEffectScripts;
    __asm__ volatile ("" : "+r" (selectedOffset), "+r" (scriptTable));
    selectedOffset &= variantMask;
    selectedOffset *= 4;
    __asm__ volatile (
        "ldr %0, [%1, %2]"
        : "=r" (selectedScript)
        : "r" (scriptTable), "r" (selectedOffset));
    scriptActor = actor;
    __asm__ volatile ("" : "+r" (scriptActor));
    scriptOffset = selectedOffset;
    __asm__ volatile ("" : "+r" (scriptOffset));
    EFFECT_SET_SCRIPT(scriptActor, selectedScript);
    __asm__ volatile ("" : : "r" (variantMask));

    actor->active55 = 0;
    sprite->enabled26 = 0;
    actor->update = EFFECT_DEFAULT_UPDATE;
    {
        register int velocityStore __asm__("r3");
        register EffectActor *leaderLow __asm__("r1");

        velocityStore = velocityX;
        __asm__ volatile ("" : "+r" (velocityStore));
        actor->velocityX = velocityStore;
        actor->velocityY = velocityY;
        velocityStore = velocityZ;
        leaderLow = leader;
        __asm__ volatile (
            ""
            : "+r" (velocityStore), "+r" (leaderLow));
        actor->velocityZ = velocityStore;
        sprite->direction = leaderLow->sprite->direction;
        directionMask = ~0x0c;
    }
    actor->stepX = 0;
    actor->stepY = 0;
    actor->angleStep64 = 0;
    variantMask = 3;

    if ((effectFlags & 0xffff0000) == 0 || spawn == 0) {
        return;
    }

    if ((effectFlags & EFFECT_USE_INIT) != 0) {
        EFFECT_APPLY_INIT(actor, spawn->initValue);
    }

    if ((effectFlags & EFFECT_USE_DIRECTION) != 0) {
        {
            register unsigned int actorFlags __asm__("r2");
            register unsigned int clearedFlags __asm__("r3");

            actorFlags = actor->flags23;
            clearedFlags = 0xfe;
            clearedFlags &= actorFlags;
            actor->flags23 = clearedFlags;
        }
        {
            register unsigned int spriteWork __asm__("r3");
            register unsigned int newDirection __asm__("r2");
            register unsigned int oldSpriteFlags __asm__("r1");

            spriteWork = (unsigned int)sprite;
            __asm__ volatile ("" : "+r" (spriteWork));
            newDirection = spawn->direction;
            oldSpriteFlags = *(u8 *)(spriteWork + 9);
            newDirection &= variantMask;
            spriteWork = oldSpriteFlags & directionMask;
            spriteWork |= newDirection << 2;
            *((u8 *)sprite + 9) = spriteWork;
        }
    }

    if ((effectFlags & EFFECT_USE_OFFSET) != 0) {
        actor->offsetX = spawn->offsetX;
        actor->offsetY = spawn->offsetY;
    }

    if ((effectFlags & EFFECT_INTERPOLATE) != 0) {
        register EffectScript **reloadTable __asm__("r3");
        register unsigned int reloadOffset __asm__("r1");

        reloadTable = gEffectScripts;
        reloadOffset = scriptOffset;
        __asm__ volatile (
            "ldr %0, [%1, %2]"
            : "=r" (moveScript)
            : "r" (reloadTable), "r" (reloadOffset));
        if ((effectFlags & EFFECT_USE_OFFSET) != 0) {
            actor->stepX = EFFECT_DIVIDE(
                spawn->targetX - actor->offsetX,
                moveScript->duration);
            actor->stepY = EFFECT_DIVIDE(
                spawn->targetY - actor->offsetY,
                moveScript->duration);
        } else {
            actor->stepX = EFFECT_DIVIDE(
                spawn->targetX - 0x10000,
                moveScript->duration);
            actor->stepY = EFFECT_DIVIDE(
                spawn->targetY - 0x10000,
                moveScript->duration);
        }
    }

    if ((effectFlags & EFFECT_USE_SCRIPT) != 0) {
        EFFECT_SET_ANIM(actor, 1);
        EFFECT_SET_SCRIPT(actor, spawn->script);
    }

    if ((effectFlags & EFFECT_USE_ANGLE) != 0) {
        sprite->angle1e = spawn->angle;
    }

    if ((effectFlags & EFFECT_USE_ANGLE_STEP) != 0) {
        actor->angleStep64 = spawn->angleStep;
    }

    if ((effectFlags & EFFECT_USE_UPDATE) != 0) {
        actor->update = spawn->update;
    }
}
