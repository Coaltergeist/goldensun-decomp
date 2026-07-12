extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_801776c(int message, int arg1);

void OvlFunc_927_200912c(void) {
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    __Func_801776c(0x17e6, 1);
    __CutsceneEnd();
}
