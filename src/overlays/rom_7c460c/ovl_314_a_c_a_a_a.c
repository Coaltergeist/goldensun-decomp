extern unsigned char gState[];
extern unsigned char Value_68[] asm("0x68");
extern unsigned char Value_9f[] asm("0x9f");
extern unsigned char Result_8350[] asm("gScript_918__02009e04");
extern unsigned char Default_8350[] asm(".L1dcc");
extern unsigned char Result_8388[] asm(".L1f64");
extern unsigned char Default_8388[] asm("gOvl_02009e14");

void *OvlFunc_939_2008350(void) {
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
    address = (unsigned int)Value_68;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        goto fallback;
    address = (unsigned int)Value_9f;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value != address)
        goto fallback;
    result = Result_8350;
    goto done;
fallback:
    result = Default_8350;
done:
    asm volatile("" : "+r"(result));
    return result;
}

void *OvlFunc_939_2008388(void) {
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
    address = (unsigned int)Value_68;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        goto fallback;
    address = (unsigned int)Value_9f;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value != address)
        goto fallback;
    result = Result_8388;
    goto done;
fallback:
    result = Default_8388;
done:
    asm volatile("" : "+r"(result));
    return result;
}
