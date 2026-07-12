extern unsigned char gState[];

extern unsigned char Value_ac[] asm("0xac");
extern unsigned char Script_3c0c[] asm(".data+0xa1c");
extern unsigned char Script_3ef4[] asm(".data+0xd04");

unsigned char *OvlFunc_964_200a370(void) {
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
        return Script_3c0c;
    return Script_3ef4;
}
