extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int, int);
extern void __Func_809280c(int, int, int);
extern void __MessageID(int);
extern void OvlFunc_884_200a2c8(int, int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __CutsceneWait(int);
extern void __Func_80925cc(int, int);
extern void __MapActor_SetBehavior(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_884_2008444(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(0x1a, 1);
    __Func_809280c(0x1a, 0, 0x14);
    __Func_809280c(0x1a, 0x15, 0x28);
    __MessageID(0x11c7);
    OvlFunc_884_200a2c8(0x1a, 0x14);
    __Func_80933d4(0x19999, 0x3333);
    __Func_80933f8(0x1510000, -1, 0x1100000, 1);
    __CutsceneWait(0x14);
    __Func_80925cc(0x1a, 2);
    __CutsceneWait(0x14);
    __Func_809280c(0x1a, 0, 0xa);
    OvlFunc_884_200a2c8(0x1a, 0x28);
    __MapActor_SetBehavior(0x1a, 2);
    __CutsceneEnd();
}
