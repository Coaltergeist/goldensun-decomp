void OvlFunc_881_20080d4(void)
{
    extern unsigned char iwram_3001ebc[];
    extern unsigned char gStateBytes[] __asm__("gState");
    extern void __Func_8091f14(int, int);
    unsigned char *base;
    int *limit;

    base = *(unsigned char **)iwram_3001ebc;
    limit = (int *)(gStateBytes + 0x238);
    if (*limit >= *(int *)(base + 0x1ac) * 9 / 10) {
        __Func_8091f14(0x80a, 0x18);
        *(int *)(base + 0x1a8) = 0;
    }
}
