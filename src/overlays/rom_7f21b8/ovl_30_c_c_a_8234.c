extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __UI_Sanctum(int actor_id);
extern int __GetFlag(int flag);
extern void __MessageID(int message_id);
extern void __ActorMessage(int actor_id, int arg);

void OvlFunc_967_2008234(int actor_id)
{
    unsigned char *hero = __MapActor_GetActor(0);
    register unsigned int direction asm("r3");
    register unsigned int mask asm("r2");
    register int argument asm("r0");

    mask = 0x80;
    direction = *(unsigned short *)(hero + 6);
    mask <<= 6;
    direction += mask;
    asm volatile("ldr %0, =0xffffc000" : "=r"(mask));
    direction &= mask;
    mask = 0xc0;
    direction <<= 16;
    mask <<= 24;
    if (direction == mask) {
        __UI_Sanctum(actor_id);
        return;
    }

    asm volatile("ldr %0, =0x9a7" : "=r"(argument));
    if (__GetFlag(argument)) {
        asm volatile("ldr %0, =0x28fc" : "=r"(argument));
        __MessageID(argument);
        __ActorMessage(actor_id, 0);
        asm volatile("b .Lreturn_967_2008234\n\t.align 2, 0\n\t.pool");
    }

    __MessageID(0x26f6);
    __ActorMessage(actor_id, 0);
    asm volatile(".Lreturn_967_2008234:");
}
