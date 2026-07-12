extern unsigned char gState[];
extern unsigned char Value_b5[] asm("0xb5");
extern unsigned char Value_b6[] asm("0xb6");
extern unsigned char Value_b7[] asm("0xb7");
extern unsigned char Value_b8[] asm("0xb8");
extern unsigned char Value_b9[] asm("0xb9");
extern unsigned char Value_ba[] asm("0xba");
extern unsigned char Result_b5[] asm(".L6e44");
extern unsigned char Result_b7[] asm(".L7120");
extern unsigned char Result_b8[] asm(".L7300");
extern unsigned char Result_b9[] asm(".L73b4");
extern unsigned char Result_ba[] asm(".L74f8");
extern unsigned char Result_default[] asm(".L6f1c");

void *OvlFunc_968_200af8c(void)
{
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
    address = (unsigned int)Value_b5;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_b5;
        goto done;
    }
    address = (unsigned int)Value_b6;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        goto default_script;
    address = (unsigned int)Value_b7;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_b7;
        goto done;
    }
    address = (unsigned int)Value_b8;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_b8;
        goto done;
    }
    address = (unsigned int)Value_b9;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_b9;
        goto done;
    }
    address = (unsigned int)Value_ba;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_ba;
        goto done;
    }
default_script:
    result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
