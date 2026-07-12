extern unsigned int _Func_8022768(unsigned int, unsigned int, unsigned int,
                                  unsigned int, unsigned int);

unsigned int Func_80ab1f4(unsigned int arg0, unsigned int arg1,
                          unsigned int arg2, unsigned int arg3,
                          unsigned int arg4, unsigned int arg5)
{
    register unsigned int r4 asm("r4") = arg0;
    register unsigned int call0 asm("r0");
    register unsigned int call1 asm("r1");
    register unsigned int call2 asm("r2") = arg2;
    register unsigned int call3 asm("r3") = arg3;

    call0 = *(unsigned short *)((char *)r4 + 0xc);
    asm volatile(
        "add %0, %0, %1\n"
        "ldrh %1, [%4, #14]\n"
        "sub sp, #4\n"
        "ldr r5, [sp, #20]\n"
        "mov r6, %3\n"
        "add %1, %1, %2\n"
        "add %0, #1\n"
        "ldr %3, [sp, #16]\n"
        "add %1, #1\n"
        "mov %2, r6\n"
        "str r5, [sp]\n"
        "bl _Func_8022768\n"
        "add sp, #4"
        : "+r"(call0), "+r"(call1), "+r"(call2), "+r"(call3)
        : "r"(r4)
        : "r5", "r6", "lr", "memory", "cc");
    return call0;
}
