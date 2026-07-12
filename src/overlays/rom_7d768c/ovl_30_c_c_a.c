extern unsigned char gState[];
extern unsigned char State_8b[] __asm__("0x8b");
extern unsigned char Script_5ad8[] __asm__(".data+0x1588");
extern unsigned char Script_5a48[] __asm__(".data+0x14f8");
extern unsigned char Script_59e8[] __asm__(".data+0x1498");
extern unsigned char Script_5688[] __asm__(".data+0x1138");
extern unsigned char Script_5394[] __asm__(".data+0xe44");
extern unsigned char Script_5004[] __asm__(".data+0xab4");
extern int __GetFlag(int flag);

unsigned char *OvlFunc_952_200c034(void)
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

    if (state == stateAddress) {
        if (__GetFlag(0x950) != 0)
            return Script_5ad8;
        if (__GetFlag(0x962) != 0)
            return Script_5a48;
        return Script_59e8;
    }
    if (__GetFlag(0x950) != 0)
        return Script_5688;
    if (__GetFlag(0x962) != 0)
        return Script_5394;
    return Script_5004;
}
