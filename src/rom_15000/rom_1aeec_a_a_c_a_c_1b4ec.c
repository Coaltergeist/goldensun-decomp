extern void Func_801b9a8(void *state);
extern void Func_801b9ec(void *state, int value);
extern void Func_801ba68(void *state, int arg);
extern void Func_801b010(int id, int arg);
extern void WaitFrames(int count);

void Func_801b4ec(void *arg0)
{
    register void *counter2 asm("r7");
    register void *counter1 asm("r6");
    register void *state asm("r5");
    register void *limit asm("r8");
    register int target asm("r10");

    asm volatile(
        "mov\tr5, r0\n\t"
        "ldr\tr1, 11f\n\t"
        "mov\tr0, #0xe7\n\t"
        "lsl\tr0, #2\n\t"
        "add\tr7, r5, r0\n\t"
        "add\tr6, r5, r1\n\t"
        "ldrh\tr3, [r7]\n\t"
        "ldrh\tr1, [r6]\n\t"
        "mov\tr2, #0xe5\n\t"
        "add\tr3, r1\n\t"
        "lsl\tr2, #2\n\t"
        "add\tr3, #1\n\t"
        "add\tr2, r5\n\t"
        "mov\tr10, r3\n\t"
        "ldrh\tr3, [r2]\n\t"
        "mov\tr8, r2\n\t"
        "cmp\tr10, r3\n\t"
        "beq\t1f\n\t"
        "mov\tr0, r5\n\t"
        "bl\tFunc_801b9a8\n\t"
        "ldr\tr3, 12f\n\t"
        "add\tr2, r5, r3\n\t"
        "mov\tr3, #0x21\n\t"
        "strh\tr3, [r2]\n\t"
        "mov\tr0, #1\n\t"
        "bl\tWaitFrames\n\t"
        "ldrh\tr1, [r6]\n\t"
        "mov\tr0, #0x80\n\t"
        "add\tr3, r1, #1\n\t"
        "strh\tr3, [r6]\n\t"
        "lsl\tr0, #11\n\t"
        "lsl\tr3, #16\n\t"
        "cmp\tr3, r0\n\t"
        "bne\t2f\n\t"
        "mov\tr0, r8\n\t"
        "mov\tr2, r10\n\t"
        "ldrh\tr3, [r0]\n\t"
        "add\tr2, #1\n\t"
        "cmp\tr2, r3\n\t"
        "bcs\t2f\n\t"
        "mov\tr2, #0x80\n\t"
        "lsl\tr2, #9\n\t"
        "add\tr3, r1, r2\n\t"
        "strh\tr3, [r6]\n\t"
        "mov\tr3, #8\n\t"
        "strh\tr3, [r5, #0x3c]\n\t"
        "ldrh\tr3, [r7]\n\t"
        "add\tr3, #1\n\t"
        "strh\tr3, [r7]\n\t"
        "mov\tr0, r5\n\t"
        "mov\tr1, #1\n\t"
        "bl\tFunc_801ba68\n\t"
        "ldrh\tr2, [r6]\n\t"
        "ldrh\tr3, [r7]\n\t"
        "mov\tr0, r8\n\t"
        "add\tr3, r2\n\t"
        "ldrh\tr2, [r0]\n\t"
        "add\tr3, #2\n\t"
        "cmp\tr3, r2\n\t"
        "bne\t3f\n\t"
        "mov\tr3, #0\n\t"
        "strh\tr3, [r5, #0x3e]\n\t"
        "3:\n\t"
        "mov\tr3, #1\n\t"
        "strh\tr3, [r5, #0xa]\n\t"
        "2:\n\t"
        "ldr\tr1, 12f\n\t"
        "mov\tr3, #1\n\t"
        "add\tr2, r5, r1\n\t"
        "strh\tr3, [r2]\n\t"
        "ldr\tr2, 11f\n\t"
        "add\tr3, r5, r2\n\t"
        "ldrh\tr1, [r3]\n\t"
        "mov\tr0, r5\n\t"
        "bl\tFunc_801b9ec\n\t"
        "mov\tr0, #1\n\t"
        "bl\tWaitFrames\n\t"
        "mov\tr0, #0xd2\n\t"
        "lsl\tr0, #2\n\t"
        "add\tr3, r5, r0\n\t"
        "ldr\tr3, [r3]\n\t"
        "mov\tr1, #0\n\t"
        "ldrh\tr0, [r3, #0xa]\n\t"
        "bl\tFunc_801b010\n\t"
        "mov\tr0, #1\n\t"
        "bl\tWaitFrames\n\t"
        "1:\n\t"
        : "=r"(counter2), "=r"(counter1), "=r"(state), "=r"(limit), "=r"(target)
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)counter2;
    (void)counter1;
    (void)state;
    (void)limit;
    (void)target;
    (void)arg0;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\t0x39e\n\t"
    "12:\n\t"
    ".word\t0x3a2\n\t"
);
