typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct EffectConfig {
    u32 type;
    u8 pad04[0x0c];
    u32 speedX;
    u32 speedY;
    u16 value18;
    u16 pad1a;
    const void *data;
} EffectConfig;

extern u8 *__MapActor_GetActor(int actor);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern const u8 EffectData[] asm("OvlFunc_926_EffectData");
extern void OvlFunc_common0_10c(int x, int y, int z, int arg3,
                               int arg4, int arg5, int arg6,
                               EffectConfig *config);

void OvlFunc_926_200c140(void)
{
    volatile u32 stackPadding[2];
    EffectConfig config;
    u8 *actor = __MapActor_GetActor(8);
    u32 i;

    config.type = 1;
    config.value18 = 0x119;
    config.data = EffectData;
    config.speedX = 0x38000;
    config.speedY = 0x18000;

    for (i = 0; i < 8; i++) {
        __CutsceneWait(10);
        if (i & 1)
            __PlaySound(0x82);
        OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc),
                            *(int *)(actor + 0x10) - 0x180000, 0,
                            0x9999, 0, 0x360001, &config);
    }
    __CutsceneWait(0x3c);
}
