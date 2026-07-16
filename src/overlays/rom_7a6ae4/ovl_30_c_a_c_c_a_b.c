extern void __CutsceneStart(void);
extern void __Func_8092950(int actor, int value);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern void __MapActor_DoAnim(int actor, int animation);
extern void __CutsceneEnd(void);

void OvlFunc_920_2008280(void)
{
    __CutsceneStart();
    __Func_8092950(0xf, 0);
    __CutsceneWait(0x28);
    __PlaySound(0xd2);
    __MapActor_DoAnim(0xf, 6);
    __CutsceneEnd();
}

void OvlFunc_920_20082ac(void)
{
    __CutsceneStart();
    __Func_8092950(0x10, 0);
    __CutsceneWait(0x28);
    __PlaySound(0xd2);
    __MapActor_DoAnim(0x10, 6);
    __CutsceneEnd();
}

void OvlFunc_920_20082d8(void)
{
    __CutsceneStart();
    __Func_8092950(0x11, 0);
    __CutsceneWait(0x28);
    __PlaySound(0xd2);
    __MapActor_DoAnim(0x11, 6);
    __CutsceneEnd();
}
