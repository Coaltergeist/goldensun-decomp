extern unsigned char gState[];
extern unsigned char Script_3694[] asm(".L3694");
extern unsigned char Script_3754[] asm(".L3754");
extern unsigned char Script_3784[] asm(".L3784");
extern unsigned char Script_388c[] asm(".L388c");
extern unsigned char Value_b0[] asm("0xb0");
extern unsigned char Value_af[] asm("0xaf");
extern unsigned char Value_ae[] asm("0xae");

unsigned char *OvlFunc_965_2008fdc(void)
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
        return Script_3694;
    if (map == (int)Value_af)
        return Script_3754;
    if (map == (int)Value_ae)
        return Script_3784;
    return Script_388c;
}
