extern unsigned char gState[];
extern unsigned char Value_1[] asm("0x60");
extern unsigned char Value_2[] asm("0x61");
extern unsigned char Value_3[] asm("0x62");
extern unsigned char Result_1[] asm(".L1d34");
extern unsigned char Result_2[] asm(".L1d4c");
extern unsigned char Result_3[] asm("gScript_887__02009ecc");
extern unsigned char Result_default[] asm(".L1d1c");

void *OvlFunc_935_20080e0(void) {
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
