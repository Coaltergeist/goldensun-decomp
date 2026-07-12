extern unsigned char *__MapActor_GetActor(int actor);
extern int __atan2(int y, int x);
extern void __Func_8092adc(int actor, int angle, int value);

int OvlFunc_923_2008d58(unsigned char *self)
{
    register unsigned char *saved_self asm("r5") = self;
    register unsigned char *actor asm("r0");
    register unsigned char *actor_copy asm("r1");
    register int actor_y asm("r2");
    register int value asm("r3");

    asm volatile("" : "+r"(saved_self));
    actor = __MapActor_GetActor(0);
    actor_copy = actor;
    actor_y = *(int *)(actor_copy + 0x10);
    value = actor_y >> 19;
    if (value <= 0x16) {
        register int y asm("r0") = *(int *)(saved_self + 0x10);

        actor_copy = (unsigned char *)(unsigned int)*(int *)(actor_copy + 8);
        value = *(int *)(saved_self + 8);
        asm volatile("" : "+r"(y), "+r"(actor_copy), "+r"(actor_y), "+r"(value));
        y = actor_y - y;
        actor_copy = (unsigned char *)((unsigned int)actor_copy - value);
        asm volatile("" : "+r"(y), "+r"(actor_copy));
        y = __atan2(y, (int)actor_copy);
        *(unsigned short *)(saved_self + 6) = y;
    } else {
        register unsigned int angle asm("r1") = 0xc0;

        value = *(unsigned short *)(saved_self + 6);
        angle <<= 8;
        asm volatile("" : "+r"(angle), "+r"(value));
        if (value != angle)
            __Func_8092adc(3, angle, 0);
    }
    return 0;
}
