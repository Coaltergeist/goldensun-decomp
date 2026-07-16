extern int Func_80b6a60(void *list);
extern void *_GetUnit(int id);
extern void *_GetSummonInfo(int index);
extern int *_Func_8077330(int arg);

int Func_80b5d3c(void)
{
    register void *totals asm("r7");
    register void *party asm("r6");
    register int count asm("r5");
    register int index asm("r8");
    register void *list asm("r9");
    register void *totalsBase asm("r10");
    register int mask asm("r11");
    int frame[8];

    asm volatile(
        "add\tr1, sp, #8\n\t"
        "mov\tr9, r1\n\t"
        "mov\tr0, r9\n\t"
        "bl\tFunc_80b6a60\n\t"
        "mov\tr3, #0x1c\n\t"
        "mov\tr2, #0\n\t"
        "add\tr3, sp\n\t"
        "mov\tr4, r0\n\t"
        "mov\tr11, r2\n\t"
        "mov\tr8, r2\n\t"
        "mov\tr10, r3\n\t"
        "1:\n\t"
        "mov\tr3, #0\n\t"
        "mov\tr1, r10\n\t"
        "mov\tr2, r8\n\t"
        "strb\tr3, [r1, r2]\n\t"
        "cmp\tr4, #0\n\t"
        "ble\t2f\n\t"
        "mov\tr1, #0x8c\n\t"
        "lsl\tr1, #1\n\t"
        "mov\tr7, r10\n\t"
        "add\tr1, r8\n\t"
        "mov\tr6, r9\n\t"
        "mov\tr5, r4\n\t"
        "3:\n\t"
        "ldrh\tr0, [r6]\n\t"
        "str\tr1, [sp, #4]\n\t"
        "str\tr4, [sp]\n\t"
        "bl\t_GetUnit\n\t"
        "ldr\tr1, [sp, #4]\n\t"
        "mov\tr2, r8\n\t"
        "ldrb\tr3, [r7, r2]\n\t"
        "ldrb\tr2, [r0, r1]\n\t"
        "sub\tr5, #1\n\t"
        "add\tr3, r2\n\t"
        "mov\tr2, r8\n\t"
        "add\tr6, #2\n\t"
        "strb\tr3, [r7, r2]\n\t"
        "ldr\tr4, [sp]\n\t"
        "cmp\tr5, #0\n\t"
        "bne\t3b\n\t"
        "2:\n\t"
        "mov\tr3, #1\n\t"
        "add\tr8, r3\n\t"
        "mov\tr1, r8\n\t"
        "cmp\tr1, #3\n\t"
        "ble\t1b\n\t"
        "mov\tr2, #0\n\t"
        "mov\tr8, r2\n\t"
        "4:\n\t"
        "mov\tr0, r8\n\t"
        "bl\t_GetSummonInfo\n\t"
        "cmp\tr0, #0\n\t"
        "beq\t5f\n\t"
        "mov\tr3, r10\n\t"
        "add\tr0, #4\n\t"
        "ldrb\tr2, [r3]\n\t"
        "ldrb\tr3, [r0]\n\t"
        "mov\tr4, #0\n\t"
        "cmp\tr2, r3\n\t"
        "bcc\t6f\n\t"
        "mov\tr1, r10\n\t"
        "7:\n\t"
        "add\tr4, #1\n\t"
        "cmp\tr4, #3\n\t"
        "bgt\t6f\n\t"
        "add\tr1, #1\n\t"
        "add\tr0, #1\n\t"
        "ldrb\tr2, [r1]\n\t"
        "ldrb\tr3, [r0]\n\t"
        "cmp\tr2, r3\n\t"
        "bcs\t7b\n\t"
        "6:\n\t"
        "cmp\tr4, #4\n\t"
        "bne\t5f\n\t"
        "mov\tr3, #1\n\t"
        "mov\tr1, r8\n\t"
        "mov\tr2, r11\n\t"
        "lsl\tr3, r1\n\t"
        "orr\tr2, r3\n\t"
        "mov\tr11, r2\n\t"
        "5:\n\t"
        "mov\tr3, #1\n\t"
        "add\tr8, r3\n\t"
        "mov\tr1, r8\n\t"
        "cmp\tr1, #0x1f\n\t"
        "ble\t4b\n\t"
        "mov\tr0, #0\n\t"
        "bl\t_Func_8077330\n\t"
        "mov\tr2, r11\n\t"
        "str\tr2, [r0]\n\t"
        : "=r"(totals), "=r"(party), "=r"(count), "=r"(index),
          "=r"(list), "=r"(totalsBase), "=r"(mask), "=m"(frame[0])
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)totals;
    (void)party;
    (void)count;
    (void)index;
    (void)list;
    (void)totalsBase;
    (void)mask;
}
