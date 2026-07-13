void Func_801ce48(unsigned char *state)
{
    unsigned short *timer = (unsigned short *)(state + 0x574);
    register int current asm("r2") = *timer;
    register int next asm("r3") = current;

    /* Preserve the original explicit zero/nonzero branch. */
    asm volatile("" : "+r"(current), "+r"(next));
    if (next == 0) {
        next = 2;
        asm volatile("" : "+r"(next));
    } else {
        register int decrement asm("r1") = 0xffff;

        next = current + decrement;
    }
    *timer = next;
}
