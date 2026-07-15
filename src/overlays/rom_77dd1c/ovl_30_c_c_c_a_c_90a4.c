extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_8010704_4(int, int, int, int) asm("__Func_8010704");

void OvlFunc_882_20090a4(void)
{
    register int value15 asm("r10");
    register int value13 asm("r8");
    register int value14 asm("r6");
    register int value53 asm("r5");

    asm volatile(
        "mov r2, #15\n\t"
        "str r2, [sp, #0]\n\t"
        "mov r10, r2\n\t"
        "mov r5, #53\n\t"
        "mov r0, #29\n\t"
        "mov r1, #23\n\t"
        "mov r2, #1\n\t"
        "mov r3, #1\n\t"
        "str r5, [sp, #4]\n\t"
        "bl __Func_8010704"
        : "=r"(value15), "=r"(value53)
        :
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    value14 = 0x0e;
    asm volatile("" : "+r"(value14));
    __Func_8010704(0x1d, 0x17, 1, 1, value14, value53);

    asm volatile(
        "mov r3, #13\n\t"
        "str r3, [sp, #0]\n\t"
        "mov r8, r3\n\t"
        "mov r0, #29\n\t"
        "mov r1, #23\n\t"
        "mov r2, #1\n\t"
        "mov r3, #1\n\t"
        "str r5, [sp, #4]\n\t"
        "bl __Func_8010704"
        : "=r"(value13)
        : "r"(value53)
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
    __Func_8010704(0x1a, 0x14, 2, 1, value14, 0x34);

    asm volatile(
        "mov r2, r8\n\t"
        "str r2, [sp, #0]\n\t"
        "mov r5, #54\n\t"
        "mov r0, #25\n\t"
        "mov r1, #21\n\t"
        "mov r2, #1\n\t"
        "mov r3, #1\n\t"
        "str r5, [sp, #4]\n\t"
        "bl __Func_8010704"
        : "=r"(value53)
        : "r"(value13)
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    __Func_8010704(0x19, 0x15, 1, 1, value15, value53);
    __Func_8010704(0x0e, 0x35, 1, 1, value14, value53);

    asm volatile(
        "mov r2, r10\n\t"
        "mov r3, #55\n\t"
        "str r2, [sp, #0]\n\t"
        "str r3, [sp, #4]"
        :
        : "r"(value15)
        : "r2", "r3", "memory");
    __Func_8010704_4(0x0d, 0x37, 1, 1);
}
