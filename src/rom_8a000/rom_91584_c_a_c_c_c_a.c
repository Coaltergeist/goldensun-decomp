extern unsigned char gState[];
extern int Func_8091814(unsigned int value);

void Func_8091858(void)
{
    register unsigned char *state __asm__("r6") = gState;
    register int offset __asm__("r3") = 0x88;
    register unsigned short *value __asm__("r5");

    __asm__ volatile ("" : "+r" (state), "+r" (offset));
    offset <<= 2;
    value = (unsigned short *)(state + offset);
    __asm__ volatile ("" : "+r" (value));
    if (Func_8091814(*value) != 0) {
        register int zero __asm__("r3") = 0;

        __asm__ volatile ("" : "+r" (zero));
        *value = zero;
    }

    offset = 0x222;
    __asm__ volatile ("" : "+r" (offset));
    value = (unsigned short *)(state + offset);
    __asm__ volatile ("" : "+r" (value));
    if (Func_8091814(*value) != 0) {
        register int zero __asm__("r3") = 0;

        __asm__ volatile ("" : "+r" (zero));
        *value = zero;
    }
}
