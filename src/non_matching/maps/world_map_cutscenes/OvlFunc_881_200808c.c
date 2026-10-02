void OvlFunc_881_200808c(void)
{
    extern unsigned char iwram_3001ebc[];
    extern unsigned char gStateBytes[] __asm__("gState");
    extern int _divsi3_RAM(int, int);
    extern void __Func_8091f14(int, int);
    unsigned char *base;
    int *limit;

    base = *(unsigned char **)iwram_3001ebc;
    limit = (int *)(gStateBytes + 0x238);
    if (*limit >= _divsi3_RAM(*(int *)(base + 0x1ac) * 9, 10)) {
        __Func_8091f14(0x809, 0x2a);
        *(int *)(base + 0x1a8) = 0;
    }
}
