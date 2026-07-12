extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __MessageID(int message_id);
extern void __ActorMessage(int actor_id, int arg1);

void OvlFunc_952_200bf84(void)
{
    register int flag asm("r0") = 0x96d;

    /* Reload the literal at each call instead of hoisting it into r5. */
    asm volatile("" : "+r"(flag));
    if (!__GetFlag(flag)) {
        flag = 0x96d;
        asm volatile("" : "+r"(flag));
        __SetFlag(flag);
        __MessageID(0x2239);
        __ActorMessage(9, 0);
    } else {
        __MessageID(0x223a);
        __ActorMessage(9, 0);
    }
}
