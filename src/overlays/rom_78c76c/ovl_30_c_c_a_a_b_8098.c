extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __PlaySound(int);
extern void __CutsceneWait(int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __SetFlag(int);
extern void OvlFunc_891_20096dc(void);

void OvlFunc_891_2008098(void)
{
    register int i asm("r5");
    register int stack4 asm("r3");
    register int stack5 asm("r2");
    register int repeat4 asm("r7");
    register int repeat5 asm("r6");

    asm volatile(
        "mov r3, #2\n\t"
        "mov r2, #1\n\t"
        "str r3, [sp, #0]\n\t"
        "str r2, [sp, #4]\n\t"
        "mov r0, #0\n\t"
        "mov r1, #28\n\t"
        "mov r2, #17\n\t"
        "mov r3, #8\n\t"
        "bl __CopyMapTiles"
        :
        :
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
    __PlaySound(0xc8);
    i = 0;
    repeat4 = 2;
    repeat5 = 1;
    asm volatile("" : "+r"(i), "+r"(repeat4), "+r"(repeat5));
    do {
        __CopyMapTiles(0x0a, 0x3d, 0x11, 0x28, repeat4, repeat5);
        __CutsceneWait(4);
        asm volatile(
            "mov r0, #8\n\t"
            "mov r1, #61\n\t"
            "mov r2, #17\n\t"
            "mov r3, #40\n\t"
            "str r7, [sp, #0]\n\t"
            "str r6, [sp, #4]\n\t"
            "add r5, #1\n\t"
            "bl __CopyMapTiles"
            : "+r"(i)
            : "r"(repeat4), "r"(repeat5)
            : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
        __CutsceneWait(4);
    } while (i != 0x16);

    i = 4;
    repeat5 = 3;
    asm volatile("" : "+r"(i), "+r"(repeat5));
    __CopyMapTiles(0, 0x3b, 0x0f, 0x26, i, repeat5);
    __CopyMapTiles(4, 0x3b, 0x11, 0x26, i, repeat5);
    __CopyMapTiles(8, 0x3c, 0x11, 0x27, 2, 2);
    stack4 = 0x11;
    stack5 = 8;
    asm volatile("" : "+r"(stack4), "+r"(stack5));
    __Func_8010704(0, 0, 2, 1, stack4, stack5);
    __SetFlag(0x207);
    OvlFunc_891_20096dc();
}
