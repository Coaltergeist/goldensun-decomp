extern int positions[] asm(".L773c");
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void Func_80105d4_NoArgs(void) asm("__Func_80105d4");
extern void Func_8010704_NoArgs(void) asm("__Func_8010704");

void OvlFunc_959_2008d54(int index)
{
    register int saved_index asm("r8");
    register int x asm("r7");
    register int y asm("r6");
    register int adjusted_y asm("r5");

    asm volatile(
        "ldr r2, =.L773c\n	"
        "lsl r3, r0, #3\n	"
        "ldr r7, [r2, r3]\n	"
        "add r3, #4\n	"
        "ldr r6, [r2, r3]\n	"
        "sub sp, #8\n	"
        "mov r8, r0\n	"
        "mov r1, #0x4d\n	"
        "mov r0, #0\n	"
        "mov r2, #1\n	"
        "mov r3, #3\n	"
        "str r7, [sp]\n	"
        "str r6, [sp, #4]"
        : "=r"(y), "=r"(saved_index), "=r"(x)
        :
        : "r0", "r1", "r2", "r3", "memory", "cc");
    Func_80105d4_NoArgs();
    asm volatile(
        "add r3, r7, #1\n	"
        "str r3, [sp]\n	"
        "mov r0, #1\n	"
        "mov r1, #0x4d\n	"
        "mov r2, #1\n	"
        "mov r3, #1\n	"
        "str r6, [sp, #4]"
        : : : "r0", "r1", "r2", "r3", "memory", "cc");
    Func_80105d4_NoArgs();
    asm volatile(
        "mov r5, r6\n\t"
        "mov r1, r6\n\t"
        "sub r1, #0x2d\n\t"
        "sub r5, #0x2c\n\t"
        "mov r0, r7\n\t"
        "mov r2, #1\n\t"
        "mov r3, #1\n\t"
        "str r7, [sp]\n\t"
        "str r5, [sp, #4]"
        : "=r"(adjusted_y)
        :
        : "r0", "r1", "r2", "r3", "memory");
    Func_8010704_NoArgs();
    asm volatile(
        "mov r1, r8\n\t"
        "cmp r1, #1\n\t"
        "bne 1f"
        :
        :
        : "r1", "cc");
    {
        asm volatile(
            "mov r3, r6\n	"
            "sub r3, #0x2b\n	"
            "str r3, [sp, #4]\n	"
            "mov r0, r7\n	"
            "mov r1, r5\n	"
            "mov r2, #1\n	"
            "mov r3, #1\n	"
            "str r7, [sp]"
            : : : "r0", "r1", "r2", "r3", "memory", "cc");
        Func_8010704_NoArgs();
    }
    asm volatile("1:\nadd sp, #8" : : : "memory");
}
