extern unsigned int __Random(void);

int OvlFunc_945_2008058(unsigned char *actor) {
    register unsigned char *actorReg asm("r5") = actor;
    register unsigned char *direction asm("r6") = actorReg + 0x66;
    register unsigned int random asm("r0");
    register int temp asm("r2") = 0;
    register int value asm("r3");

    value = *(short *)(direction + temp);
    if (value != 0) {
        random = __Random();
        value = *(int *)(actorReg + 0xc);
        asm volatile("" : "+r"(value));
        random <<= 15;
        random >>= 16;
        temp = -0x8000;
        value -= random;
        value += temp;
        *(int *)(actorReg + 0xc) = value;
        if (value >= 0)
            goto done;
        value = 0;
        goto set_direction;
    }

    random = __Random();
    value = *(int *)(actorReg + 0xc);
    asm volatile("" : "+r"(value));
    random <<= 15;
    random >>= 16;
    temp = 0x80;
    temp <<= 8;
    value += random;
    value += temp;
    temp = 0x80;
    temp <<= 12;
    *(int *)(actorReg + 0xc) = value;
    if (value <= temp)
        goto done;
    value = 1;

set_direction:
    *(short *)direction = value;
done:
    return 1;
}
