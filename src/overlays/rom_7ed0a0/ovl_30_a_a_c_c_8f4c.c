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
} Actor964;

typedef struct EffectScript964 EffectScript964;

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
    EffectScript964 *script;
    u16 angle;
    u16 angleStep;
    void (*update)(void *);
} EffectSpawn964;

extern u32 iwram_3001e40;
extern void __Actor_SetAnim(void *actor, int anim);
extern u32 __Random(void);
extern void OvlFunc_964_2008ae8(s32 x, s32 y, s32 z, s32 offsetX, s32 offsetY, s32 offsetZ, u32 flags, EffectSpawn964 *spawn);

int OvlFunc_964_2008f4c(Actor964 *actor)
{
    u32 phase;
    EffectSpawn964 spawn;
    int result;

    if ((iwram_3001e40 & 2) != 0)
        __Actor_SetAnim(actor, 1);
    else
        __Actor_SetAnim(actor, 2);

    phase = iwram_3001e40 & 3;
    if (phase != 0)
        return 0;

    spawn.offsetX = 0x4ccc;
    spawn.offsetY = 0x4ccc;
    spawn.initValue = 5;

    {
        s32 x, y, z;

        x = actor->x + (((__Random() * 7) >> 16) - 3) * 0x10000;
        z = actor->z + (((__Random() * 7) >> 16) - 3) * 0x10000;
        y = actor->y + 0x100000;

        OvlFunc_964_2008ae8(x, y, z, 0, phase, phase, 0x90001, &spawn);
    }
    result = 0;
    return result;
}
