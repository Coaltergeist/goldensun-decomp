extern unsigned int CS969_Phase __asm__(".Lm969_6764");
extern unsigned int CS969_Frame __asm__("iwram_3001e40");
extern int CS969_GetActor(int) __asm__("__MapActor_GetActor");
extern void CS969_PlaySound(int) __asm__("__PlaySound");
extern void CS969_Palette(unsigned int, unsigned int) __asm__("__Func_8091200");
extern void CS969_PaletteTime(unsigned int) __asm__("__Func_8091254");
extern void CS969_SetBehavior(int, int) __asm__("__MapActor_SetBehavior");
extern void CS969_SetIdle(int) __asm__("__MapActor_SetIdle");
extern void CS969_SetFlag(int) __asm__("__SetFlag");
extern unsigned int CS969_Random(void) __asm__("__Random");
extern void *CS969_Create(int, int, int, int) __asm__("__CreateActor");
extern void CS969_Script(unsigned int *, unsigned int) __asm__("__Actor_SetScript");
extern void CS969_ActorMode(unsigned int, unsigned int) __asm__("__Func_80929d8");
extern int CS969_Sin(int) __asm__("__sin");
extern void OvlFunc_969_200d688(unsigned int);
extern void OvlFunc_969_200d9f0(struct Actor *);
extern unsigned char gScript_969__0200e2d0[];
extern unsigned char gScript_969__0200e1cc[];
extern unsigned char CS969_ClearSprite[] __asm__(".Lcs969_clear_sprite");
__asm__(".equ .Lcs969_clear_sprite, 0");
static inline void CS969_Shake(int x, int y, int speed) { extern void __Func_8012330(int, int, int); __Func_8012330(x, y, speed); }
static inline void CS969_Byte(unsigned char *p, int value) { *p = value; }
static inline void CS969_Half(unsigned short *p, unsigned int value) { *p = value; }

void OvlFunc_969_200d6a0(void)
{
    struct Actor *mainActor = (struct Actor *)CS969_GetActor(23);
    struct Actor *particle;
    struct Sprite *sprite;
    unsigned char *field;
    unsigned int jitter, sineAngle;
    int emit = 0, y, clearSprite;

    switch (CS969_Phase) {
    case 0:
        CS969_PlaySound(0xdc);
        CS969_Shake(0x60000, 0x60000, 0x10000);
        CS969_Palette(0x2063ff, 1);
        CS969_PaletteTime(8);
        break;
    case 8:
        CS969_Palette(0x10000, 1);
        CS969_PaletteTime(8);
        break;
    case 16:
        CS969_Shake(0x10000, 0x10000, 0x10000);
        break;
    case 24:
        mainActor->pos.x = 0x1300000;
        mainActor->pos.y = -0x1680000;
        mainActor->pos.z = 0xa40000;
        mainActor->scale.x = 0x10000;
        mainActor->scale.y = 0x10000;
        OvlFunc_969_200d688((unsigned int)mainActor);
        CS969_SetBehavior(23, (int)gScript_969__0200e2d0);
        break;
    case 25:
        CS969_Phase--;
        y = mainActor->pos.y;
        if (y > 0) {
            CS969_Palette(0x203210, 0);
            CS969_PaletteTime(16);
            CS969_Phase++;
            field = (unsigned char *)CS969_GetActor(0); field += 0x62; CS969_Byte(field, 1);
            field = (unsigned char *)CS969_GetActor(1); field += 0x62; CS969_Byte(field, 1);
            field = (unsigned char *)CS969_GetActor(2); field += 0x62; CS969_Byte(field, 1);
            field = (unsigned char *)CS969_GetActor(3); field += 0x62; CS969_Byte(field, 1);
            field = (unsigned char *)CS969_GetActor(21); field += 0x62; CS969_Byte(field, 1);
            field = (unsigned char *)CS969_GetActor(6); field += 0x62; CS969_Byte(field, 1);
        } else goto rise;
        break;
    case 26:
        CS969_Phase--;
        y = mainActor->pos.y;
        if (y > 0x280000) {
            CS969_Palette(0x10000, 0);
            CS969_PaletteTime(40);
            CS969_Phase++;
        } else {
        rise:
            if ((CS969_Frame & 7) == 0) {
                CS969_PlaySound(0xf6);
                y = mainActor->pos.y;
            }
            emit = 1;
            mainActor->pos.y = y + 0x24000;
        }
        break;
    case 27: case 28: case 29: case 30: case 31: case 32: case 33: case 34:
        emit = 1;
        break;
    case 36:
        CS969_PlaySound(0xbb);
        CS969_Palette(0x7fff, 0);
        CS969_PaletteTime(12);
        break;
    case 48:
        CS969_SetIdle(23);
        CS969_SetFlag(0x237);
        break;
    }
    if (emit != 0) {
        jitter = CS969_Random();
        particle = CS969_Create(0x11c, mainActor->pos.x,
            mainActor->pos.y - (((jitter * 80) >> 16) << 16) - 0x80000, mainActor->pos.z);
        if (particle != 0) {
            sprite = particle->sprite;
            CS969_Script((unsigned int *)particle, (unsigned int)gScript_969__0200e1cc);
            CS969_ActorMode((unsigned int)particle, 1);
            CS969_Byte(&particle->__unk55, 0);
            CS969_Half((unsigned short *)&particle->waveCounter, CS969_Random() & 0x0ffff000);
            clearSprite = (int)CS969_ClearSprite;
            CS969_Half(&particle->__unk66, 0);
            CS969_Byte(&particle->__unk62, CS969_Random() >> 13);
            particle->update = (actorfun_t *)OvlFunc_969_200b660;
            sineAngle = CS969_Random();
            particle->speed = CS969_Sin(((sineAngle << 16) - sineAngle) >> 20) * 24;
            particle->speed = *(short *)((unsigned char *)mainActor + 0x32);
            CS969_Byte((unsigned char *)sprite + 0x26, clearSprite);
            sprite->oam.priority = 1;
        }
    }
    CS969_Phase++;
    OvlFunc_969_200d9f0((struct Actor *)CS969_GetActor(0));
    OvlFunc_969_200d9f0((struct Actor *)CS969_GetActor(1));
    OvlFunc_969_200d9f0((struct Actor *)CS969_GetActor(2));
    OvlFunc_969_200d9f0((struct Actor *)CS969_GetActor(3));
    OvlFunc_969_200d9f0((struct Actor *)CS969_GetActor(21));
    OvlFunc_969_200d9f0((struct Actor *)CS969_GetActor(6));
}
