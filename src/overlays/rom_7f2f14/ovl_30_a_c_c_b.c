extern unsigned char gState[];
extern unsigned char Value_1[] asm("0xb5");
extern unsigned char Value_2[] asm("0xb7");
extern unsigned char Value_3[] asm("0xb8");
extern unsigned char Value_4[] asm("0xb9");
extern unsigned char Value_5[] asm("0xba");
extern unsigned char Result_1[] asm(".L5d68");
extern unsigned char Result_2[] asm(".L6020");
extern unsigned char Result_3[] asm(".L6230");
extern unsigned char Result_4[] asm(".L6350");
extern unsigned char Result_5[] asm(".L6548");
extern unsigned char Result_default[] asm(".L5dc8");

void *OvlFunc_968_2008e04(void) {
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
    result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
