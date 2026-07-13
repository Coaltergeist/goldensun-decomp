extern unsigned int iwram_3001edc;
extern unsigned char gState[];
extern unsigned int __Random(void);
extern void OvlFunc_924_200d158(unsigned int value);

void OvlFunc_924_200d900(void)
{
    register unsigned int offset asm("r1") = 0xfa;
    register unsigned char *stateAddress asm("r3");
    unsigned int object;
    unsigned int state;
    register unsigned int argumentOffset asm("r3");
    unsigned int argument;
    unsigned int timer;

    object = *(unsigned int *)*(unsigned int *)&iwram_3001edc;
    state = *(unsigned int *)((unsigned char *)&iwram_3001edc - 0x20);
    stateAddress = gState;
    asm volatile("" : "+r"(offset), "+r"(stateAddress));
    offset <<= 1;
    stateAddress += offset;
    asm volatile("" : "+r"(stateAddress));
    argumentOffset = *(unsigned int *)stateAddress;
    argumentOffset <<= 2;
    argumentOffset += 0x14;
    asm volatile("" : "+r"(argumentOffset));
    argument = *(unsigned int *)(state + argumentOffset);
    timer = *(unsigned int *)(object + 8);

    if (timer != 0) {
        timer--;
    } else {
        OvlFunc_924_200d158(argument);
        timer = ((__Random() * 30) >> 16) + 10;
    }
    *(unsigned int *)(object + 8) = timer;
}
