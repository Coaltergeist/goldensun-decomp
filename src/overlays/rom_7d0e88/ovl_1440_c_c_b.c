extern unsigned char gState[];
extern unsigned char Value_1[] asm("0x73");
extern unsigned char Value_2[] asm("0x74");
extern unsigned char Value_3[] asm("0x77");
extern unsigned char Value_4[] asm("0x7a");
extern unsigned char Result_1[] asm("gOvl_0200b06c");
extern unsigned char Result_2[] asm("gOvl_0200b0e4");
extern unsigned char Result_3[] asm(".L3174");
extern unsigned char Result_4[] asm(".L32dc");
extern unsigned char Result_default[] asm(".L3264");

void *OvlFunc_947_20094c4(void) {
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
    address = (unsigned int)Value_1;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_1;
        goto done;
    }
    address = (unsigned int)Value_2;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_2;
        goto done;
    }
    address = (unsigned int)Value_3;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_3;
        goto done;
    }
    address = (unsigned int)Value_4;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_4;
        goto done;
    }
    result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
