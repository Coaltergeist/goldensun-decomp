extern unsigned char gState[];
extern unsigned char Script_10f0[] asm(".L10f0");
extern unsigned char Script_1120[] asm(".L1120");
extern unsigned char Script_1288[] asm(".L1288");
extern unsigned char Value_4b[] asm("0x4b");
extern unsigned char Value_4c[] asm("0x4c");

void *OvlFunc_931_2008030(void) {
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
    address = (unsigned int)Value_4b;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_1120;
        goto done;
    }
    address = (unsigned int)Value_4c;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address) {
        result = Script_1288;
        goto done;
    }
    result = Script_10f0;
done:
    asm volatile("" : "+r"(result));
    return result;
}
