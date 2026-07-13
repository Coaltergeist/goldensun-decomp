struct ActorEntry {
    int state;
    short id;
    short padding;
    int value;
};

extern struct ActorEntry gOvl_0200e3f4[];

void OvlFunc_881_200a7dc(void)
{
    register unsigned char *base asm("r0");
    register int replacement asm("r3");
    register int minus_one asm("r4");
    register unsigned char *store_base asm("r7");
    register int one asm("r6");
    register short *id asm("r1");
    register unsigned int offset asm("r2");
    register int stored_value asm("r12");
    register int state asm("r3");
    register int zero asm("r5");

    base = (unsigned char *)gOvl_0200e3f4;
    asm volatile("" : "+r" (base) : : "memory");
    replacement = 0x21;
    asm volatile("" : "+r" (replacement) : : "memory");
    minus_one = 1;
    asm volatile("" : "+r" (minus_one) : : "memory");
    store_base = base;
    one = 1;
    id = (short *)(base + 4);
    offset = 0;
    stored_value = replacement;
    asm volatile("" : "+r" (store_base), "+r" (one), "+r" (id),
                 "+r" (offset), "+r" (stored_value) : : "memory");
    minus_one = -minus_one;
    asm("" : "+r" (minus_one));

    for (;;) {
        asm volatile("ldr %0, [%1, %2]"
                     : "=r" (state)
                     : "r" (offset), "r" (base)
                     : "memory");
        if (state == 2) {
            zero = 0;
            asm("" : "+r" (zero));
            state = *(short *)((unsigned char *)id + zero);
            asm("" : "+r" (state));
            if (state == 0x8a) {
                state = stored_value;
                asm("" : "+r" (state));
                asm volatile("str %0, [%1, %2]"
                             :
                             : "r" (one), "r" (offset), "r" (store_base)
                             : "memory");
                *(int *)(id + 2) = state;
                break;
            }
        }
        asm volatile("ldr %0, [%1, %2]"
                     : "=r" (state)
                     : "r" (offset), "r" (base)
                     : "memory");
        asm volatile("" : "+r" (state), "+r" (minus_one) : : "memory");
        if (state != minus_one) {
            id += 6;
            offset += 12;
            continue;
        }
        break;
    }
}
