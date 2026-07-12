extern unsigned char gState[];
extern int __GetFlag(int flag);

extern unsigned char Value_9f[] asm("0x9f");
extern unsigned char Value_68[] asm("0x68");
extern unsigned char Script_23b4[] asm(".L23b4");
extern unsigned char Script_21bc[] asm(".L21bc");
extern unsigned char Script_1fc4[] asm(".L1fc4");

unsigned char *OvlFunc_939_20086e4(void) {
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
    value = (unsigned int)Value_9f;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value) {
        __GetFlag(0x941);
        return Script_23b4;
    }

    value = (unsigned int)Value_68;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value && __GetFlag(0x941) != 0)
        return Script_21bc;
    return Script_1fc4;
}
