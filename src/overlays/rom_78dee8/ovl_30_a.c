extern unsigned char gState[];
extern unsigned char Script_1d04[] asm(".L1d04");
extern unsigned char Script_1d64[] asm(".L1d64");
extern unsigned char MapEntrance_ARRAY_895__02009cd4[];
extern unsigned char Value_13[] asm("0x13");
extern unsigned char Value_10[] asm("0x10");

void *OvlFunc_895_2008030(void) {
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
    address = (unsigned int)Value_13;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_1d04;
        goto done;
    }
    address = (unsigned int)Value_10;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_1d64;
        goto done;
    }
    result = MapEntrance_ARRAY_895__02009cd4;
done:
    asm volatile("" : "+r"(result));
    return result;
}
