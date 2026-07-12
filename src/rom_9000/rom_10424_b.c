typedef struct BlendState {
    unsigned char padding00[0x14];
    unsigned short control;
} BlendState;

extern BlendState *iwram_3001e70;

void Func_80108c4(unsigned int value)
{
    register unsigned int address asm("r3") = (unsigned int)&iwram_3001e70;
    register BlendState *state asm("r4");
    register unsigned int newMask asm("r2");
    register unsigned int current asm("r1");

    /* Preserve the original pointer and mask load order. */
    asm volatile("" : "+r"(address));
    state = *(BlendState **)address;
    newMask = 0xe0;
    asm volatile("" : "+r"(state), "+r"(newMask));
    current = state->control;
    address = 0xf1ff;
    asm volatile("" : "+r"(address), "+r"(current));
    newMask <<= 4;
    newMask &= value;
    address &= current;
    address |= newMask;
    state->control = address;
}
