extern unsigned char gState[];
extern unsigned char Script_d24[] asm(".Ld24");
extern unsigned char Script_d30[] asm(".Ld30");
extern unsigned char Value_22[] asm("0x22");

void *OvlFunc_910_2008154(void) {
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
    address = (unsigned int)Value_22;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Script_d30;
    else
        result = Script_d24;
    asm volatile("" : "+r"(result));
    return result;
}
