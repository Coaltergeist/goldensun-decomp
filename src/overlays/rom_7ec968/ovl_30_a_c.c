extern unsigned char gState[];
extern unsigned char Script_a40[] asm(".La40");
extern unsigned char Script_ad0[] asm(".Lad0");
extern unsigned char gOvl_02008998[];
extern unsigned char Value_aa[] asm("0xaa");
extern unsigned char Value_ab[] asm("0xab");

void *OvlFunc_963_2008040(void) {
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
    address = (unsigned int)Value_aa;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_a40;
        goto done;
    }
    address = (unsigned int)Value_ab;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_ad0;
        goto done;
    }
    result = gOvl_02008998;
done:
    asm volatile("" : "+r"(result));
    return result;
}
