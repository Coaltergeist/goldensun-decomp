extern unsigned char gState[];
extern unsigned char gOvl_02009d3c[];
extern unsigned char Script_1bec[] asm(".L1bec");
extern unsigned char Value_68[] asm("0x68");
extern unsigned char Value_9f[] asm("0x9f");

void *OvlFunc_939_2008314(void) {
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
        goto default_script;
    address = (unsigned int)Value_9f;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value != address)
        goto default_script;
    result = gOvl_02009d3c;
    goto done;
default_script:
    result = Script_1bec;
done:
    asm volatile("" : "+r"(result));
    return result;
}
