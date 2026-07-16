extern int iwram_3001f2c;
extern int gState;
extern void *_GetUnit(int id);
extern void *_GetItemInfo(int id);
extern void Func_80b04dc(int msg);
extern int _CheckItem(int unit, int item);
extern unsigned __udivsi3(unsigned n, unsigned d);
extern int _Func_8078ad0(int item, int arg);
extern void Func_80b0a6c(int a, int b, int c);
extern void Func_80b1614(int count, int amount, int value);

int Func_80b153c(int unitId, int itemId)
{
    register void *unit asm("r5");
    register int item asm("r6");
    register int count asm("r7");
    register void *info asm("r8");
    register void *state asm("r10");

    asm volatile(
        "ldr\tr3, 11f\n\t"
        "ldr\tr3, [r3]\n\t"
        "mov\tr6, r1\n\t"
        "mov\tr10, r3\n\t"
        "mov\tr5, r0\n\t"
        "bl\t_GetUnit\n\t"
        "mov\tr7, r0\n\t"
        "mov\tr0, r6\n\t"
        "bl\t_GetItemInfo\n\t"
        "mov\tr8, r0\n\t"
        "mov\tr1, r8\n\t"
        "ldrb\tr2, [r1, #3]\n\t"
        "mov\tr3, #0x10\n\t"
        "and\tr3, r2\n\t"
        "mov\tr0, #1\n\t"
        "cmp\tr3, #0\n\t"
        "beq\t1f\n\t"
        "ldr\tr0, 12f\n\t"
        "bl\tFunc_80b04dc\n\t"
        "mov\tr0, r5\n\t"
        "mov\tr1, r6\n\t"
        "bl\t_CheckItem\n\t"
        "mov\tr2, #1\n\t"
        "neg\tr2, r2\n\t"
        "cmp\tr0, r2\n\t"
        "beq\t2f\n\t"
        "lsl\tr3, r0, #1\n\t"
        "add\tr3, #0xd8\n\t"
        "ldrh\tr3, [r7, r3]\n\t"
        "lsr\tr3, #11\n\t"
        "add\tr7, r3, #1\n\t"
        "b\t3f\n\t"
        "2:\n\t"
        "mov\tr7, #0\n\t"
        "3:\n\t"
        "mov\tr2, r8\n\t"
        "mov\tr3, #0\n\t"
        "ldrsh\tr1, [r2, r3]\n\t"
        "mov\tr5, #0x1e\n\t"
        "cmp\tr1, #0\n\t"
        "beq\t4f\n\t"
        "ldr\tr3, 13f\n\t"
        "ldr\tr0, [r3, #0x10]\n\t"
        "bl\t__udivsi3\n\t"
        "mov\tr5, r0\n\t"
        "4:\n\t"
        "ldr\tr3, 14f\n\t"
        "add\tr3, r10\n\t"
        "ldrb\tr3, [r3]\n\t"
        "lsl\tr3, #24\n\t"
        "asr\tr3, #24\n\t"
        "cmp\tr3, #2\n\t"
        "bne\t5f\n\t"
        "mov\tr0, r6\n\t"
        "mov\tr1, #0\n\t"
        "bl\t_Func_8078ad0\n\t"
        "cmp\tr5, r0\n\t"
        "ble\t6f\n\t"
        "mov\tr0, r6\n\t"
        "mov\tr1, #0\n\t"
        "bl\t_Func_8078ad0\n\t"
        "b\t7f\n\t"
        "6:\n\t"
        "mov\tr0, r5\n\t"
        "7:\n\t"
        "mov\tr5, r0\n\t"
        "5:\n\t"
        "add\tr5, r7\n\t"
        "cmp\tr5, #0x1e\n\t"
        "ble\t8f\n\t"
        "mov\tr5, #0x1e\n\t"
        "8:\n\t"
        "mov\tr3, #0xea\n\t"
        "lsl\tr3, #2\n\t"
        "add\tr3, r10\n\t"
        "mov\tr2, #0xc\n\t"
        "strb\tr2, [r3]\n\t"
        "mov\tr0, #0\n\t"
        "mov\tr1, #0x80\n\t"
        "mov\tr2, #0x30\n\t"
        "bl\tFunc_80b0a6c\n\t"
        "mov\tr1, r8\n\t"
        "mov\tr3, #0\n\t"
        "ldrsh\tr2, [r1, r3]\n\t"
        "mov\tr0, r7\n\t"
        "mov\tr1, r5\n\t"
        "bl\tFunc_80b1614\n\t"
        "1:\n\t"
        : "=r"(unit), "=r"(item), "=r"(count), "=r"(info), "=r"(state)
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)unit;
    (void)item;
    (void)count;
    (void)info;
    (void)state;
    (void)unitId;
    (void)itemId;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\tiwram_3001f2c\n\t"
    "12:\n\t"
    ".word\t0xca0\n\t"
    "13:\n\t"
    ".word\tgState\n\t"
    "14:\n\t"
    ".word\t0x3aa\n\t"
);
