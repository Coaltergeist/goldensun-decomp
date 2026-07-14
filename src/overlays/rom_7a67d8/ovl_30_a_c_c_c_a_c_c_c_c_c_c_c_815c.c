extern unsigned int iwram_3001ecc;

void OvlFunc_919_200815c(void)
{
    register volatile unsigned short *reg asm("r2");
    register unsigned int value asm("r3");
    register unsigned int off asm("r1");
    unsigned int base;

    __Func_808fe38(9);

    reg = (volatile unsigned short *)0x4000050;
    *reg = 0x3f42;
    reg++;
    *reg = 0xc04;

    base = iwram_3001ecc;

    off = base + 0x534;
    value = 0x3f3f;
    asm volatile("" : "+r"(off), "+r"(value));
    *(unsigned short *)off = value;

    off = base + 0x536;
    value = 0x1f;
    asm volatile("" : "+r"(off), "+r"(value));
    *(unsigned short *)off = value;

    reg = (volatile unsigned short *)(base + 0x52a);
    value = 0xa;
    asm volatile("" : "+r"(reg), "+r"(value));
    *reg = value;
}
