extern int iwram_3001e70;
extern int gState;
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __LoadFieldActors(void *list);
extern void __WaitFrames(int count);
extern void __DeleteFieldActor(int id);
extern void __MapActor_SetPos(int id, int x, int y);
extern void *__MapActor_GetActor(int id);
extern int __GetFlag(int flag);
extern void OvlFunc_943_200bf30(void);

void OvlFunc_943_20099c0(void)
{
    register int flags asm("r5");

    asm volatile(
        "ldr\tr3, 11f\n\t"
        "ldr\tr3, [r3]\n\t"
        "mov\tr2, #0x82\n\t"
        "add\tr3, #0xec\n\t"
        "lsl\tr2, #15\n\t"
        "str\tr2, [r3]\n\t"
        "bl\t__CutsceneStart\n\t"
        "ldr\tr0, 12f\n\t"
        "bl\t__LoadFieldActors\n\t"
        "mov\tr0, #1\n\t"
        "bl\t__WaitFrames\n\t"
        "mov\tr0, #0x18\n\t"
        "bl\t__DeleteFieldActor\n\t"
        "mov\tr1, #0xee\n\t"
        "mov\tr0, #0x17\n\t"
        "lsl\tr1, #16\n\t"
        "ldr\tr2, 13f\n\t"
        "bl\t__MapActor_SetPos\n\t"
        "mov\tr0, #0x17\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr5, #0xc0\n\t"
        "lsl\tr5, #6\n\t"
        "strh\tr5, [r0, #6]\n\t"
        "ldr\tr0, 14f\n\t"
        "bl\t__GetFlag\n\t"
        "cmp\tr0, #0\n\t"
        "beq\t1f\n\t"
        "mov\tr1, #0xa2\n\t"
        "lsl\tr1, #16\n\t"
        "ldr\tr2, 15f\n\t"
        "mov\tr0, #0x16\n\t"
        "bl\t__MapActor_SetPos\n\t"
        "mov\tr0, #0x16\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr1, #0xa2\n\t"
        "mov\tr2, #0xa9\n\t"
        "strh\tr5, [r0, #6]\n\t"
        "lsl\tr1, #16\n\t"
        "mov\tr0, #0x15\n\t"
        "lsl\tr2, #18\n\t"
        "bl\t__MapActor_SetPos\n\t"
        "mov\tr0, #0x15\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr3, #0xd0\n\t"
        "b\t2f\n\t"
        "1:\n\t"
        "mov\tr1, #0xa0\n\t"
        "mov\tr2, #0xa3\n\t"
        "lsl\tr1, #16\n\t"
        "lsl\tr2, #18\n\t"
        "mov\tr0, #0x16\n\t"
        "bl\t__MapActor_SetPos\n\t"
        "mov\tr0, #0x16\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr1, #0xa6\n\t"
        "mov\tr2, #0xa7\n\t"
        "strh\tr5, [r0, #6]\n\t"
        "lsl\tr1, #16\n\t"
        "mov\tr0, #0x15\n\t"
        "lsl\tr2, #18\n\t"
        "bl\t__MapActor_SetPos\n\t"
        "mov\tr0, #0x15\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr3, #0xb0\n\t"
        "2:\n\t"
        "lsl\tr3, #8\n\t"
        "strh\tr3, [r0, #6]\n\t"
        "ldr\tr3, 16f\n\t"
        "mov\tr2, #0xe1\n\t"
        "lsl\tr2, #1\n\t"
        "add\tr3, r2\n\t"
        "mov\tr2, #0\n\t"
        "ldrsh\tr3, [r3, r2]\n\t"
        "cmp\tr3, #6\n\t"
        "bne\t3f\n\t"
        "bl\tOvlFunc_943_200bf30\n\t"
        "3:\n\t"
        : "=r"(flags)
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)flags;
    __CutsceneEnd();
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\tiwram_3001e70\n\t"
    "12:\n\t"
    ".word\t.L5418\n\t"
    "13:\n\t"
    ".word\t0x2720000\n\t"
    "14:\n\t"
    ".word\t0x903\n\t"
    "15:\n\t"
    ".word\t0x27a0000\n\t"
    "16:\n\t"
    ".word\tgState\n\t"
);
