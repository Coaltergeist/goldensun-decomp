extern unsigned char gState[];
extern unsigned char Value_1[] asm("0xa0");
extern unsigned char Value_2[] asm("0xa1");
extern unsigned char Value_3[] asm("0xa2");
extern unsigned char Result_1[] asm(".L62a4");
extern unsigned char Result_2[] asm(".L64b4");
extern unsigned char Result_3[] asm(".L6754");
extern unsigned char Result_default[] asm(".L6814");

void *OvlFunc_959_20089dc(void) {
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
    result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
