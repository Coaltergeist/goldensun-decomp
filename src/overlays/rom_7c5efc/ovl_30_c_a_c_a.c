extern unsigned char gState[];
extern unsigned char Script_1cc0[] asm(".L1cc0");
extern unsigned char Script_1cd8[] asm(".L1cd8");
extern unsigned char Value_6a[] asm("0x6a");

void *OvlFunc_941_2008044(void) {
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
    address = (unsigned int)Value_6a;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Script_1cd8;
    else
        result = Script_1cc0;
    asm volatile("" : "+r"(result));
    return result;
}
