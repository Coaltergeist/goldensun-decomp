typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    u8 unk00[8];
    s32 x;
    s32 y;
    s32 z;
} Actor968;

typedef struct {
    s32 direction;
    s32 initValue;
    s32 offsetX;
    s32 offsetY;
    s32 targetX;
    s32 targetY;
    s32 actorId;
    s32 script;
    s32 angle;
    s32 update;
} Spawn968;

extern u32 iwram_3001e40;
extern u32 __Random(void);
extern void OvlFunc_968_2008118(s32 x, s32 y, s32 z, s32 velocityX, s32 velocityY, s32 velocityZ, u32 flags, Spawn968 *spawn);

s32 OvlFunc_968_20086a0(Actor968 *actor)
{
    Spawn968 spawn;
    u32 rnd;
    s32 velY;
    u32 variant;

    spawn.offsetX = 0xcccc;
    spawn.offsetY = 0xcccc;
    spawn.direction = 0;

    velY = ((__Random() << 3) >> 16) * -13107;
    variant = iwram_3001e40 & 0xf;

    OvlFunc_968_2008118(
        actor->x + (8 - variant) * 0x10000,
        actor->y + 0x1a0000,
        actor->z,
        0,
        velY,
        0,
        0xa0000,
        &spawn);

    if ((iwram_3001e40 & 0xf) == 0) {
        spawn.offsetX = 0x8000;
        spawn.offsetY = 0x8000;
        rnd = __Random();
        OvlFunc_968_2008118(
            actor->x + (((rnd * 9) >> 16) - 4) * 0x10000,
            actor->y,
            actor->z,
            0,
            0,
            0,
            0xa0000,
            &spawn);
    }
    return 0;
}
