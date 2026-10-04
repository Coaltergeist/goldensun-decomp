void OvlFunc_881_20080d4(void)
{
    extern unsigned char iwram_3001ebc[];
    extern unsigned char gStateBytes[] __asm__("gState");
    extern int _divsi3_RAM(int, int);
    extern void __Func_8091f14(int, int);
    unsigned char *base;
    int *limit;
    int offset;

    base = *(unsigned char **)iwram_3001ebc;
    offset = 0x8e << 2;
    limit = (int *)(gStateBytes + offset);
    offset -= 0x8c;
    if (*limit >= _divsi3_RAM(*(int *)(base + offset) * 9, 10)) {
        __Func_8091f14(0x80a, 0x18);
        *(int *)(base + 0x1a8) = 0;
    }
}
