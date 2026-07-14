extern unsigned char iwram_3001f2c[];
extern void Func_a1c6c(unsigned char **pp, int idx, int arg2, int arg3, int arg4);

void Func_80a1cb0(int mode)
{
    register int arg3Reg asm("r8");
    register int countReg asm("r10");
    register unsigned char **slot asm("r5");
    register int index asm("r6");
    register unsigned char **scan asm("r7");
    register unsigned char *temp asm("r3");

    temp = *(unsigned char **)iwram_3001f2c;
    arg3Reg = 0x38;
    if (mode != 1) {
        arg3Reg = 0x28;
    }
    slot = (unsigned char **)temp;
    slot += 0x48 / sizeof(*slot);
    index = 0;
    scan = slot;
    countReg = 5;
    do {
        if (*scan++ != 0)
            Func_a1c6c(slot, index, 0x74, arg3Reg, countReg);
        index++;
        slot++;
    } while (index <= 0xe);
}
