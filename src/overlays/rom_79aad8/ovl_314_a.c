extern unsigned char gState[];
extern unsigned char Script_818[] asm(".L818");
extern unsigned char Script_8d8[] asm(".L8d8");
extern unsigned char Value_1d[] asm("0x1d");

void *OvlFunc_906_2008314(void) {
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
        result = Script_8d8;
    else
        result = Script_818;
    asm volatile("" : "+r"(result));
    return result;
}
