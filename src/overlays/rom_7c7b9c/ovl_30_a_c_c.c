extern unsigned int __Random(void);

int OvlFunc_943_20088e0(unsigned char *actor) {
    register unsigned char *actorReg asm("r5") = actor;
    register unsigned char *timer asm("r6") = actorReg;
    register unsigned int saved asm("r7");
    register unsigned int value asm("r3");
    register unsigned int work asm("r2");
    register unsigned int random asm("r0");

    asm volatile("" : "+r"(actorReg));
    timer += 0x62;
    value = *timer;
    saved = value;
    asm volatile("" : "+r"(timer), "+r"(value), "+r"(saved));
    if (saved != 0) {
        asm volatile("" : "+r"(value));
        value += 0xff;
    } else {
        random = __Random();
        work = random << 2;
        work += random;
        value = work << 4;
        value -= work;
        value <<= 2;
        value >>= 16;
        asm volatile("" : "+r"(value));

        if (value > 200) {
            value = 0xd0;
            value <<= 8;
            *(unsigned short *)(actorReg + 6) = value;
        } else if (value > 100) {
            value = 0xa0;
            value <<= 7;
            *(unsigned short *)(actorReg + 6) = value;
        } else {
            *(unsigned short *)(actorReg + 6) = saved;
        }
        random = __Random();
        value = random << 2;
        value += random;
        value <<= 4;
        value >>= 16;
        value += 0x50;
    }
    *timer = value;
    return 1;
}
