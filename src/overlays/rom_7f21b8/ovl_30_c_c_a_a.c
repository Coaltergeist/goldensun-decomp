extern unsigned char gState[];
extern unsigned char Value_b4[] __asm__("0xb4");
extern unsigned char Script_1974[] __asm__(".L1974");
extern unsigned char Script_189c[] __asm__(".L189c");
extern unsigned char Script_1734[] __asm__(".L1734");
extern int __GetFlag(int flag);

unsigned char *OvlFunc_967_2008084(void)
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
    address = (unsigned int)Value_b4;
    asm volatile("" : "+r"(address), "+r"(state));
    if (state == address) {
        if (__GetFlag(0x9a7) != 0)
            return Script_1974;
        return Script_189c;
    }
    return Script_1734;
}
