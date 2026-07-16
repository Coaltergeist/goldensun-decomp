extern int gState;
extern int iwram_3001ebc;
extern int GetFieldActor(int id);
extern int atan2(int y, int x);
extern void vec3_translate(int dist, int angle, void *pos);

void Func_808ee0c(void)
{
    register void *actor asm("r5");
    register int scratch6 asm("r6");
    register int index asm("r7");
    register int dxBias asm("r8");
    register int actorX asm("r9");
    register int actorY asm("r10");
    register int center asm("r11");

    asm volatile(
        "ldr\tr3, 11f\n\t"
        "mov\tr2, #0xfa\n\t"
        "lsl\tr2, #1\n\t"
        "add\tr3, r2\n\t"
        "ldr\tr0, [r3]\n\t"
        "sub\tsp, #4\n\t"
        "bl\tGetFieldActor\n\t"
        "ldr\tr3, 12f\n\t"
        "mov\tr6, #0x8e\n\t"
        "ldr\tr3, [r3]\n\t"
        "lsl\tr6, #1\n\t"
        "add\tr4, r3, r6\n\t"
        "ldrb\tr3, [r4, #4]\n\t"
        "mov\tr5, r0\n\t"
        "mov\tr7, #0\n\t"
        "cmp\tr3, #0\n\t"
        "beq\t3f\n\t"
        "ldr\tr2, [r5, #8]\n\t"
        "ldr\tr3, [r5, #0x10]\n\t"
        "mov\tr9, r2\n\t"
        "mov\tr10, r3\n\t"
        "ldr\tr6, 13f\n\t"
        "ldr\tr2, 14f\n\t"
        "mov\tr3, #0x80\n\t"
        "lsl\tr3, #12\n\t"
        "mov\tr14, r6\n\t"
        "mov\tr12, r2\n\t"
        "mov\tr11, r3\n\t"
        "1:\n\t"
        "ldrb\tr3, [r4, #6]\n\t"
        "mov\tr6, r9\n\t"
        "lsl\tr0, r3, #20\n\t"
        "sub\tr2, r6, r0\n\t"
        "mov\tr3, r2\n\t"
        "add\tr3, r14\n\t"
        "mov\tr8, r3\n\t"
        "ldrb\tr3, [r4, #7]\n\t"
        "mov\tr6, r10\n\t"
        "lsl\tr1, r3, #20\n\t"
        "sub\tr3, r6, r1\n\t"
        "mov\tr6, r14\n\t"
        "add\tr6, r3, r6\n\t"
        "str\tr6, [sp]\n\t"
        "ldr\tr6, 15f\n\t"
        "add\tr2, r6\n\t"
        "cmp\tr2, r12\n\t"
        "bhi\t2f\n\t"
        "add\tr3, r6\n\t"
        "cmp\tr3, r12\n\t"
        "bhi\t2f\n\t"
        "mov\tr2, r11\n\t"
        "add\tr3, r0, r2\n\t"
        "str\tr3, [r5, #8]\n\t"
        "add\tr3, r1, r2\n\t"
        "str\tr3, [r5, #0x10]\n\t"
        "ldr\tr0, [sp]\n\t"
        "mov\tr1, r8\n\t"
        "bl\tatan2\n\t"
        "mov\tr1, r0\n\t"
        "lsl\tr1, #16\n\t"
        "mov\tr0, #0xa0\n\t"
        "mov\tr2, r5\n\t"
        "lsr\tr1, #16\n\t"
        "lsl\tr0, #13\n\t"
        "add\tr2, #8\n\t"
        "bl\tvec3_translate\n\t"
        "mov\tr3, #0x80\n\t"
        "lsl\tr3, #24\n\t"
        "str\tr3, [r5, #0x38]\n\t"
        "str\tr3, [r5, #0x3c]\n\t"
        "str\tr3, [r5, #0x40]\n\t"
        "b\t3f\n\t"
        "2:\n\t"
        "add\tr7, #1\n\t"
        "add\tr4, #8\n\t"
        "cmp\tr7, #9\n\t"
        "bgt\t3f\n\t"
        "ldrb\tr3, [r4, #4]\n\t"
        "cmp\tr3, #0\n\t"
        "bne\t1b\n\t"
        "3:\n\t"
        "add\tsp, #4\n\t"
        : "=r"(actor), "=r"(scratch6), "=r"(index), "=r"(dxBias),
          "=r"(actorX), "=r"(actorY), "=r"(center)
        :
        : "r0", "r1", "r2", "r3", "r4", "r12", "lr", "cc", "memory");
    (void)actor;
    (void)scratch6;
    (void)index;
    (void)dxBias;
    (void)actorX;
    (void)actorY;
    (void)center;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\tgState\n\t"
    "12:\n\t"
    ".word\tiwram_3001ebc\n\t"
    "13:\n\t"
    ".word\t0xfff80000\n\t"
    "14:\n\t"
    ".word\t0x1ffffe\n\t"
    "15:\n\t"
    ".word\t0x7ffff\n\t"
);
