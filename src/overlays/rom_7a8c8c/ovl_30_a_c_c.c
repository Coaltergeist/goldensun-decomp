extern unsigned char gState[];
extern unsigned char Value_1[] asm("0x34");
extern unsigned char Value_2[] asm("0x3e");
extern unsigned char Value_3[] asm("0x3f");
extern unsigned char Value_4[] asm("0x40");
extern unsigned char Value_5[] asm("0x41");
extern unsigned char Value_6[] asm("0x42");
extern unsigned char Value_7[] asm("0x43");
extern unsigned char Result_1[] asm(".L24bc");
extern unsigned char Result_2[] asm(".L2504");
extern unsigned char Result_3[] asm(".L25f4");
extern unsigned char Result_4[] asm(".L263c");
extern unsigned char Result_5[] asm(".L26cc");
extern unsigned char Result_6[] asm(".L2744");
extern unsigned char Result_7[] asm(".L27bc");
extern unsigned char Result_default[] asm(".L248c");

void *OvlFunc_922_2008050(void) {
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
    address = (unsigned int)Value_5;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_5;
        goto done;
    }
    address = (unsigned int)Value_6;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_6;
        goto done;
    }
    address = (unsigned int)Value_7;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_7;
        goto done;
    }
    result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
