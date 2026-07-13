#ifndef RADIAL_EFFECT_FUNCTION
#error "RADIAL_EFFECT_FUNCTION must name the generated entry point"
#endif
#ifndef RADIAL_EFFECT_UPDATE
#error "RADIAL_EFFECT_UPDATE must name the child update callback"
#endif
#ifndef RADIAL_EFFECT_SPAWN
#error "RADIAL_EFFECT_SPAWN must name the effect constructor"
#endif

typedef signed int RadialEffectS32;
typedef unsigned int RadialEffectU32;
typedef unsigned char RadialEffectByte;

typedef struct {
    RadialEffectS32 x;
    RadialEffectS32 y;
    RadialEffectS32 z;
} RadialEffectVec3;

typedef struct {
    RadialEffectS32 mode;
    RadialEffectS32 count;
    RadialEffectS32 reserved[7];
    void (*update)(void *);
} RadialEffectConfig;

typedef struct {
    RadialEffectByte reserved00[8];
    RadialEffectS32 x;
    RadialEffectS32 y;
    RadialEffectS32 z;
} RadialEffectActor;

extern RadialEffectActor *__MapActor_GetActor(int actorId);
extern RadialEffectS32 __cos(RadialEffectS32 angle);
extern RadialEffectS32 __sin(RadialEffectS32 angle);
__asm__(".set __divsi3, _divsi3_RAM");
extern void RADIAL_EFFECT_UPDATE(void *effect);
extern void RADIAL_EFFECT_SPAWN(
    RadialEffectS32 x,
    RadialEffectS32 y,
    RadialEffectS32 z,
    RadialEffectS32 offsetX,
    RadialEffectS32 offsetY,
    RadialEffectS32 offsetZ,
    RadialEffectU32 flags,
    RadialEffectConfig *config);

/* 対象の周囲へ等間隔にエフェクトを発生させる。 */
void RADIAL_EFFECT_FUNCTION(int actorId)
{
    RadialEffectVec3 offset;
    RadialEffectConfig config;
    RadialEffectActor *actor;
    RadialEffectU32 index;

    actor = __MapActor_GetActor(actorId);
    config.mode = 1;
    config.count = 7;
    config.update = RADIAL_EFFECT_UPDATE;
    for (index = 0; index <= 0x10; index += 2) {
        RadialEffectS32 angle = index << 12;

        offset.x = __cos(angle);
        offset.y = 0;
        offset.z = __sin(angle);
        offset.x += offset.x / 3;
        RADIAL_EFFECT_SPAWN(
            actor->x,
            actor->y,
            actor->z,
            offset.x,
            offset.y,
            offset.z,
            0x1030001,
            &config);
    }
}

#undef RADIAL_EFFECT_SPAWN
#undef RADIAL_EFFECT_UPDATE
#undef RADIAL_EFFECT_FUNCTION
