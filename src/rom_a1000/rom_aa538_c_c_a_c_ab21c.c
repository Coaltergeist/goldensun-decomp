extern int iwram_3001e8c;

void Func_80ab21c(int x, int y, int w, int h, int attr)
{
    register void *statusBase asm("r7");
    register void *rowMask asm("r6");
    register int height asm("r5");
    register void *rowPtr asm("r8");
    register void *tileBase asm("r9");
    register int attrBits asm("r10");
    register int bit asm("r11");
    int spill;

    asm volatile(
        "mov\tr5, r3\n\t"
        "ldr\tr3, 11f\n\t"
        "mov\tr4, r0\n\t"
        "mov\tr0, r1\n\t"
        "ldr\tr1, [sp, #0x24]\n\t"
        "ldr\tr3, [r3]\n\t"
        "mov\tr10, r1\n\t"
        "mov\tr9, r3\n\t"
        "mov\tr3, r10\n\t"
        "lsl\tr3, #12\n\t"
        "mov\tr7, r2\n\t"
        "mov\tr10, r3\n\t"
        "cmp\tr4, #0\n\t"
        "bge\t1f\n\t"
        "add\tr7, r4\n\t"
        "mov\tr4, #0\n\t"
        "1:\n\t"
        "add\tr3, r4, r7\n\t"
        "cmp\tr3, #0x1d\n\t"
        "ble\t2f\n\t"
        "mov\tr3, #0x1e\n\t"
        "sub\tr7, r3, r4\n\t"
        "2:\n\t"
        "cmp\tr0, #0\n\t"
        "bge\t3f\n\t"
        "add\tr5, r0\n\t"
        "mov\tr0, #0\n\t"
        "3:\n\t"
        "add\tr3, r0, r5\n\t"
        "cmp\tr3, #0x1d\n\t"
        "ble\t4f\n\t"
        "mov\tr3, #0x14\n\t"
        "sub\tr5, r3, r0\n\t"
        "4:\n\t"
        "cmp\tr7, #0\n\t"
        "ble\t5f\n\t"
        "cmp\tr5, #0\n\t"
        "ble\t5f\n\t"
        "ldr\tr6, 12f\n\t"
        "lsl\tr2, r0, #6\n\t"
        "lsl\tr3, r4, #1\n\t"
        "add\tr2, r3\n\t"
        "add\tr6, r9\n\t"
        "mov\tr1, #2\n\t"
        "str\tr2, [sp]\n\t"
        "mov\tr8, r6\n\t"
        "mov\tr11, r1\n\t"
        "6:\n\t"
        "ldr\tr4, [sp]\n\t"
        "mov\tr1, r7\n\t"
        "add\tr4, r9\n\t"
        "cmp\tr1, #0\n\t"
        "beq\t7f\n\t"
        "ldr\tr6, 13f\n\t"
        "mov\tr3, #0xf\n\t"
        "mov\tr14, r3\n\t"
        "mov\tr12, r6\n\t"
        "8:\n\t"
        "ldrh\tr2, [r4]\n\t"
        "mov\tr6, r14\n\t"
        "lsr\tr3, r2, #12\n\t"
        "and\tr3, r6\n\t"
        "cmp\tr3, #0xf\n\t"
        "bne\t9f\n\t"
        "mov\tr3, r12\n\t"
        "and\tr2, r3\n\t"
        "mov\tr6, r10\n\t"
        "orr\tr2, r6\n\t"
        "strh\tr2, [r4]\n\t"
        "9:\n\t"
        "sub\tr1, #1\n\t"
        "add\tr4, #2\n\t"
        "cmp\tr1, #0\n\t"
        "bne\t8b\n\t"
        "7:\n\t"
        "lsr\tr3, r0, #2\n\t"
        "mov\tr1, r8\n\t"
        "mov\tr2, r11\n\t"
        "lsl\tr2, r3\n\t"
        "ldrb\tr3, [r1]\n\t"
        "orr\tr2, r3\n\t"
        "strb\tr2, [r1]\n\t"
        "sub\tr5, #1\n\t"
        "ldr\tr3, [sp]\n\t"
        "add\tr3, #0x40\n\t"
        "str\tr3, [sp]\n\t"
        "add\tr0, #1\n\t"
        "cmp\tr5, #0\n\t"
        "bne\t6b\n\t"
        "5:\n\t"
        : "=r"(statusBase), "=r"(rowMask), "=r"(height), "=r"(rowPtr),
          "=r"(tileBase), "=r"(attrBits), "=r"(bit), "=m"(spill)
        :
        : "r0", "r1", "r2", "r3", "r4", "r12", "lr", "cc", "memory");
    (void)statusBase;
    (void)rowMask;
    (void)height;
    (void)rowPtr;
    (void)tileBase;
    (void)attrBits;
    (void)bit;
    (void)x;
    (void)y;
    (void)w;
    (void)h;
    (void)attr;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\tiwram_3001e8c\n\t"
    "12:\n\t"
    ".word\t0xea3\n\t"
    "13:\n\t"
    ".word\t0xffff0fff\n\t"
);
