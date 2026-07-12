extern unsigned char gState[];

extern unsigned char Value_aa[] asm("0xaa");
extern unsigned char Value_ab[] asm("0xab");
extern unsigned char Script_ddc[] asm(".Lddc");
extern unsigned char Script_e54[] asm(".Le54");
extern unsigned char Script_d10[] asm(".Ld10");

unsigned char *OvlFunc_963_20080e4(void) {
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

    value = (unsigned int)Value_aa;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_ddc;
    value = (unsigned int)Value_ab;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_e54;
    return Script_d10;
}
