extern unsigned char gState[];
extern unsigned char Value_5d[] __asm__("0x5d");
extern unsigned char Value_5e[] __asm__("0x5e");
extern unsigned char Value_5f[] __asm__("0x5f");
extern unsigned char Script_2234[] __asm__(".L2234");
extern unsigned char Script_22c4[] __asm__(".L22c4");
extern unsigned char Script_239c[] __asm__(".L239c");

unsigned char *OvlFunc_934_2008d80(void)
{
    register unsigned int address asm("r3") = (unsigned int)gState;
    register unsigned int offset asm("r1") = 0xe0;
    register int state asm("r2");

    /* Preserve the original state-load and comparison register order. */
    asm volatile("" : "+r"(address), "+r"(offset));
    offset <<= 1;
    address += offset;
    offset = 0;
    asm volatile("" : "+r"(address), "+r"(offset));
    state = *(short *)(address + offset);
    address = (unsigned int)Value_5d;
    asm volatile("" : "+r"(address), "+r"(state));
    if (state == address)
        return Script_2234;
    address = (unsigned int)Value_5e;
    asm volatile("" : "+r"(address), "+r"(state));
    if (state == address)
        return Script_22c4;
    address = (unsigned int)Value_5f;
    asm volatile("" : "+r"(address), "+r"(state));
    if (state == address)
        return Script_239c;
    return Script_2234;
}
