extern void __Func_808e118(void);
extern void __Func_800fe9c(void);
extern void __Func_8012330(int, int, int);

static inline void Func_8012330_shift9(int a, int b, int c)
{
    __Func_8012330(a << 9, b << 9, c << 9);
}

static inline void Func_8012330_shift10(int a, int b, int c)
{
    __Func_8012330(a << 10, b << 10, c << 9);
}

static inline void Func_8012330_negate(int a, int b, int c)
{
    __Func_8012330(-a, -b, c);
}

void OvlFunc_895_2008420(void)
{
    int msg;

    if (__GetFlag(0xf02) && !__GetFlag(0x821)) {
        __CutsceneStart();
        __Func_808e118();
        __PlaySound(0xb6);
        __CopyMapTiles(0, 0x47, 0x64, 0x47, 1, 1);
        __Func_800fe9c();
        __CutsceneWait(0x28);
        msg = 0x1032;
        __Func_801776c(msg, 1);
        __CutsceneWait(0x14);
        __PlaySound(0xb7);
        __CopyMapTiles(0x7a, 0x14, 0x78, 0x1e, 1, 2);
        __Func_8010704(0x7a, 0x14, 1, 2, 0x78, 0x1e);
        __Func_800fe9c();
        Func_8012330_shift9(0x80, 0x80, 0x80);
        __CutsceneWait(0x14);
        __MapActor_Emote(0, 0x100, 0);
        Func_8012330_shift10(0x80, 0x80, 0x80);
        __CutsceneWait(0x14);
        __Func_8092adc(0, 0x4000, 0x28);
        __Func_8092adc(0, 0x8000, 0x14);
        __Func_8092adc(0, 0, 0x14);
        __Func_8092adc(0, 0x4000, 0xa);
        __MapActor_Jump(0, 4, 0x14);
        __MapActor_Jump(0, 6, 0x28);
        Func_8012330_negate(1, 1, 0xe666);
        msg++;
        __CutsceneWait(0x28);
        __Func_801776c(msg, 1);
        __SetFlag(0x143);
        __SetFlag(0x821);
        __CutsceneEnd();
    }
}
