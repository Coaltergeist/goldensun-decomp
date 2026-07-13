extern unsigned char gState[];

int Func_80a65e4(unsigned int group, unsigned int value, int second_slot)
{
    register unsigned int mask __asm__("r3") = 0x3fff;
    register unsigned char *state __asm__("r3");
    register int offset __asm__("r2");

    __asm__ volatile ("" : "+r" (mask));
    group <<= 10;
    mask &= value;
    group |= mask;

    if (second_slot == 0) {
        state = gState;
        offset = 0x88;
        __asm__ volatile ("" : "+r" (state), "+r" (offset));
        offset <<= 2;
    } else {
        state = gState;
        offset = 0x222;
        __asm__ volatile ("" : "+r" (state), "+r" (offset));
    }

    state += offset;
    __asm__ volatile ("" : "+r" (state));
    *(unsigned short *)state = group;

    return 1;
}
