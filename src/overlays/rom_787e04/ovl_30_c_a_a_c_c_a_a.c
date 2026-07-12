extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int message);

void OvlFunc_887_2008118(int actor) {
    register int message asm("r5") = 0x22b9;
    register int actorReg asm("r6") = actor;

    asm volatile("" : "+r"(message), "+r"(actorReg));

    __MessageID(message);
    {
        register int zero asm("r1") = 0;

        asm volatile("" : "+r"(zero));
        __Func_8092c40(actorReg, zero);
    }
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(10);
        __MessageID(message + 1);
    } else {
        __MessageID(message + 2);
    }
    __ActorMessage(actorReg, 0);
}
