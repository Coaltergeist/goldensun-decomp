extern unsigned char gState[];
extern unsigned char Script_2c80[] asm(".L2c80");
extern unsigned char Script_2db8[] asm(".L2db8");
extern unsigned char Value_33[] asm("0x33");

void *OvlFunc_921_20081ec(void) {
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
    address = (unsigned int)Value_33;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Script_2db8;
    else
        result = Script_2c80;
    asm volatile("" : "+r"(result));
    return result;
}
