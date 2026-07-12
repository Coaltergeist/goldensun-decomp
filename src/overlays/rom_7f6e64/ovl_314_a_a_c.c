extern unsigned int __Random(void);

int OvlFunc_969_2008424(unsigned char *actor) {
    register unsigned char *actorReg asm("r5") = actor;
    register unsigned short *timer asm("r6") =
        (unsigned short *)(actorReg + 0x66);
    register int offset asm("r1") = 0;
    register int signedValue asm("r3");
    register int value asm("r2");

    asm volatile("" : "+r"(offset));
    signedValue = *(short *)((unsigned char *)timer + offset);
    value = *timer;

    if (signedValue == 0) {
        register unsigned int result asm("r3");

        *(unsigned short *)(actorReg + 6) += (__Random() << 15) >> 16;
        result = (__Random() * 80) >> 16;
        asm volatile("" : "+r"(result));
        *timer = result;
        if (result == 0)
            goto done;
        value = result;
    }
    {
        register int decremented asm("r3") = value - 1;

        asm volatile("" : "+r"(decremented));
        *timer = decremented;
    }
done:
    return 1;
}
