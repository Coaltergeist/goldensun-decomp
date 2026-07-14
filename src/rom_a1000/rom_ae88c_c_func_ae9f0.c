extern unsigned char iwram_3001f2c[];
extern int _Func_801eadc(int slot, unsigned int flags, unsigned int x,
                         unsigned int y, unsigned int arg4);

int Func_80ae9f0(unsigned int x, unsigned int y, int arg3, int selector)
{
    register int savedSelector asm("r5");
    unsigned char *base;
    register unsigned int savedX asm("r4");
    register unsigned int savedY asm("r6");
    register int savedArg3 asm("r2");
    int slot;
    int result;

    unsigned char **table;

    asm("mov %0, %1" : "=r"(savedSelector) : "r"(selector));
    table = (unsigned char **)iwram_3001f2c;
    savedX = x;
    savedY = y;
    savedArg3 = arg3;
    base = *table;
    if (savedSelector == 0) {
        slot = *(unsigned short *)(base + 0x392);
        savedArg3 -= 3;
    } else {
        slot = *(unsigned short *)(base + 0xe5 * 4);
        savedArg3 -= 4;
    }
    result = _Func_801eadc(slot, 0x40000000, savedX, savedY, savedArg3);
    if (result == 0) {
        return -1;
    }
    {
        int zero = 0;
        *(unsigned char *)(result + 4) = zero;
        *(unsigned short *)(result + 0xc) = zero;
    }
    *(unsigned char *)(result + 5) = 1;
    return 1;
}
