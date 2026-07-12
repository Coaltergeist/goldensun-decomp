extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __ActorMessage(int actor, int message);

void OvlFunc_952_200bfc4(int actor)
{
    /* Keep call arguments in the original register-setup order. */
    register int message asm("r6") = 0x22a3;
    register int actorReg asm("r5") = actor;
    register int arg0 asm("r0");
    register int arg1 asm("r1");

    asm volatile("" : "+r"(message), "+r"(actorReg));
    arg0 = message;
    asm volatile("" : "+r"(arg0));
    __MessageID(arg0);
    arg1 = 0;
    arg0 = actorReg;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __Func_8092c40(arg0, arg1);
    if (__Func_8091c7c(0, 0) == 0) {
        __MessageID(message + 1);
        arg0 = actorReg;
        arg1 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __ActorMessage(arg0, arg1);
    } else {
        __MessageID(message + 2);
        arg0 = actorReg;
        arg1 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __ActorMessage(arg0, arg1);
    }
}
