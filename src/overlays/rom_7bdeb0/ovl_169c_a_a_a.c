extern unsigned char gState[];
extern unsigned char iwram_3001ebc[];
extern void __WaitFrames(int frames);
extern void __Func_8092b08(int actor, int arg1);
extern void __ClearFlag(int flag);
extern void OvlFunc_934_2009984(void);

extern unsigned char Value_5d[] asm("0x5d");
extern unsigned char Value_5e[] asm("0x5e");
extern unsigned char Value_5f[] asm("0x5f");
extern unsigned char Script_2420[] asm(".L2420");
extern unsigned char Script_2450[] asm(".L2450");
extern unsigned char Script_2624[] asm(".L2624");
extern unsigned char Script_2414[] asm(".L2414");

unsigned char *OvlFunc_934_200969c(void) {
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

    value = (unsigned int)Value_5d;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_2420;
    value = (unsigned int)Value_5e;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_2450;
    value = (unsigned int)Value_5f;
    asm volatile("" : "+r"(value), "+r"(state));
    if (state == value)
        return Script_2624;
    return Script_2414;
}

int OvlFunc_934_20096f0(void) {
    register unsigned int value asm("r3");
    register unsigned int offset asm("r2");
    register unsigned int address asm("r1");

    value = (unsigned int)iwram_3001ebc;
    asm volatile("" : "+r"(value));
    offset = 0xe0;
    asm volatile("" : "+r"(value), "+r"(offset));
    value = *(unsigned int *)value;
    asm volatile("" : "+r"(value), "+r"(offset));
    offset <<= 1;
    asm volatile("" : "+r"(value), "+r"(offset));
    address = value + offset;
    asm volatile("" : "+r"(address));
    value = 0x81;
    value <<= 2;
    asm volatile("" : "+r"(value), "+r"(address));
    *(unsigned int *)address = value;

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value), "+r"(offset));
    offset = *(short *)(value + offset);
    value = (unsigned int)Value_5d;
    asm volatile("" : "+r"(value), "+r"(offset), "+r"(address));
    if (offset == value) {
        value = 0x80;
        value <<= 1;
        asm volatile("" : "+r"(value), "+r"(address));
        *(unsigned int *)address = value;
        __WaitFrames(1);
        __Func_8092b08(0xb, 3);
        __Func_8092b08(0xc, 3);
        __ClearFlag(0x12f);
    }
    OvlFunc_934_2009984();
    return 0;
}
