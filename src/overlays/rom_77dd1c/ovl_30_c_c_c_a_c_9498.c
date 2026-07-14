extern void __Func_8010704(int, int, int, int, int, int);
extern void Func_8010704_NoArgs(void) asm("__Func_8010704");

void OvlFunc_882_2009498(void)
{
    register int fifth asm("r5");
    register int sixth asm("r6");
    register int saved_47 asm("r8");

    asm volatile(
        "mov r3, #71\n\t"
        "str r3, [sp, #4]\n\t"
        "mov %0, #26\n\t"
        "mov %2, r3\n\t"
        "mov r0, #29\n\t"
        "mov r1, #20\n\t"
        "mov r2, #1\n\t"
        "mov r3, #1\n\t"
        "str %0, [sp]"
        : "=r"(fifth), "=r"(sixth), "=r"(saved_47)
        :
        : "r0", "r1", "r2", "r3", "memory");
    Func_8010704_NoArgs();
    asm volatile("mov %0, #70" : "=r"(sixth) : : "memory");
    __Func_8010704(0x1d, 0x14, 1, 1, fifth, sixth);
    asm volatile("mov %0, #27" : "=r"(fifth) : : "memory");
    __Func_8010704(0x1d, 0x14, 1, 1, fifth, sixth);
    __Func_8010704(0x1c, 0x15, 1, 1, 0x1c, saved_47);
    __Func_8010704(0x1c, 0x16, 1, 1, fifth, 0x48);
}
