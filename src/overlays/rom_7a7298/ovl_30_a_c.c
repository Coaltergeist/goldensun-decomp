extern unsigned char gState[];
extern unsigned char Script_2798[] asm(".L2798");
extern unsigned char Script_28a0[] asm(".L28a0");
extern unsigned char Value_33[] asm("0x33");

void *OvlFunc_921_2008130(void)
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
    address = (unsigned int)Value_33;
    asm volatile("" : "+r"(address), "+r"(value));
    if (value == address)
        result = Script_28a0;
    else
        result = Script_2798;
    asm volatile("" : "+r"(result));
    return result;
}
