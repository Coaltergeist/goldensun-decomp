extern void __PlaySound(int id);
extern void __vec3_translate(int dist, int angle, void *pos);
extern int __Random(void);
extern void OvlFunc_common0_10c(int x, int y, int z, int w);
extern void __WaitFrames(int count);

void OvlFunc_924_200bc48(int x, int y, int z, int w)
{
    register void *vecB asm("r5");
    register void *paramsPtr asm("r6");
    register void *vecA asm("r7");
    register int i asm("r8");
    register int angle asm("r9");
    register int half asm("r10");
    register int zBase asm("r11");
    int frame[19];

    asm volatile(
        "str\tr0, [sp, #0x14]\n\t"
        "mov\tr0, #0xd8\n\t"
        "mov\tr11, r2\n\t"
        "mov\tr9, r3\n\t"
        "str\tr1, [sp, #0x10]\n\t"
        "bl\t__PlaySound\n\t"
        "mov\tr2, #0\n\t"
        "mov\tr3, #6\n\t"
        "mov\tr8, r2\n\t"
        "add\tr7, sp, #0x18\n\t"
        "mov\tr10, r3\n\t"
        "1:\n\t"
        "mov\tr3, #1\n\t"
        "mov\tr2, r8\n\t"
        "and\tr3, r2\n\t"
        "cmp\tr3, #0\n\t"
        "beq\t2f\n\t"
        "mov\tr3, #7\n\t"
        "add\tr6, sp, #0x24\n\t"
        "str\tr3, [r6, #4]\n\t"
        "mov\tr3, #2\n\t"
        "and\tr3, r2\n\t"
        "cmp\tr3, #0\n\t"
        "beq\t3f\n\t"
        "mov\tr3, #5\n\t"
        "str\tr3, [r6, #4]\n\t"
        "3:\n\t"
        "ldr\tr3, 11f\n\t"
        "mov\tr2, r8\n\t"
        "str\tr3, [r6, #8]\n\t"
        "str\tr3, [r6, #0xc]\n\t"
        "mov\tr3, #0\n\t"
        "str\tr3, [r7]\n\t"
        "str\tr3, [r7, #4]\n\t"
        "str\tr3, [r7, #8]\n\t"
        "lsr\tr3, r2, #1\n\t"
        "mov\tr2, r10\n\t"
        "sub\tr3, r2, r3\n\t"
        "ldr\tr2, 12f\n\t"
        "mov\tr1, r9\n\t"
        "mov\tr0, r3\n\t"
        "mul\tr0, r2\n\t"
        "mov\tr2, r7\n\t"
        "bl\t__vec3_translate\n\t"
        "bl\t__Random\n\t"
        "lsl\tr5, r0, #1\n\t"
        "add\tr5, r0\n\t"
        "lsl\tr5, #1\n\t"
        "mov\tr3, r10\n\t"
        "lsr\tr5, #16\n\t"
        "sub\tr5, r3, r5\n\t"
        "ldr\tr2, [sp, #0x14]\n\t"
        "lsl\tr5, #16\n\t"
        "add\tr5, r2, r5\n\t"
        "bl\t__Random\n\t"
        "lsl\tr2, r0, #1\n\t"
        "add\tr2, r0\n\t"
        "ldr\tr1, [r7, #4]\n\t"
        "lsl\tr2, #1\n\t"
        "mov\tr3, r10\n\t"
        "lsr\tr2, #16\n\t"
        "sub\tr2, r3, r2\n\t"
        "ldr\tr3, [r7]\n\t"
        "str\tr1, [sp]\n\t"
        "ldr\tr1, [r7, #8]\n\t"
        "str\tr1, [sp, #4]\n\t"
        "mov\tr1, #0x90\n\t"
        "lsl\tr1, #12\n\t"
        "lsl\tr2, #16\n\t"
        "str\tr1, [sp, #8]\n\t"
        "add\tr2, r11\n\t"
        "mov\tr0, r5\n\t"
        "ldr\tr1, [sp, #0x10]\n\t"
        "str\tr6, [sp, #0xc]\n\t"
        "bl\tOvlFunc_common0_10c\n\t"
        "2:\n\t"
        "mov\tr0, #2\n\t"
        "bl\t__WaitFrames\n\t"
        "mov\tr2, #1\n\t"
        "add\tr8, r2\n\t"
        "mov\tr3, r8\n\t"
        "cmp\tr3, #0xb\n\t"
        "bls\t1b\n\t"
        : "=r"(vecB), "=r"(paramsPtr), "=r"(vecA), "=r"(i),
          "=r"(angle), "=r"(half), "=r"(zBase), "=m"(frame[0])
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)vecB;
    (void)paramsPtr;
    (void)vecA;
    (void)i;
    (void)angle;
    (void)half;
    (void)zBase;
    (void)x;
    (void)y;
    (void)z;
    (void)w;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\t0x9999\n\t"
    "12:\n\t"
    ".word\t0x1999\n\t"
);
