extern void __CutsceneStart(void);
extern void __Func_809228c(int actor, int x, int y);
extern void __MapActor_SetBehavior(int actor, int behavior);
extern void __MapActor_SetIdle(int actor);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MessageID(int id);
extern void __ActorMessage(int actor, int value);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_8091e9c(int value);
extern void __MapTransitionOut(void);
extern void __CutsceneEnd(void);

void OvlFunc_959_2009ab0(void)
{
    int message;

    __CutsceneStart();
    __Func_809228c(9, 0, 0);
    __MapActor_SetBehavior(9, 1);
    __MapActor_SetIdle(9);
    __MapActor_SetAnim(9, 0);
    {
        register int behavior asm("r1");
        register int actor asm("r0");

        behavior = 1;
        asm volatile("" : "+r"(behavior));
        actor = 0;
        asm volatile("" : "+r"(actor), "+r"(behavior));
        __MapActor_SetBehavior(actor, behavior);
    }
    asm volatile("" ::: "r5");
    message = 0x240d;
    __MessageID(message);
    __ActorMessage(9, 0);
    __MapActor_Emote(0, 0x102, 0x3c);
    message += 1;
    __MessageID(message);
    __ActorMessage(9, 0);
    __Func_8091e9c(0x3c);
    __MapTransitionOut();
    __CutsceneEnd();
}
