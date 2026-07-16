typedef unsigned char u8;
typedef unsigned short u16;
typedef signed char s8;
typedef signed short s16;
typedef unsigned int u32;
typedef int s32;

extern u8 *iwram_3001e70;
extern u16 gOvl932FlashThreshold;
extern void __Func_80105d4(s32, s32, s32, s32, s32, s32);
extern void __PlaySound(s32);
extern void __Func_8012330(s32, s32, s32);
extern void __CutsceneWait(s32);
extern void __WaitFrames(s32);
extern void __SetIntrHandler(s32, s32, void (*)(void));
extern void OvlFunc_932_20086a0(void);
extern void __SetFlag(s32);

static __inline__ void Configure(s32 a, s32 b, s32 c, s32 d,
                                 u8 fifth, s32 sixth)
{
    __Func_80105d4(a, b, c, d, fifth, sixth);
}

static __inline__ void SetScale(u8 x, u16 y, s32 z)
{
    __Func_8012330(x << 10, y << 10, z << 9);
}

static __inline__ void SetNegativeScale(u8 x, u16 y, s32 z)
{
    __Func_8012330(-(s32)x, -(s32)y, z);
}

void OvlFunc_932_20087e8(void)
{
    s32 *state;
    s32 *cursor;
    s32 count;
    s32 frames;
    u32 timer;
    s32 offset;

    state = (s32 *)iwram_3001e70;
    Configure(0x5d, 0x29, 0x10, 4, 0x4d, 0x1c);
    __PlaySound(0xe6);
    SetScale(0x80, 0x80, 0x80);
    __CutsceneWait(0xa);

    offset = 0xb2;
    offset <<= 1;
    cursor = (s32 *)((u8 *)state + offset);
    for (count = 0x17; count >= 0; count--) {
        cursor[3] -= 0x10000;
        __WaitFrames(4);
    }

    __SetIntrHandler(1, 0, OvlFunc_932_20086a0);
    gOvl932FlashThreshold = 0;
    do {
        __WaitFrames(1);
        timer = (u16)gOvl932FlashThreshold + 1;
        gOvl932FlashThreshold = timer;
    } while ((u32)timer << 16 <= 0x640000);

    __WaitFrames(1);
    __SetIntrHandler(1, 0, 0);
    __PlaySound(0x121);
    SetNegativeScale(1, 1, 0xe666);
    __CutsceneWait(0x1e);
    Configure(0x4d, 0x29, 0x10, 4, 0x4d, 0x1c);
    __SetFlag(0x8fe);
}
