extern unsigned char gState[];
extern unsigned char State_8b[] __asm__("0x8b");
extern unsigned char Script_4b3c[] __asm__(".L4b3c");
extern unsigned char Script_4e6c[] __asm__(".L4e6c");
extern unsigned char Script_4d64[] __asm__(".L4d64");
extern unsigned char Script_4b84[] __asm__(".L4b84");
extern int __GetFlag(int flag);

unsigned char *OvlFunc_952_2008070(void)
{
    /* Preserve Camelot's address-load and comparison register order. */
    register unsigned int stateAddress asm("r3");
    register unsigned int offset asm("r1");
    register int state asm("r2");

    stateAddress = (unsigned int)gState;
    asm volatile("" : "+r"(stateAddress));
    offset = 0xe0;
    offset <<= 1;
    asm volatile("" : "+r"(stateAddress), "+r"(offset));
    stateAddress += offset;
    offset = 0;
    asm volatile("" : "+r"(stateAddress), "+r"(offset));
    state = *(short *)(stateAddress + offset);
    stateAddress = (unsigned int)State_8b;
    asm volatile("" : "+r"(stateAddress), "+r"(state));

    if (state == stateAddress)
        return Script_4b3c;
    if (__GetFlag(0x950) != 0)
        return Script_4e6c;
    if (__GetFlag(0x962) != 0)
        return Script_4d64;
    return Script_4b84;
}
