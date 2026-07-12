extern unsigned char gState[];
extern unsigned char gScript_887__02009c04[];
extern unsigned char Script_1bd4[] asm(".L1bd4");
extern unsigned char Value_67[] asm("0x67");

void *OvlFunc_938_2008030(void) {
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
        result = gScript_887__02009c04;
    else
        result = Script_1bd4;
    asm volatile("" : "+r"(result));
    return result;
}
