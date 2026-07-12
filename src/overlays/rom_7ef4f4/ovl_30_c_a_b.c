extern unsigned char gState[];
extern unsigned char Script_391c[] asm(".L391c");
extern unsigned char Script_39e8[] asm(".L39e8");
extern unsigned char Script_3ac0[] asm(".L3ac0");
extern unsigned char Script_3c28[] asm(".L3c28");
extern unsigned char Value_b0[] asm("0xb0");
extern unsigned char Value_af[] asm("0xaf");
extern unsigned char Value_ae[] asm("0xae");

unsigned char *OvlFunc_965_200a7a0(void)
{
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
        return Script_391c;
    if (map == (int)Value_af)
        return Script_39e8;
    if (map == (int)Value_ae)
        return Script_3ac0;
    return Script_3c28;
}
