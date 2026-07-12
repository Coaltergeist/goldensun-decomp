extern unsigned char gState[];
extern unsigned char Value_44[] asm("0x44");
extern unsigned char Value_45[] asm("0x45");
extern unsigned char Value_46[] asm("0x46");
extern unsigned char Result_44[] asm(".L3a48");
extern unsigned char Result_45[] asm(".L3b20");
extern unsigned char Result_46[] asm(".L3c1c");
extern unsigned char Result_default[] asm(".L3d54");

void *OvlFunc_927_200a4ac(void) {
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
    address = (unsigned int)Value_44;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_44;
        goto done;
    }
    address = (unsigned int)Value_45;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Result_45;
        goto done;
    }
    address = (unsigned int)Value_46;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Result_46;
    else
        result = Result_default;
done:
    asm volatile("" : "+r"(result));
    return result;
}
