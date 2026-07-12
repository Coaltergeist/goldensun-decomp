extern unsigned char gState[];
extern void __Func_808b868(unsigned char *script);
extern int __GetFlag(int flag);

extern unsigned char Value_21[] asm("0x21");
extern unsigned char Script_29b4[] asm(".L29b4");
extern unsigned char Script_299c[] asm(".L299c");
extern unsigned char Script_2ca8[] asm(".L2ca8");
extern unsigned char Script_2c9c[] asm(".L2c9c");

unsigned char *OvlFunc_909_200809c(void) {
    register unsigned char *script asm("r5");
    register unsigned int value asm("r3");
    register unsigned int address1 asm("r1");
    register int state asm("r2");

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    address1 = 0xe0;
    address1 <<= 1;
    asm volatile("" : "+r"(value), "+r"(address1));
    value += address1;
    address1 = 0;
    asm volatile("" : "+r"(value), "+r"(address1));
    state = *(short *)(value + address1);
    value = (unsigned int)Value_21;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value) {
        script = Script_29b4;
        asm volatile("" : "+r"(script));
        __Func_808b868(script);
        if (__GetFlag(0x84e) != 0) {
            register unsigned int address2 asm("r2");

            address1 = (unsigned int)script;
            asm volatile("" : "+r"(address1), "+r"(script));
            value = 2;
            asm volatile("" : "+r"(value), "+r"(address1));
            address1 += 0xa6;
            asm volatile("" : "+r"(address1), "+r"(value));
            *(unsigned char *)address1 = value;

            value = (unsigned int)script;
            asm volatile("" : "+r"(value), "+r"(script));
            address2 = 0;
            asm volatile("" : "+r"(value), "+r"(address2));
            value += 0xbe;
            asm volatile("" : "+r"(value), "+r"(address2));
            *(unsigned char *)value = address2;

            address2 = (unsigned int)script;
            asm volatile("" : "+r"(address2), "+r"(script));
            address2 += 0xd6;
            asm volatile("" : "+r"(address2));
            value = 3;
            asm volatile("" : "+r"(value), "+r"(address2));
            *(unsigned char *)address2 = value;
            address2 += 0x18;
            asm volatile("" : "+r"(address2));
            value = 1;
            asm volatile("" : "+r"(value), "+r"(address2));
            *(unsigned char *)address2 = value;
        }
        return script;
    }
    return Script_299c;
}

unsigned char *OvlFunc_909_2008100(void) {
    register unsigned int value asm("r3");
    register unsigned int offset asm("r1");
    register int state asm("r2");

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    offset = 0xe0;
    offset <<= 1;
    asm volatile("" : "+r"(value), "+r"(offset));
    value += offset;
    offset = 0;
    asm volatile("" : "+r"(value), "+r"(offset));
    state = *(short *)(value + offset);
    value = (unsigned int)Value_21;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value)
        return Script_2ca8;
    return Script_2c9c;
}
