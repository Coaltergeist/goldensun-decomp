extern int gState;
extern int GetFieldActor(int id);
extern void _PlaySound(int id);
extern void StopTask(void (*task)(void));
extern void Func_8099678(void);
extern void _Actor_SetAnim(void *actor, int anim);
extern void WaitFrames(int count);

void Func_8099738(void)
{
    register void *p5 asm("r5");
    register void *p6 asm("r6");
    register int i asm("r7");
    register int one asm("r8");
    register void *flagA asm("r9");
    register void *sound asm("r10");
    register void *flagB asm("r11");

    asm volatile(
        "ldr\tr3, 11f\n\t"
        "mov\tr1, #0xfa\n\t"
        "lsl\tr1, #1\n\t"
        "add\tr3, r1\n\t"
        "ldr\tr0, [r3]\n\t"
        "bl\tGetFieldActor\n\t"
        "mov\tr5, r0\n\t"
        "ldr\tr6, [r5, #0x50]\n\t"
        "ldr\tr2, [r6, #0x28]\n\t"
        "mov\tr0, #0x9a\n\t"
        "mov\tr10, r2\n\t"
        "bl\t_PlaySound\n\t"
        "ldr\tr0, 12f\n\t"
        "bl\tStopTask\n\t"
        "mov\tr0, r5\n\t"
        "mov\tr1, #0\n\t"
        "bl\t_Actor_SetAnim\n\t"
        "mov\tr3, #0\n\t"
        "str\tr3, [r5, #0x6c]\n\t"
        "mov\tr3, #0x25\n\t"
        "add\tr3, r6\n\t"
        "add\tr6, #0x26\n\t"
        "mov\tr9, r6\n\t"
        "mov\tr11, r3\n\t"
        "mov\tr1, #1\n\t"
        "mov\tr7, #0\n\t"
        "mov\tr6, r11\n\t"
        "mov\tr8, r1\n\t"
        "mov\tr5, r9\n\t"
        "1:\n\t"
        "mov\tr2, #7\n\t"
        "mov\tr3, r10\n\t"
        "strb\tr2, [r3, #5]\n\t"
        "mov\tr1, r8\n\t"
        "mov\tr3, #2\n\t"
        "strb\tr1, [r6]\n\t"
        "mov\tr0, #2\n\t"
        "strb\tr3, [r5]\n\t"
        "bl\tWaitFrames\n\t"
        "mov\tr2, r8\n\t"
        "mov\tr3, #0\n\t"
        "strb\tr2, [r6]\n\t"
        "mov\tr0, #2\n\t"
        "strb\tr3, [r5]\n\t"
        "add\tr7, #1\n\t"
        "bl\tWaitFrames\n\t"
        "cmp\tr7, #4\n\t"
        "bls\t1b\n\t"
        "mov\tr1, #0\n\t"
        "mov\tr2, #7\n\t"
        "mov\tr5, r11\n\t"
        "mov\tr7, #0\n\t"
        "mov\tr8, r1\n\t"
        "mov\tr6, #1\n\t"
        "mov\tr11, r2\n\t"
        "2:\n\t"
        "mov\tr1, r10\n\t"
        "mov\tr3, r11\n\t"
        "strb\tr3, [r1, #5]\n\t"
        "mov\tr2, r8\n\t"
        "mov\tr3, r9\n\t"
        "strb\tr6, [r5]\n\t"
        "mov\tr0, #2\n\t"
        "strb\tr2, [r3]\n\t"
        "bl\tWaitFrames\n\t"
        "mov\tr1, r8\n\t"
        "mov\tr2, r10\n\t"
        "strb\tr1, [r2, #5]\n\t"
        "strb\tr6, [r5]\n\t"
        "mov\tr0, #2\n\t"
        "add\tr7, #1\n\t"
        "bl\tWaitFrames\n\t"
        "cmp\tr7, #4\n\t"
        "bls\t2b\n\t"
        "mov\tr1, r9\n\t"
        "mov\tr3, #1\n\t"
        "strb\tr3, [r1]\n\t"
        "ldr\tr3, 11f\n\t"
        "mov\tr1, #0x93\n\t"
        "lsl\tr1, #2\n\t"
        "mov\tr2, #0\n\t"
        "add\tr3, r1\n\t"
        "strh\tr2, [r3]\n\t"
        : "=r"(p5), "=r"(p6), "=r"(i), "=r"(one),
          "=r"(flagA), "=r"(sound), "=r"(flagB)
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)p5;
    (void)p6;
    (void)i;
    (void)one;
    (void)flagA;
    (void)sound;
    (void)flagB;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\tgState\n\t"
    "12:\n\t"
    ".word\tFunc_8099678\n\t"
);
