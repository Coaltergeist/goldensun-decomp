extern unsigned char iwram_3001f2c[];
extern unsigned char *_GetMoveInfo(unsigned int move);
extern int _Func_808e96c(unsigned int value);

int Func_80a5fe0(void)
{
    unsigned char *move;
    register int difference asm("r3");
    register int two asm("r2");
    register unsigned int result asm("r0");

    move = _GetMoveInfo(*(unsigned short *)(*(unsigned char **)iwram_3001f2c +
                                             0x178) & 0x3fff);
    if (_Func_808e96c(move[0xc]) != 0)
        return 0;
    if (move[8] == 0xff)
        return 2;
    difference = move[0];
    two = 2;
    difference ^= two;
    result = -difference;
    result |= difference;
    result >>= 31;
    difference = 1;
    result = difference - result;
    return result;
}
