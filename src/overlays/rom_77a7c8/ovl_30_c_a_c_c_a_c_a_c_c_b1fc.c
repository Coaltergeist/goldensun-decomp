typedef unsigned char u8;
typedef unsigned int u32;
typedef signed char s8;

extern u32 iwram_3001e40;
extern u8 gScript_881__0200d14c[];
extern u32 __Random(void);
extern u8 *__CreateActor(int, int, int, int);
extern void __Actor_SetAnim(u8 *, int);
extern void __Actor_SetScript(u8 *, void *);
extern void __Func_80933f8(int, int, int, int);
extern u32 _umodsi3_RAM(u32, u32);

void OvlFunc_881_200b1fc(void)
{
    u8 *actor;
    s8 *sprite;
    u32 random;
    u32 x;
    u32 z;
    int zero;

    random = __Random();
    x = random * 5;
    random = __Random();
    z = random * 15;
    z <<= 1;
    x = ((u32)(x << 3) >> 16 << 16) + 0x17b00000;
    z = ((u32)z >> 16 << 16) + 0xc4c0000;
    actor = __CreateActor(0xde, x, 0, z);
    if (actor != 0) {
        sprite = *(s8 **)(actor + 0x50);
        random = (__Random() << 15) >> 16;
        random += 0x13333;
        zero = 0;
        sprite[0x26] = zero;
        sprite[9] = (sprite[9] & -13) | 8;
        actor[0x55] = zero;
        *(int *)(actor + 0x18) = random;
        *(int *)(actor + 0x1c) = random;
        __Actor_SetAnim(actor, 1);
        __Actor_SetScript(actor, gScript_881__0200d14c);
    }

    if (_umodsi3_RAM(iwram_3001e40, 3) == 0) {
        random = (__Random() << 2) >> 16;
        switch (random) {
        case 0:
            __Func_80933f8(0x17c70000, -1, 0xc690000, 1);
            break;
        case 1:
            __Func_80933f8(0x17c90000, -1, 0xc670000, 1);
            break;
        case 2:
            __Func_80933f8(0x17c90000, -1, 0xc690000, 1);
            break;
        case 3:
            __Func_80933f8(0x17c70000, -1, 0xc670000, 1);
            break;
        }
    }
}
