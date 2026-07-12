extern unsigned char gState[];
extern unsigned char Value_4a[] asm("0x4a");
extern unsigned char Script_1c9c[] asm(".data+0x67c");
extern unsigned char Script_1b10[] asm(".data+0x4f0");

unsigned char *OvlFunc_930_2009180(void) {
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
    value = (unsigned int)Value_4a;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value)
        return Script_1c9c;
    return Script_1b10;
}
