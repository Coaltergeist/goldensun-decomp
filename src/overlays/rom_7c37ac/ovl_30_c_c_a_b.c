extern unsigned char gState[];
extern unsigned char Result_1[] asm(".L1f38");
extern unsigned char Result_default[] asm(".L1f2c");
extern unsigned char Value_67[] asm("0x67");

void *OvlFunc_938_20080a4(void) {
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
    address = (unsigned int)Value_67;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_1;
    else
        result = Result_default;
    asm volatile("" : "+r"(result));
    return result;
}
