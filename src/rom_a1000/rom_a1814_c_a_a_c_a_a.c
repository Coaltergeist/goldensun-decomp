extern unsigned char iwram_3001f2c[];
extern void Func_80a1c2c(unsigned char **slot, int index, int x, int y, int columns);

void Func_80a1bdc(int x, int y, int columns) {
    register int xReg asm("r9");
    register int yReg asm("r10");
    register int columnsReg asm("r8");
    register unsigned char **slot asm("r5");
    register int index asm("r6");
    register unsigned char **scan asm("r7");
    register unsigned char *temp asm("r3");

    temp = *(unsigned char **)iwram_3001f2c;
    asm("" : "+r"(temp));
    slot = (unsigned char **)temp;
    slot += 0x48 / sizeof(*slot);
    xReg = x;
    yReg = y;
    columnsReg = columns;
    index = 0;
    scan = slot;
    do {
        if (*scan++ != 0)
            Func_80a1c2c(slot, index, xReg, yReg, columnsReg);
        index++;
        slot++;
    } while (index <= 0x1f);
}
