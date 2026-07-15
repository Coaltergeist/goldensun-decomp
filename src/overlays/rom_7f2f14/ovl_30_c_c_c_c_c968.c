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
    u16 actorId;
    void *script;
    s32 angle;
    s32 update;
} Spawn968;

extern volatile u32 iwram_3001e40;
extern void __PlaySound(s32 sound);
extern u32 __Random(void);
extern void OvlFunc_968_2008118(s32 x, s32 y, s32 z, s32 velocityX, s32 velocityY, s32 velocityZ, u32 flags, Spawn968 *spawn);
extern u8 gScript_968_200d2cc asm(".L52cc");

s32 OvlFunc_968_200c968(Actor968 *actor)
{
    Spawn968 spawn;
    u32 mode;
    s32 rnd;
    s32 x;
    s32 y;
    s32 z;
    u32 rnd4;

    spawn.direction = 1;
    spawn.initValue = 5;
    spawn.actorId = 0x11e;
    spawn.script = &gScript_968_200d2cc;

    mode = iwram_3001e40 & 3;
    if (mode == 0) {
        if ((iwram_3001e40 & 7) == 0)
            __PlaySound(0xf6);

        rnd = __Random();
        x = actor->x + (((u32)(rnd * 0x31) >> 16) - 0x18) * 0x10000;
        rnd = __Random();
        y = actor->y + (((u32)(rnd * 0x31) >> 16) - 0x18) * 0x10000;
        rnd = __Random();
        z = actor->z + (((u32)(rnd * 0x31) >> 16) - 0x18) * 0x10000;
        rnd4 = __Random();

        OvlFunc_968_2008118(
            x,
            y,
            z,
            0,
            ((rnd4 & 0x3fffffff) >> 0xe) * 0x8000 + 0x8000,
            mode,
            0x330000,
            &spawn);
    }
    return 0;
}
