extern void __CutsceneStart(void);
extern void __Func_809228c(int, int, int);
extern void __MapActor_SetBehavior(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_809280c(int, int, int);
extern void __PlaySound(int);
extern void __MapActor_Emote(int, int, int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __MapTransitionOut(void);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);
extern void __CutsceneEnd(void);
extern void __SetFlag(int);

void OvlFunc_959_200a134(void)
{
    register int message asm("r5");
    register int emoteDuration asm("r2");

    __CutsceneStart();
    __Func_809228c(0, 0, 0);
    __MapActor_SetBehavior(0, 1);
    __MapActor_SetAnim(0, 1);
    __Func_809280c(12, 0, 0);
    __PlaySound(0x71);
    emoteDuration = 0x3c;
    __MapActor_Emote(12, 0x100, emoteDuration);
    asm volatile("ldr %0, =0x240d" : "=r"(message));
    __MessageID(message);
    __ActorMessage(12, 0);
    __MapActor_Emote(0, 0x102, 0x32);
    message++;
    __MessageID(message);
    __ActorMessage(12, 0);
    __MapTransitionOut();
    __CutsceneWait(0x3c);
    __Func_8091e9c(0x3c);
    __CutsceneEnd();
    __SetFlag(0x224);
}
