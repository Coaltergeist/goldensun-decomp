extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetIdle(int actor);
extern void __Func_809228c(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_809280c(int, int, int);
extern void __MapActor_Emote(int, int, int);
extern void OvlFunc_959_2009b24(int);

void OvlFunc_959_20092e0(void)
{
    __CutsceneStart();
    __MapActor_SetIdle(9);
    __Func_809228c(9, 0, 0);
    __MapActor_SetAnim(9, 0);
    __Func_809280c(9, 0, 0);
    __MapActor_Emote(9, 0x100, 0);
    OvlFunc_959_2009b24(10);
    __CutsceneEnd();
}
