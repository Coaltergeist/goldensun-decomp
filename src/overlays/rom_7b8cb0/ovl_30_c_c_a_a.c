extern unsigned char gState[];
extern unsigned char gScript_930__02009730[];
extern int __GetFlag(int flag);
extern void __Func_808b868(unsigned char *script);

extern unsigned char Value_4b[] asm("0x4b");
extern unsigned char Value_4c[] asm("0x4c");
extern unsigned char Script_140c[] asm(".L140c");
extern unsigned char Script_15bc[] asm(".L15bc");
extern unsigned char Script_13f4[] asm(".L13f4");
extern unsigned char Script_19f4[] asm(".L19f4");
extern unsigned char Script_1724[] asm(".L1724");

unsigned char *OvlFunc_931_200807c(void) {
    register unsigned char *script asm("r5");
    register unsigned int value asm("r3");
    register unsigned int address asm("r1");
    register int state asm("r2");

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    address = 0xe0;
    address <<= 1;
    asm volatile("" : "+r"(value), "+r"(address));
    value += address;
    address = 0;
    asm volatile("" : "+r"(value), "+r"(address));
    state = *(short *)(value + address);

    value = (unsigned int)Value_4b;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value) {
        if (__GetFlag(0x909) != 0) {
            value = (unsigned int)Script_140c;
            asm volatile("" : "+r"(value));
            address = value;
            asm volatile("" : "+r"(value), "+r"(address));
            state = 0;
            asm volatile("" : "+r"(value), "+r"(address), "+r"(state));
            address += 0x8e;
            value += 0xa6;
            asm volatile("" : "+r"(value), "+r"(address), "+r"(state));
            *(unsigned char *)address = state;
            *(unsigned char *)value = state;
        }
        return Script_140c;
    }

    value = (unsigned int)Value_4c;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value) {
        if (__GetFlag(0x8fd) != 0) {
            value = (unsigned int)Script_15bc;
            asm volatile("" : "+r"(value));
            state = 1;
            asm volatile("" : "+r"(value), "+r"(state));
            value += 0x2e;
            asm volatile("" : "+r"(value), "+r"(state));
            *(unsigned char *)value = state;
        }
        if (__GetFlag(0x8fe) != 0 || __GetFlag(0x907) != 0) {
            value = (unsigned int)Script_15bc;
            asm volatile("" : "+r"(value));
            state = 1;
            asm volatile("" : "+r"(value), "+r"(state));
            value += 0x5e;
            asm volatile("" : "+r"(value), "+r"(state));
            *(unsigned char *)value = state;
        }
        script = Script_15bc;
        asm volatile("" : "+r"(script));
        __Func_808b868(script);
        return script;
    }
    return Script_13f4;
}

unsigned char *OvlFunc_931_200811c(void) {
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

    value = (unsigned int)Value_4b;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return gScript_930__02009730;
    value = (unsigned int)Value_4c;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_19f4;
    return Script_1724;
}
