extern void __PlaySound(int sound);
extern void __Func_8012330(int x, int y, int duration);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __WaitFrames(int frames);

void OvlFunc_948_2008fdc(unsigned int flags)
{
    if ((flags & 0x100) != 0) {
        __PlaySound(0x9d);
        asm volatile(
            "mov r0, #0x80\n\t"
            "mov r1, #0x80\n\t"
            "mov r2, #0x80\n\t"
            "lsl r0, #10\n\t"
            "lsl r1, #10\n\t"
            "lsl r2, #9\n\t"
            "bl __Func_8012330"
            : : : "r0", "r1", "r2", "r3", "cc", "memory");
        asm volatile(
            "mov r0, #1\n\t"
            "mov r1, #1\n\t"
            "neg r0, r0\n\t"
            "neg r1, r1\n\t"
            "ldr r2, =0xe666\n\t"
            "bl __Func_8012330"
            : : : "r0", "r1", "r2", "r3", "cc", "memory");
        asm volatile(
            "mov r3, #0x46\n\t"
            "mov r2, #0x31\n\t"
            "str r3, [sp]\n\t"
            "str r2, [sp, #4]\n\t"
            "mov r0, #0x54\n\t"
            "mov r1, #0x1d\n\t"
            "mov r2, #1\n\t"
            "mov r3, #3\n\t"
            "bl __Func_80105d4"
            : : : "r0", "r1", "r2", "r3", "cc", "memory");
        __WaitFrames(0x3c);
    }

    asm volatile(
        "mov r3, #0x46\n\t"
        "mov r2, #0x31\n\t"
        "str r3, [sp]\n\t"
        "str r2, [sp, #4]\n\t"
        "mov r0, #0x55\n\t"
        "mov r1, #0x1d\n\t"
        "mov r2, #1\n\t"
        "mov r3, #3\n\t"
        "bl __Func_80105d4"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    __Func_8010704(6, 0x31, 1, 1, 6, 0x32);
    __Func_8010704(6, 0x31, 1, 1, 6, 0x33);
}
