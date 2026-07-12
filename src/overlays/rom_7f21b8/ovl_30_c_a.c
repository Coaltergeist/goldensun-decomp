extern unsigned char gState[];
extern unsigned char gOvl_02009690[];
extern unsigned char Script_16b0[] asm(".L16b0");
extern unsigned char Value_b3[] asm("0xb3");

void *OvlFunc_967_200804c(void) {
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
    address = (unsigned int)Value_b3;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = gOvl_02009690;
    else
        result = Script_16b0;
    asm volatile("" : "+r"(result));
    return result;
}
