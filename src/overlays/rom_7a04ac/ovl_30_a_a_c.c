extern unsigned int __Random(void);
extern void __Func_80929d8(void *actor, int value);

int OvlFunc_913_20089fc(unsigned char *actor) {
    register unsigned char *actor_reg asm("r5") = actor;
    register unsigned char *timer asm("r6");
    register unsigned int value asm("r3");
    register unsigned int work asm("r2");
    register unsigned int random asm("r0");

    asm volatile("" : "+r"(actor_reg));
    random = __Random();
    value = 0x64;
    asm volatile("" : "+r"(value), "+r"(random));
    work = random;
    asm volatile("" : "+r"(value), "+r"(work));
    work *= value;

    timer = actor_reg;
    timer += 0x64;
    value = *(unsigned short *)timer;
    work >>= 16;
    value += work;
    work = 0xfa;
    asm volatile("" : "+r"(timer), "+r"(value), "+r"(work));
    *(unsigned short *)timer = value;
    work <<= 18;
    value <<= 16;
    asm volatile("" : "+r"(value), "+r"(work));
    if ((int)value > (int)work)
        __Func_80929d8(actor_reg, 7);
    else
        __Func_80929d8(actor_reg, 0xa);

    work = 0;
    asm volatile("" : "+r"(timer), "+r"(work));
    value = *(short *)(timer + work);
    work = 0x96;
    work <<= 3;
    asm volatile("" : "+r"(value), "+r"(work));
    if ((int)value > (int)work) {
        value = 0;
        asm volatile("" : "+r"(timer), "+r"(value));
        *(unsigned short *)timer = value;
    }
    return 1;
}
