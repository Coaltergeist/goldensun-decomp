extern unsigned char gState[];
extern unsigned char Script_33b0[] asm(".L33b0");
extern unsigned char Script_3590[] asm(".L3590");
extern unsigned char Value_27[] asm("0x27");

void *OvlFunc_911_2008284(void)
{
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
    address = (unsigned int)Value_27;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Script_3590;
    else
        result = Script_33b0;
    asm volatile("" : "+r"(result));
    return result;
}
