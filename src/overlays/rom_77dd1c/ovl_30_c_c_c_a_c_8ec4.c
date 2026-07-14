extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_882_2008ec4(void)
{
    register int column_21 asm("r6") = 0x15;
    register int row_58 asm("r5");

    __Func_8010704(0x1d, 0x40, 1, 1, column_21, 0x39);
    __asm__ volatile ("mov r5, #0x3a" : "=r" (row_58));
    __Func_8010704(0x1d, 0x40, 1, 1, column_21, row_58);
    __Func_8010704(0x1d, 0x40, 1, 1, 0x16, row_58);
    column_21 = 0x14;
    __Func_8010704(0x1d, 0x40, 1, 1, column_21, row_58);
    __Func_8010704(0x1c, 0x14, 1, 1, column_21, 0x39);
}
