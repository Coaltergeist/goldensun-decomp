extern unsigned char gState[];
extern unsigned char Script_948[] asm(".L948");
extern unsigned char Script_978[] asm(".L978");
extern unsigned char Value_1d[] asm("0x1d");

void *OvlFunc_906_2008350(void)
{
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int value asm("r2");
    register void *result asm("r0");

    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    value = *(short *)(address + offset);
    address = (unsigned int)Value_1d;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Script_978;
    else
        result = Script_948;
    asm volatile("" : "+r"(result));
    return result;
}
