extern unsigned char gState[];
extern unsigned char Value_ac[] asm("0xac");
extern unsigned char Value_ad[] asm("0xad");
extern unsigned char Script_3474[] asm(".L3474");
extern unsigned char Script_3654[] asm(".L3654");
extern unsigned char Script_342c[] asm(".L342c");
extern unsigned char gScript_888__0200b81c[];

unsigned char *OvlFunc_964_2009270(void) {
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

    value = (unsigned int)Value_ac;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_3474;
    value = (unsigned int)Value_ad;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_3654;
    return Script_342c;
}

unsigned char *OvlFunc_964_20092b0(void) {
    register unsigned char *state asm("r3");
    register int offset asm("r1");
    register int map asm("r2");
    register int expected asm("r3");
    register unsigned char *result asm("r0");

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

    expected = (int)Value_ad;
    asm volatile("" : "+r"(map), "+r"(expected));
    result = 0;
    asm volatile("" : "+r"(result), "+r"(map), "+r"(expected));
    if (map == expected)
        result = gScript_888__0200b81c;
    return result;
}
