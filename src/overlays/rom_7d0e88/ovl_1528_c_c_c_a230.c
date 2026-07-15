typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct EffectConfig {
    u32 type;
    u32 initValue;
    u32 offsetX;
    u32 offsetY;
    u32 targetX;
    u32 targetY;
    u8 pad18[8];
    u16 angle;
    u16 pad22;
    void (*update)(void *);
} EffectConfig;

extern volatile u32 iwram_3001e40[];
extern void __PlaySound(int sound);
extern u32 __Random(void);
extern void OvlFunc_947_20093b0(void *actor);
extern void OvlFunc_common0_10c(s32 x, s32 y, s32 z, s32 arg3,
                                 s32 arg4, s32 arg5, s32 arg6,
                                 EffectConfig *config);

void OvlFunc_947_200a230(void)
{
    register EffectConfig *cfg asm("r6");
    EffectConfig config;
    u32 mask;
    u32 random;
    s32 velocityX;
    s32 velocityY;

    mask = iwram_3001e40[0] & 2;
    if (mask != 0)
        return;

    if ((iwram_3001e40[0] & 7) == 0)
        __PlaySound(0x88);

    cfg = &config;
    cfg->initValue = 0xa;
    cfg->offsetX = 0x8000;
    cfg->offsetY = 0x8000;
    cfg->targetX = 0x19999;
    cfg->targetY = 0x19999;

    random = __Random();
    {
        register u32 rnd asm("r0") = random;
        register u32 masked asm("r3") = 0xffff000 & rnd;
        asm volatile("" : "+r"(masked) : "r"(rnd));
        cfg->angle = masked;
    }
    cfg->update = OvlFunc_947_20093b0;

    random = __Random();
    velocityX = -(s32)((((random * 5) >> 16) << 16) + 0x60000);
    velocityX /= 2;

    random = __Random();
    velocityY = -(s32)((((random * 5) >> 16) << 16) + 0x50000);

    OvlFunc_common0_10c(0x1440000, 0x300000, 0xe40000, velocityX,
                         velocityY, mask, 0x14d0000, cfg);
}
