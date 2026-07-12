typedef unsigned int (*FillVram)(unsigned int address, unsigned int size,
                                 unsigned int value);

extern unsigned int Func_80008d8(void);

unsigned int Func_801671c(void)
{
    register unsigned int address asm("r0");
    register unsigned int size asm("r1") = 0xf0;
    register unsigned int value asm("r2");
    register FillVram fill asm("r3");

    fill = (FillVram)Func_80008d8;
    size <<= 4;
    value = 0;
    address = 0x06002500;
    /* Keep the original argument materialization order. */
    asm volatile("" : "+r"(address), "+r"(size), "+r"(value), "+r"(fill));
    return fill(address, size, value);
}

unsigned int Func_8016738(void)
{
    register unsigned int address asm("r0");
    register unsigned int size asm("r1") = 0xf0;
    register unsigned int value asm("r2");
    register FillVram fill asm("r3");

    fill = (FillVram)Func_80008d8;
    size <<= 4;
    value = 0x44444444;
    address = 0x06002500;
    /* Keep the original argument materialization order. */
    asm volatile("" : "+r"(address), "+r"(size), "+r"(value), "+r"(fill));
    return fill(address, size, value);
}
