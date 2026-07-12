extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __CutsceneWait(int duration);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_950_20088cc(int actor)
{
    register int message asm("r5");
    register int actorReg asm("r6") = actor;
    register int arg0 asm("r0");
    register int arg1 asm("r1");

    asm volatile("" : "+r"(actorReg));
    __CutsceneStart();
    message = 0x23ac;
    asm volatile("" : "+r"(message));
    arg0 = message;
    asm volatile("" : "+r"(arg0));
    __MessageID(arg0);
    arg1 = 0;
    arg0 = actorReg;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __Func_8092c40(arg0, arg1);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0xa);
        __MessageID(message + 1);
    } else {
        __MessageID(message + 2);
    }
    arg0 = actorReg;
    arg1 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __ActorMessage(arg0, arg1);
    __CutsceneEnd();
}
