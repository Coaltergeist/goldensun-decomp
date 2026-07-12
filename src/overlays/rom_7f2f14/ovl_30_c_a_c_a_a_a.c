extern unsigned char gState[];
extern unsigned char Value_b5[] asm("0xb5");
extern unsigned char Value_b6[] asm("0xb6");
extern unsigned char Value_b7[] asm("0xb7");
extern unsigned char Value_b8[] asm("0xb8");
extern unsigned char Value_b9[] asm("0xb9");
extern unsigned char Value_ba[] asm("0xba");
extern unsigned char Result_b5[] asm("gScript_945__0200e904");
extern unsigned char Result_b6[] asm(".L69c4");
extern unsigned char Result_b7[] asm(".L6b74");
extern unsigned char Result_b8[] asm(".L6c04");
extern unsigned char Result_b9[] asm(".L6c64");
extern unsigned char Result_ba[] asm(".L6cf4");
extern unsigned char Result_default[] asm(".L68ec");
extern void __Func_808b868(void *script);

void *OvlFunc_968_2008e88(void) {
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int value asm("r2");
    register void *selected asm("r5");
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
    if (value == address) {
        selected = Result_b6;
        goto prepare;
    }
    address = (unsigned int)Value_b7;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        selected = Result_b7;
        goto prepare;
    }
    address = (unsigned int)Value_b8;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        selected = Result_b8;
        goto prepare;
    }
    address = (unsigned int)Value_b9;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        selected = Result_b9;
        goto prepare;
    }
    address = (unsigned int)Value_ba;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value != address)
        goto default_script;
    selected = Result_ba;
prepare:
    asm volatile("" : "+r"(selected));
    __Func_808b868(selected);
    result = selected;
    goto done;
default_script:
    result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
