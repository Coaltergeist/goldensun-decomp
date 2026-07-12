extern unsigned char gState[];
extern unsigned char Value_1[] asm("0x71");
extern unsigned char Value_2[] asm("0x72");
extern unsigned char Value_3[] asm("0x7b");
extern unsigned char Value_4[] asm("0x7c");
extern unsigned char Value_5[] asm("0x7d");
extern unsigned char Result_1[] asm(".L3904");
extern unsigned char Result_2[] asm(".L38e0");
extern unsigned char Result_3[] asm(".L39f4");
extern unsigned char Result_4[] asm("gScript_932__0200bd48");
extern unsigned char Result_5[] asm(".L3d6c");
extern unsigned char Result_default[] asm(".L3880");

void *OvlFunc_946_2008ec4(void) {
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
