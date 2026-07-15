extern void __CutsceneStart(void);
extern void __MapActor_Emote(int, int, int);
extern void __Func_809228c(int, int, int);
extern void __MapActor_SetBehavior(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_809280c(int, int, int);
extern void __MapActor_SetIdle(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __MapTransitionOut(void);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);
extern void __CutsceneEnd(void);
extern void SetBehavior_NoArgs(void) asm("__MapActor_SetBehavior");

void OvlFunc_959_2009b24(int actor)
{
    register int message asm("r6");
    __CutsceneStart();
    __CutsceneStart();
    __MapActor_Emote(actor, 0x100, 1);
    __Func_809228c(actor, 0, 0);
    __MapActor_SetBehavior(actor, 1);
    __MapActor_SetAnim(actor, 0);
    __Func_809280c(actor, 0, 0);
    __MapActor_SetAnim(0, 1);
    __Func_809228c(actor, 0, 0);
    __MapActor_SetBehavior(actor, 1);
    __MapActor_SetIdle(actor);
    __MapActor_SetAnim(actor, 0);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        r1 = 1;
        asm volatile("" : "+r"(r1));
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r1));
        SetBehavior_NoArgs();
    }
    asm volatile("" : "=r"(message));
    message = 0x240d;
    asm volatile("" : "+r"(message));
    __MessageID(message);
    __ActorMessage(actor, 0);
    __Func_809280c(0, actor, 0);
    __MapActor_Emote(0, 0x102, 0x3c);
    message++;
    __MessageID(message);
    __ActorMessage(actor, 0);
    __MapTransitionOut();
    __CutsceneWait(0x3c);
    __Func_8091e9c(0x3c);
    __CutsceneEnd();
}
