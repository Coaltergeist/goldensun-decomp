extern unsigned char gState[];
extern unsigned char Value_6f[] asm("0x6f");
extern unsigned char Result_6f[] asm(".L6984");
extern unsigned char Result_default[] asm(".L696c");

unsigned char *OvlFunc_945_2008340(void)
{
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
    value = (unsigned int)Value_6f;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value)
        return Result_6f;
    return Result_default;
}
