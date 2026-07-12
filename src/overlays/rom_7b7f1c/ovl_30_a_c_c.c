extern unsigned char gState[];
extern unsigned char Script_17b4[] asm(".L17b4");
extern unsigned char Script_1844[] asm(".L1844");
extern unsigned char Value_4a[] asm("0x4a");

void *OvlFunc_930_200807c(void) {
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
    address = (unsigned int)Value_4a;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Script_1844;
    else
        result = Script_17b4;
    asm volatile("" : "+r"(result));
    return result;
}
