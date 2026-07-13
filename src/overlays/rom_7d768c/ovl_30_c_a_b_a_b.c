extern void __MessageID(int message_id);
extern void __Func_8092c40(int actor_id, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __ActorMessage(int actor_id, int message_id);

void OvlFunc_952_2008524(int actor_id)
{
    register int message_id asm("r5") = 0x22a8;
    register int actor asm("r6") = actor_id;

    /* Preserve the message and actor in their original saved registers. */
    asm volatile("" : "+r"(message_id), "+r"(actor));
    __MessageID(message_id);
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");

        arg1 = 0;
        asm volatile("" : "+r"(arg1));
        arg0 = actor;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __Func_8092c40(arg0, arg1);
    }
    if (__Func_8091c7c(0, 0) == 0)
        __MessageID(message_id + 1);
    else
        __MessageID(message_id + 2);
    __ActorMessage(actor, 0);
}

void OvlFunc_952_2008564(int actor_id)
{
    register int message_id asm("r5") = 0x22ab;
    register int actor asm("r6") = actor_id;

    /* Preserve the message and actor in their original saved registers. */
    asm volatile("" : "+r"(message_id), "+r"(actor));
    __MessageID(message_id);
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");

        arg1 = 0;
        asm volatile("" : "+r"(arg1));
        arg0 = actor;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __Func_8092c40(arg0, arg1);
    }
    if (__Func_8091c7c(0, 0) == 0)
        __MessageID(message_id + 1);
    else
        __MessageID(message_id + 2);
    __ActorMessage(actor, 0);
}
