typedef unsigned short u16;

extern u16 gCommon1DefaultTransitionEffectScript[22];

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern void __PlayMapMusic(void);
extern void __WaitFrames(int frames);
extern int __Func_80f954c(void);
extern void __SetFlag(int flag);
extern void OvlFunc_common1_88c(int variant);
extern void OvlFunc_common1_e10(int type, int direction);

void OvlFunc_common1_ea0(int variant)
{
    if (variant == 0) {
        __CutsceneStart();
        __MapTransitionIn();
        __WaitMapTransition();
        __CutsceneWait(0x1e);
        __PlaySound(0x59);
        OvlFunc_common1_88c(0);
        OvlFunc_common1_e10(1, 0);
        __CutsceneWait(0x78);
        __CutsceneEnd();
        return;
    }

    __PlaySound(0xf7);
    __CutsceneStart();
    __MapTransitionIn();
    __WaitMapTransition();
    gCommon1DefaultTransitionEffectScript[15] = variant * 0x3c;
    __CutsceneWait(0x1e);
    __PlaySound(variant + 0x5a);
    OvlFunc_common1_88c(variant);
    OvlFunc_common1_e10(1, 0);
    __CutsceneWait(0x78);

    while (__Func_80f954c() != 0)
        __WaitFrames(1);

    __PlaySound(0x121);
    OvlFunc_common1_88c(5);
    OvlFunc_common1_e10(2, 0);
    __PlaySound(0xec);
    __CutsceneWait(0x3c);
    OvlFunc_common1_e10(2, 1);
    __PlaySound(0xec);
    __CutsceneWait(0x3c);
    OvlFunc_common1_88c(6);
    OvlFunc_common1_e10(2, 0);
    __PlaySound(0xec);
    __CutsceneWait(0x3c);
    OvlFunc_common1_88c(7);
    OvlFunc_common1_e10(4, 0);
    __PlaySound(0xed);
    __PlayMapMusic();
    __CutsceneEnd();
    __SetFlag(0x123);
}
