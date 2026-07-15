typedef unsigned short u16;

extern unsigned char *iwram_3001e74;
extern int _Func_80b6c08(int, int);
extern void Func_8022768(int, int, int, int, int);

int Func_802281c(u16 *values)
{
    register u16 *input asm("r5");
    register unsigned char *state asm("r7");
    register int selected asm("r8");
    register int outer asm("r6");
    register int offset asm("r0");
    register unsigned char **stateGlobal asm("r3") = &iwram_3001e74;

    asm volatile(
        "mov r5, r0\n\tmov r1, #0\n\tmov r0, #1\n\tsub sp, #4\n\t"
        "ldr r7, [r3]\n\tbl _Func_80b6c08\n\tmov r8, r0\n\t"
        "lsl r3, r0, #1\n\tadd r3, r8\n\tlsl r3, #1\n\t"
        "mov r0, #0x1d\n\tsub r0, r3\n\tmov r3, #0xf\n\t"
        "str r3, [sp]\n\tmov r1, #0\n\tmov r3, #5\n\t"
        "mov r2, #0x19\n\tbl Func_8022768"
        : "=r"(input), "=r"(state), "=r"(selected), "+r"(stateGlobal)
        : : "r0", "r1", "r2", "lr", "memory");

    outer = 0;
    if (input[0] == 0xff)
        goto done;
    offset = 0;
outer_loop:
    {
        register int inner asm("r1");
        asm volatile(
            "mov r3, #0x58\n\tldrsh r2, [r7, r3]\n\t"
            "ldrh r3, [r0, r5]\n\tmov r1, #0\n\tb 2f\n"
            "1:\n\tadd r1, #1\n\tcmp r1, #3\n\tbgt 3f\n\t"
            "lsl r3, r1, #1\n\tadd r3, #0x58\n\tldrsh r2, [r7, r3]\n\t"
            "ldrh r3, [r0, r5]\n2:\n\tcmp r2, r3\n\tbeq 3f\n\t"
            "cmp r2, #0xff\n\tbne 1b\n\tmov r1, #4\n3:"
            : "=r"(inner) : "r"(offset), "r"(input), "r"(state)
            : "r2", "r3");
        if (inner != 4) {
            asm volatile(
                "mov r3, r8\n\tsub r2, r3, r1\n\tlsl r3, r2, #1\n\t"
                "add r3, r2\n\tlsl r3, #1\n\tmov r0, #0x1d\n\t"
                "sub r0, r3\n\tmov r3, #0xe\n\tstr r3, [sp]\n\t"
                "mov r1, #0\n\tmov r2, #7\n\tmov r3, #5\n\t"
                "bl Func_8022768"
                : : "r"(selected), "r"(inner)
                : "r0", "r1", "r2", "r3", "lr", "memory");
        }
    }
    outer++;
    if (outer > 3)
        goto done;
    {
        register int scaled asm("r3");
        register int nextValue asm("r3");
        asm volatile("lsl r3, r6, #1\n\tmov r0, r3\n\tldrh r3, [r0, r5]"
                     : "=r"(offset), "=r"(scaled), "=r"(nextValue)
                     : "r"(outer), "r"(input));
        if (nextValue != 0xff)
            goto outer_loop;
    }
done:
    {
        register int result asm("r0");
        asm volatile("mov r0, #0\n\tadd sp, #4" : "=r"(result));
        return result;
    }
}
