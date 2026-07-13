extern int __GetFlag(int flag);
extern unsigned char gState[];
extern unsigned char Two[];
asm(".set Two, 2");

int OvlFunc_880_2008384(void)
{
    register int result asm("r0");

    if (!__GetFlag(0x144))
        return 0;
    {
        register int offset asm("r1") = 0x23e;
        register unsigned char *state asm("r2") = gState;
        register unsigned char *position asm("r3");
        register int zero asm("r1");
        register int value asm("r3");

        asm volatile("" : "+r" (offset), "+r" (state));
        position = state + offset;
        zero = 0;
        asm volatile("" : "+r" (position), "+r" (zero));
        value = *(short *)(position + zero);
        result = 0;
        asm volatile("" : "+r" (value), "+r" (result));
        if (value != 2) {
            register int second_offset asm("r1") = 0xe0;
            register int load_zero asm("r2");
            register int two asm("r2");

            second_offset <<= 1;
            position = state + second_offset;
            load_zero = 0;
            asm volatile("" : "+r" (position), "+r" (load_zero));
            value = *(short *)(position + load_zero);
            two = (int)Two;
            asm volatile("" : "+r" (value), "+r" (two));
            value ^= two;
            result = -value;
            result |= value;
            result = (unsigned int)result >> 31;
            result = -result;
        }
    }
    return result;
}
