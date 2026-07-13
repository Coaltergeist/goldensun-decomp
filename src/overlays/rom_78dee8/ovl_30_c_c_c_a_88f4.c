extern unsigned char gState[];
extern void OvlFunc_895_200892c(void);
extern void OvlFunc_895_2008a24(void);

unsigned int OvlFunc_895_20088f4(void)
{
    register unsigned char *state_ptr asm("r3");
    register unsigned int offset asm("r1");
    register int state asm("r2");
    register unsigned int zero asm("r1");
    register int expected asm("r3");

    state_ptr = gState;
    asm volatile("" : "+r" (state_ptr) : : "memory");
    offset = 0xe0;
    asm("" : "+r" (offset));
    offset <<= 1;
    state_ptr += offset;
    zero = 0;
    asm("" : "+r" (zero));
    state = *(short *)(state_ptr + zero);
    asm("" : "+r" (state));
    asm volatile("ldr %0, =0x13" : "=r" (expected));
    if (state == expected) {
        OvlFunc_895_200892c();
    } else {
        asm volatile("ldr %0, =0x10" : "=r" (expected));
        if (state == expected)
            OvlFunc_895_2008a24();
    }
    return 0;
}
