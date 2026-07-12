extern unsigned char gState[];
extern unsigned char Value_a6[] asm("0xa6");
extern unsigned char Script_19c4[] asm(".data+0x594");
extern unsigned char Script_17b4[] asm(".data+0x384");

unsigned char *OvlFunc_960_2008e5c(void) {
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
    value = (unsigned int)Value_a6;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value)
        return Script_19c4;
    return Script_17b4;
}
