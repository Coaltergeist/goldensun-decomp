extern void __PlaySound(int sound);
extern void __Func_8012330(int x, int y, int duration);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __WaitFrames(int frames);

void OvlFunc_948_2008f40(unsigned int flags)
{
    int a = (flags & 0xff) * 4 + 0x4d;
    int b = (flags & 0xff) * 4 + 0xd;

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
        __Func_80105d4(0x4f, 0x1d, 1, 3, a, 0x28);
        __WaitFrames(0x28);
    }

    __Func_80105d4(0x50, 0x1d, 1, 3, a, 0x28);
    __Func_8010704(b, 0x28, 1, 1, b, 0x29);
    __Func_8010704(b, 0x28, 1, 1, b, 0x2a);
}
