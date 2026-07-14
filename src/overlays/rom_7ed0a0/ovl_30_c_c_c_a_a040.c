extern void __Func_8010704(int, int, int, int, int, int);
extern void Func_8010704_NoArgs(void) asm("__Func_8010704");
extern void __Func_808edac(void);
extern void __MapActor_SetPos(int, int, int);

void OvlFunc_964_200a040(void)
{
    register int saved asm("r5") = 0x31;
    __Func_8010704(8, 0x71, 1, 1, 8, saved);
    __asm__ volatile (
        "mov r3, #0x2b\n\tstr r3, [sp, #4]\n\t"
        "mov r0, #0x31\n\tmov r3, #1\n\t"
        "mov r1, #0x6b\n\tmov r2, #1\n\tstr r5, [sp]"
        : : "r" (saved) : "r0", "r1", "r2", "r3", "memory");
    Func_8010704_NoArgs();
    __asm__ volatile ("" : "+r" (saved));
    __asm__ volatile ("mov r1, #1\n\tmov r2, #1\n\tmov r0, #0x64\n\tneg r1, r1\n\tneg r2, r2"
                      : : : "r0", "r1", "r2");
    __Func_808edac();
    __asm__ volatile ("mov r1, #1\n\tmov r2, #1\n\tmov r0, #0x65\n\tneg r1, r1\n\tneg r2, r2"
                      : : : "r0", "r1", "r2");
    __Func_808edac();
    __MapActor_SetPos(0xf, 0, 0);
    __MapActor_SetPos(0x10, 0, 0);
}
