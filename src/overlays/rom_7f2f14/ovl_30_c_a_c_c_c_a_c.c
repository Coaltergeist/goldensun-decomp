extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern unsigned char *OvlFunc_968_2008058(int x, int y, int speed, int arg3);
extern void OvlFunc_968_200894c(unsigned char *actor);
extern void __DeleteActor(unsigned char *actor);
extern void OvlFunc_968_20099c0(void);

void OvlFunc_968_2009a14(unsigned char *actorArg) {
    register unsigned char *actor asm("r0") = actorArg;
    register unsigned int temp asm("r2");
    register unsigned int savedTemp asm("r12");
    register unsigned int value asm("r3");
    register unsigned int zero asm("r1");

    temp = 0x23;
    asm("" : "+r"(temp));
    temp += (unsigned int)actor;
    asm("" : "+r"(actor), "+r"(temp));
    savedTemp = temp;
    asm("" : "+r"(savedTemp), "+r"(temp));
    temp = *(unsigned char *)temp;
    value = 2;
    asm("" : "+r"(temp), "+r"(value));
    value |= temp;
    temp = savedTemp;
    asm("" : "+r"(temp), "+r"(value));
    *(unsigned char *)temp = value;

    value = (unsigned int)actor;
    asm("" : "+r"(value));
    asm("" : "=r"(zero) : "r"(value), "0"(0));
    value += 0x55;
    *(unsigned char *)value = zero;

    temp = *(unsigned int *)(actor + 8);
    value = *(unsigned int *)(actor + 0x10);
    __Func_8010704(9, 0x18, 1, 1, (int)temp >> 20, (int)value >> 20);
}

void OvlFunc_968_2009a50(unsigned char *actorArg) {
    register unsigned char *actor asm("r7") = actorArg;
    register unsigned char *sprite asm("r1");
    register unsigned int oldValue asm("r2");
    register unsigned int value asm("r3");
    register unsigned int zero asm("r5");
    register unsigned char *created asm("r6");

    asm volatile("" : "+r"(actor));
    sprite = *(unsigned char **)(actor + 0x50);
    oldValue = sprite[9];
    value = 0xc;
    value &= oldValue;
    if (value == 0xc) {
        value = 0xd;
        value = -value;
        value &= oldValue;
        oldValue = 4;
        value |= oldValue;
        sprite[9] = value;
        asm volatile("" : "+r"(sprite), "+r"(oldValue), "+r"(value));

        zero = 0;
        asm volatile("" : "+r"(zero));
        oldValue = 0x80;
        oldValue <<= 18;
        sprite = 0;
        value = 0xdf;
        asm volatile("" : "+r"(actor), "+r"(sprite), "+r"(oldValue), "+r"(value), "+r"(zero));
        *(unsigned int *)(actor + 0x44) = zero;
        created = OvlFunc_968_2008058(*(unsigned int *)(actor + 8), (unsigned int)sprite, oldValue, value);
        asm volatile("" : "+r"(created));
        OvlFunc_968_200894c(actor);
        *(unsigned int *)(actor + 8) = zero;
        *(unsigned int *)(actor + 0x10) = zero;
        __DeleteActor(created);
    } else {
        OvlFunc_968_20099c0();
    }
}
