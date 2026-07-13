extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int value);
extern int __Func_8091c7c(int, int);
extern void __ActorMessage(int actor, int value);

void OvlFunc_952_20080c8(int actor)
{
    register int message asm("r5") = 0x1ff1;
    register int actor_reg asm("r6") = actor;
    register int zero asm("r1");

    asm volatile("" : "+r"(message), "+r"(actor_reg));
    __MessageID(message);
    zero = 0;
    asm volatile("" : "+r"(zero));
    __Func_8092c40(actor_reg, zero);
    if (__Func_8091c7c(0, 0) == 0)
        __MessageID(message + 1);
    else
        __MessageID(message + 2);
    __ActorMessage(actor_reg, 0);
}
