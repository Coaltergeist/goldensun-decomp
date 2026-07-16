extern int Func_80b6c08(int mode, void *list);
extern void *_Func_8077330(int which);

int Func_80be0b4(int kind, void *counts)
{
    register void *slot asm("r5");
    register void *tally asm("r6");
    register int count asm("r7");
    register void *table asm("r8");
    register void *list asm("r9");
    register int index asm("r10");
    register int total asm("r11");

    asm volatile(
        "mov\tr5, r0\n\t"
        "mov\tr6, r1\n\t"
        "mov\tr1, #0\n\t"
        "sub\tsp, #0x14\n\t"
        "mov\tr11, r1\n\t"
        "mov\tr0, #1\n\t"
        "cmp\tr5, #7\n\t"
        "bls\t1f\n\t"
        "mov\tr0, #2\n\t"
        "1:\n\t"
        "add\tr2, sp, #4\n\t"
        "mov\tr9, r2\n\t"
        "mov\tr1, r9\n\t"
        "bl\tFunc_80b6c08\n\t"
        "mov\tr7, r0\n\t"
        "mov\tr0, #0\n\t"
        "cmp\tr5, #7\n\t"
        "bls\t2f\n\t"
        "mov\tr0, #1\n\t"
        "2:\n\t"
        "bl\t_Func_8077330\n\t"
        "add\tr0, #8\n\t"
        "mov\tr8, r0\n\t"
        "cmp\tr6, #0\n\t"
        "beq\t3f\n\t"
        "mov\tr2, #0\n\t"
        "add\tr3, r6, #3\n\t"
        "mov\tr12, r6\n\t"
        "4:\n\t"
        "strb\tr2, [r3]\n\t"
        "sub\tr3, #1\n\t"
        "cmp\tr3, r12\n\t"
        "bge\t4b\n\t"
        "3:\n\t"
        "mov\tr2, #0x80\n\t"
        "lsl\tr2, #1\n\t"
        "mov\tr3, #0\n\t"
        "add\tr2, r8\n\t"
        "mov\tr10, r3\n\t"
        "ldr\tr3, [r2]\n\t"
        "cmp\tr3, #0\n\t"
        "beq\t5f\n\t"
        "mov\tr1, #0\n\t"
        "str\tr2, [sp]\n\t"
        "mov\tr12, r9\n\t"
        "mov\tr5, r8\n\t"
        "mov\tr14, r1\n\t"
        "6:\n\t"
        "mov\tr2, #1\n\t"
        "mov\tr3, #3\n\t"
        "ldrsb\tr3, [r5, r3]\n\t"
        "neg\tr2, r2\n\t"
        "cmp\tr3, r2\n\t"
        "bne\t7f\n\t"
        "mov\tr4, #0\n\t"
        "cmp\tr4, r7\n\t"
        "bge\t8f\n\t"
        "mov\tr3, r12\n\t"
        "ldrh\tr2, [r3]\n\t"
        "ldrb\tr3, [r5, #2]\n\t"
        "cmp\tr2, r3\n\t"
        "beq\t8f\n\t"
        "mov\tr1, r5\n\t"
        "mov\tr0, r9\n\t"
        "9:\n\t"
        "add\tr4, #1\n\t"
        "cmp\tr4, r7\n\t"
        "bge\t8f\n\t"
        "add\tr0, #2\n\t"
        "ldrh\tr2, [r0]\n\t"
        "ldrb\tr3, [r1, #2]\n\t"
        "cmp\tr2, r3\n\t"
        "bne\t9b\n\t"
        "8:\n\t"
        "cmp\tr4, r7\n\t"
        "beq\t7f\n\t"
        "cmp\tr6, #0\n\t"
        "beq\t0f\n\t"
        "mov\tr3, r8\n\t"
        "mov\tr1, r14\n\t"
        "ldrb\tr2, [r1, r3]\n\t"
        "ldrb\tr3, [r6, r2]\n\t"
        "add\tr3, #1\n\t"
        "strb\tr3, [r6, r2]\n\t"
        "0:\n\t"
        "mov\tr1, #1\n\t"
        "add\tr11, r1\n\t"
        "7:\n\t"
        "ldr\tr1, [sp]\n\t"
        "mov\tr3, #1\n\t"
        "add\tr10, r3\n\t"
        "ldr\tr3, [r1]\n\t"
        "mov\tr2, #4\n\t"
        "add\tr5, #4\n\t"
        "add\tr14, r2\n\t"
        "cmp\tr10, r3\n\t"
        "bne\t6b\n\t"
        "5:\n\t"
        "mov\tr0, r11\n\t"
        "add\tsp, #0x14\n\t"
        : "=r"(slot), "=r"(tally), "=r"(count), "=r"(table),
          "=r"(list), "=r"(index), "=r"(total)
        :
        : "r0", "r1", "r2", "r3", "r4", "r12", "lr", "cc", "memory");
    (void)slot;
    (void)tally;
    (void)count;
    (void)table;
    (void)list;
    (void)index;
    (void)total;
    (void)kind;
    (void)counts;
}
