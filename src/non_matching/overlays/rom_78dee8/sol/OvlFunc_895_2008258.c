extern int __GetFlag(int a);

extern void __CutsceneStart(void);

extern void __Func_808e118(void);

extern void __PlaySound(int a);

extern void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern void __Func_800fe9c(void);

extern void __CutsceneWait(int a);

extern void __Func_801776c(int a, int b);

extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

extern void __Func_8012330(int a, int b, int c);

extern void __MapActor_Emote(int a, int b, int c);

extern void __Func_8092adc(int a, int b, int c);

extern void __MapActor_Jump(int a, int b, int c);

extern void __SetFlag(int a);

extern void __CutsceneEnd(void);

void OvlFunc_895_2008258(void)
{
    int r8;

    if (__GetFlag(0xf01) != 0 && __GetFlag(0x81a) == 0) {
        __CutsceneStart();
        __Func_808e118();
        __PlaySound(0xb6);
        __CopyMapTiles(0, 0x46, 0x1e, 0x2a, 1, 1);
        __Func_800fe9c();
        __CutsceneWait(0x28);
        r8 = 0x1032;
        __Func_801776c(r8, 1);
        __CutsceneWait(0x14);
        __PlaySound(0xb7);
        __CopyMapTiles(0, 0x1d, 3, 1, 3, 2);
        __Func_8010704(0, 0x1d, 3, 2, 3, 1);
        __CopyMapTiles(1, 0x6d, 4, 0x51, 1, 1);
        __Func_800fe9c();
        __Func_8012330(0x80 << 9, 0x80 << 9, 0x80 << 9);
        __CutsceneWait(0x14);
        __MapActor_Emote(0, 0x80 << 1, 0);
        __Func_8012330(0x80 << 10, 0x80 << 10, 0x80 << 9);
        __CutsceneWait(0x14);
        __Func_8092adc(0, 0x80 << 7, 0x28);
        __Func_8092adc(0, 0x80 << 8, 0x14);
        __Func_8092adc(0, 0, 0x14);
        __Func_8092adc(0, 0x80 << 7, 0xa);
        __MapActor_Jump(0, 4, 0x14);
        __MapActor_Jump(0, 6, 0x28);
        __Func_8012330(-1, -1, 0xe666);
        __CutsceneWait(0x28);
        r8 += 1;
        __Func_801776c(r8, 1);
        __SetFlag(0x143);
        __SetFlag(0x81a);
        __CutsceneEnd();
    }
}
