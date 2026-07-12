extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_898_2008938(int actorId) {
    unsigned char *flag = __MapActor_GetActor(actorId) + 0x5b;
    register int zero asm("r8") = 0;

    asm volatile("" : "+r"(zero));
    *flag = 1;
    __CutsceneStart();
    __MapActor_SetAnim(actorId, 1);
    __CutsceneWait(2);
    __ActorMessage(actorId, 0);
    __CutsceneEnd();
    *flag = zero;
}
