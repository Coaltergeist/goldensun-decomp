extern unsigned char gState[];
extern unsigned char Script_4614[] asm(".L4614");
extern unsigned char Script_4a1c[] asm(".L4a1c");
extern unsigned char Value_8b[] asm("0x8b");

void *OvlFunc_952_2008030(void) {
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
    address = (unsigned int)Value_8b;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Script_4a1c;
    else
        result = Script_4614;
    asm volatile("" : "+r"(result));
    return result;
}
