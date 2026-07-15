typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    u8 direction;
    u8 unk01[3];
    s32 initValue;
    s32 offsetX;
    s32 offsetY;
    s32 targetX;
    s32 targetY;
    s16 actorId;
    u8 unk1a[2];
    void *script;
    u16 angle;
    u16 angleStep;
    void *update;
} EffectSpawn968;

extern u32 iwram_3001e40;
extern u32 __Random(void);
extern void __PlaySound(int sound);
extern s32 __divsi3(s32, s32) asm("_divsi3_RAM");
extern void OvlFunc_968_2008118(s32 x, s32 y, s32 z, s32 velocityX, s32 velocityY, s32 velocityZ, u32 flags, EffectSpawn968 *spawn);

s32 OvlFunc_968_2008b98(u8 *actor)
{
    EffectSpawn968 spawn;
    u32 rnd;
    s32 velX, velZ;

    if ((iwram_3001e40 & 3) != 0) {
        return 0;
    }

    if (((u32)__Random() * 6) >> 16 == 0) {
        if (*(s32 *)(actor + 0x38) != (s32)0x80000000 ||
            *(s32 *)(actor + 0x40) != (s32)0x80000000) {
            __PlaySound(0xf6);
        }
    }

    spawn.actorId = 0x11e;
    spawn.offsetX = 0x10000;
    spawn.offsetY = 0x10000;
    spawn.targetX = -0x147;
    spawn.targetY = -0x147;

    rnd = __Random();
    velX = __divsi3((s32)(((rnd * 9) >> 16) - 4) << 16, 10);

    rnd = __Random();
    velZ = __divsi3((s32)(((rnd * 9) >> 16) - 4) << 16, 10);

    OvlFunc_968_2008118(
        *(s32 *)(actor + 8),
        *(s32 *)(actor + 0xc),
        *(s32 *)(actor + 0x10) + (s32)0xffff0000,
        velX,
        0,
        velZ,
        0x1c0001,
        &spawn);
    return 0;
}
