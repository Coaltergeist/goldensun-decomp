extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __SetFlag(int flag);
extern void __MessageID(int message);

void OvlFunc_901_20084b4(int actor) {
    __CutsceneStart();
    __MapActor_SetAnim(actor, 1);
    __ActorMessage(actor, 0);
    __CutsceneEnd();
}

void OvlFunc_901_20084d8(void) {
    __CutsceneStart();
    __Func_809280c(8, 0, 2);
    __SetFlag(0x305);
    __MessageID(0x1cab);
    __ActorMessage(8, 0);
    __CutsceneEnd();
}
