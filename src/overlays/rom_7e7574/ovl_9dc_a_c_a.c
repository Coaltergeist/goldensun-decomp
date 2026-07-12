extern unsigned char gState[];
extern unsigned char Value_a1[] __asm__("0xa1");
extern unsigned char Value_a2[] __asm__("0xa2");
extern unsigned char Value_a3[] __asm__("0xa3");
extern unsigned char Script_6910[] __asm__(".L6910");
extern unsigned char Script_697c[] __asm__(".L697c");
extern unsigned char Script_68a4[] __asm__(".L68a4");

unsigned char *OvlFunc_959_2008a34(void)
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
    address = (unsigned int)Value_a1;
    asm volatile("" : "+r"(address), "+r"(state));
    if (state == address)
        return Script_6910;
    address = (unsigned int)Value_a2;
    asm volatile("" : "+r"(address), "+r"(state));
    if (state == address)
        return Script_697c;
    address = (unsigned int)Value_a3;
    asm volatile("" : "+r"(address), "+r"(state));
    if (state == address)
        return Script_697c;
    return Script_68a4;
}
