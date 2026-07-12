extern unsigned char gState[];
extern unsigned char Value_1[] asm("0x60");
extern unsigned char Value_2[] asm("0x61");
extern unsigned char Value_3[] asm("0x62");
extern unsigned char Result_1[] asm(".L1f98");
extern unsigned char Result_2[] asm(".L2064");
extern unsigned char Result_3[] asm(".L2190");
extern unsigned char Result_default[] asm(".L1f8c");

void *OvlFunc_935_20082e0(void) {
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
