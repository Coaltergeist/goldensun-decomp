extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_902_2008098(int actor) {
    __CutsceneStart();
    __MapActor_SetAnim(actor, 1);
    __ActorMessage(actor, 0);
    __CutsceneEnd();
}
