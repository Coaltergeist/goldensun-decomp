extern unsigned char *iwram_3001ebc[];
extern void __Func_808fe38(int mode);
extern void OvlFunc_919_20082e0(void);

unsigned int OvlFunc_919_2008200(void)
{
    register volatile unsigned short *reg asm("r2");
    register unsigned int value asm("r3");
    register unsigned int base asm("r2");
    register unsigned int off asm("r1");

    *(unsigned int *)(iwram_3001ebc[0] + 0x1c0) = 0x100;

    __Func_808fe38(9);

    reg = (volatile unsigned short *)0x4000050;
    *reg = 0x3f42;
    reg++;
    *reg = 0xc04;

    base = (unsigned int)iwram_3001ebc[4];

    off = base + 0x534;
    value = 0x3f3f;
    asm volatile("" : "+r"(value));
    *(unsigned short *)off = value;

    off = base + 0x536;
    value = 0x1f;
    asm volatile("" : "+r"(value));
    *(unsigned short *)off = value;

    base = base + 0x52a;
    value = 0xa;
    asm volatile("" : "+r"(value));
    *(unsigned short *)base = value;

    OvlFunc_919_20082e0();
    return 0;
}
