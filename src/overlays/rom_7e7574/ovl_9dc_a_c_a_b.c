extern unsigned char gState[];
extern unsigned char Value_6a[] asm("0x6a");
extern unsigned char Value_a2[] asm("0xa2");
extern unsigned char Value_a1[] asm("0xa1");
extern unsigned char Value_a0[] asm("0xa0");
extern unsigned char Value_a3[] asm("0xa3");
extern unsigned char Script_69d0[] asm(".L69d0");
extern unsigned char Script_6e08[] asm(".L6e08");
extern unsigned char Script_6c28[] asm(".L6c28");
extern unsigned char Script_6ac0[] asm(".L6ac0");
extern unsigned char Script_6e98[] asm(".L6e98");
extern unsigned char Script_69b8[] asm(".L69b8");
extern unsigned char Script_6ff4[] asm(".L6ff4");
extern unsigned char Script_7258[] asm(".L7258");
extern unsigned char Script_7528[] asm(".L7528");
extern unsigned char Script_763c[] asm(".L763c");

void *OvlFunc_959_2008a80(void) {
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int value asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_6a;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_69d0;
        goto done;
    }
    address = (unsigned int)Value_a2;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_6e08;
        goto done;
    }
    address = (unsigned int)Value_a1;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_6c28;
        goto done;
    }
    address = (unsigned int)Value_a0;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_6ac0;
        goto done;
    }
    address = (unsigned int)Value_a3;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_6e98;
        goto done;
    }
    result = Script_69b8;
done:
    asm volatile("" : "+r"(result));
    return result;
}

unsigned char *OvlFunc_959_2008af8(void) {
    register unsigned char *state asm("r3");
    register int offset asm("r1");
    register int map asm("r2");

    state = gState;
    asm volatile("" : "+r"(state));
    offset = 0xe0;
    asm volatile("" : "+r"(state), "+r"(offset));
    offset <<= 1;
    state += offset;
    asm volatile("" : "+r"(state), "+r"(offset));
    offset = 0;
    asm volatile("" : "+r"(state), "+r"(offset));
    map = *(short *)(state + offset);
    asm volatile("" : "+r"(map));

    if (map == (int)Value_a0)
        return Script_6ff4;
    if (map == (int)Value_a1)
        return Script_7258;
    if (map == (int)Value_a2)
        return Script_7528;
    return Script_763c;
}
