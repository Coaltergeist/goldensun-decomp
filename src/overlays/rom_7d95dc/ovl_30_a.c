extern unsigned char gState[];
extern unsigned char Script_3034[] asm(".L3034");
extern unsigned char Script_3094[] asm(".L3094");
extern unsigned char Script_3274[] asm(".L3274");
extern unsigned char Value_8c[] asm("0x8c");
extern unsigned char Value_8e[] asm("0x8e");

void *OvlFunc_953_2008030(void) {
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
    address = (unsigned int)Value_8c;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_3094;
        goto done;
    }
    address = (unsigned int)Value_8e;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_3274;
        goto done;
    }
    result = Script_3034;
done:
    asm volatile("" : "+r"(result));
    return result;
}
