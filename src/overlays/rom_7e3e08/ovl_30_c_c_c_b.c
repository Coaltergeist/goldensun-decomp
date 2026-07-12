extern unsigned char gState[];
extern unsigned char Value_1[] asm("0x93");
extern unsigned char Value_2[] asm("0x94");
extern unsigned char Value_3[] asm("0x95");
extern unsigned char Value_4[] asm("0x96");
extern unsigned char Value_5[] asm("0x97");
extern unsigned char Result_1[] asm(".L4688");
extern unsigned char Result_2[] asm(".L4724");
extern unsigned char Result_3[] asm(".L476c");
extern unsigned char Result_4[] asm(".L4808");
extern unsigned char Result_5[] asm(".L4850");
extern unsigned char Result_default[] asm(".L45e0");

void *OvlFunc_957_200b598(void) {
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
