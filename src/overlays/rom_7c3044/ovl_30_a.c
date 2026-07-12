extern unsigned char gState[];
extern unsigned char Script_4d0[] asm(".L4d0");
extern unsigned char Script_6c8[] asm(".L6c8");
extern unsigned char MapEntrance_ARRAY_937__020084a0[];
extern unsigned char Value_64[] asm("0x64");
extern unsigned char Value_65[] asm("0x65");

void *OvlFunc_937_2008030(void) {
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
    address = (unsigned int)Value_64;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_4d0;
        goto done;
    }
    address = (unsigned int)Value_65;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_6c8;
        goto done;
    }
    result = MapEntrance_ARRAY_937__020084a0;
done:
    asm volatile("" : "+r"(result));
    return result;
}
