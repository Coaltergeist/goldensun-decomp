extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_801776c(int message, int arg1);
extern void __CutsceneEnd(void);

void OvlFunc_930_2008fcc(void) {
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    __Func_801776c(0x1a12, 1);
    __CutsceneEnd();
}
