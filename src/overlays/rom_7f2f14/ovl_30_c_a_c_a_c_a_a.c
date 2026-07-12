extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_801776c(int message, int arg1);
extern void __CutsceneEnd(void);

void OvlFunc_968_2009024(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    __Func_801776c(0x2682, 1);
    __CutsceneEnd();
}
