extern unsigned char *GetUnit(int unit);

int HasMove(int unit, int move)
{
    /* Register bindings preserve the original four-instruction scan loop. */
    register unsigned short *moves asm("r0");
    register unsigned int mask asm("r1");
    register int i asm("r2");
    register unsigned int value asm("r3");

    moves = (unsigned short *)GetUnit(unit);
    mask = 0x3fff;
    i = 0;
    moves = (unsigned short *)((unsigned char *)moves + 0x58);
    do {
        value = *moves;
        value &= mask;
        moves += 2;
        if (value == move)
            return 1;
        i++;
    } while (i <= 0x1f);
    return 0;
}
