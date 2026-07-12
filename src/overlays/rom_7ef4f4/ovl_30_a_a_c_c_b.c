extern unsigned char gState[];
extern unsigned char Value_b0[] asm("0xb0");
extern unsigned char Value_af[] asm("0xaf");
extern unsigned char Value_ae[] asm("0xae");
extern unsigned char Script_3270[] asm(".L3270");
extern unsigned char Script_3330[] asm(".L3330");
extern unsigned char Script_34f8[] asm(".L34f8");
extern unsigned char Script_3558[] asm(".L3558");
extern unsigned char Script_35b8[] asm(".L35b8");

unsigned char *OvlFunc_965_2008f58(void) {
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

    if (map == (int)Value_b0)
        return Script_3270;
    if (map == (int)Value_af)
        return Script_3330;
    if (map == (int)Value_ae)
        return Script_34f8;
    return Script_3558;
}

unsigned char *OvlFunc_965_2008fac(void) {
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

    expected = (int)Value_b0;
    asm volatile("" : "+r"(map), "+r"(expected));
    result = 0;
    asm volatile("" : "+r"(result), "+r"(map), "+r"(expected));
    if (map == expected)
        result = Script_35b8;
    return result;
}
