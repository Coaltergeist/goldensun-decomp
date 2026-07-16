extern void *__MapActor_GetActor(int id);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __Actor_TravelTo(void *actor, int x, int z, int y);
extern void __SetFlag(int flag);
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_956_20084a4(void)
{
    register void *actor asm("r5");
    register int speedLo asm("r6");
    register int tileZ asm("r7");
    register int speedHi asm("r8");
    register int tileX asm("r9");
    register int two asm("r10");

    asm volatile(
        "mov\tr0, #0xc\n\t"
        "sub\tsp, #8\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "ldr\tr3, [r0, #8]\n\t"
        "asr\tr3, #20\n\t"
        "mov\tr9, r3\n\t"
        "cmp\tr3, #9\n\t"
        "bne\t1f\n\t"
        "ldr\tr3, [r0, #0x10]\n\t"
        "asr\tr7, r3, #20\n\t"
        "cmp\tr7, #0xc\n\t"
        "bne\t1f\n\t"
        "mov\tr0, #0xc\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr1, #0\n\t"
        "mov\tr5, r0\n\t"
        "bl\t__Actor_SetSpriteFlags\n\t"
        "mov\tr1, #2\n\t"
        "mov\tr10, r1\n\t"
        "mov\tr2, r5\n\t"
        "add\tr2, #0x23\n\t"
        "mov\tr1, r10\n\t"
        "strb\tr1, [r2]\n\t"
        "mov\tr3, #0\n\t"
        "add\tr2, #0x32\n\t"
        "strb\tr3, [r2]\n\t"
        "ldr\tr2, 11f\n\t"
        "ldr\tr6, 12f\n\t"
        "mov\tr8, r2\n\t"
        "str\tr2, [r5, #0x34]\n\t"
        "mov\tr2, #0x80\n\t"
        "ldr\tr1, [r5, #8]\n\t"
        "ldr\tr3, [r5, #0x10]\n\t"
        "lsl\tr2, #11\n\t"
        "mov\tr0, r5\n\t"
        "str\tr6, [r5, #0x30]\n\t"
        "bl\t__Actor_TravelTo\n\t"
        "mov\tr0, #0xb\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr3, r0\n\t"
        "add\tr3, #0x23\n\t"
        "mov\tr1, r10\n\t"
        "strb\tr1, [r3]\n\t"
        "mov\tr2, r8\n\t"
        "str\tr2, [r0, #0x34]\n\t"
        "mov\tr2, #0x80\n\t"
        "ldr\tr1, [r0, #8]\n\t"
        "ldr\tr3, [r0, #0x10]\n\t"
        "lsl\tr2, #14\n\t"
        "str\tr6, [r0, #0x30]\n\t"
        "bl\t__Actor_TravelTo\n\t"
        "mov\tr0, #0xa\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr3, r8\n\t"
        "mov\tr2, #0x80\n\t"
        "ldr\tr1, [r0, #8]\n\t"
        "str\tr3, [r0, #0x34]\n\t"
        "lsl\tr2, #11\n\t"
        "ldr\tr3, [r0, #0x10]\n\t"
        "str\tr6, [r0, #0x30]\n\t"
        "bl\t__Actor_TravelTo\n\t"
        "mov\tr0, #0xda\n\t"
        "lsl\tr0, #2\n\t"
        "bl\t__SetFlag\n\t"
        "mov\tr3, #0xd\n\t"
        "str\tr3, [sp]\n\t"
        "mov\tr0, #0xf\n\t"
        "mov\tr1, #0xc\n\t"
        "mov\tr2, #1\n\t"
        "mov\tr3, #1\n\t"
        "str\tr7, [sp, #4]\n\t"
        "bl\t__Func_8010704\n\t"
        "mov\tr1, r9\n\t"
        "str\tr1, [sp]\n\t"
        "mov\tr0, #1\n\t"
        "mov\tr1, #0x19\n\t"
        "mov\tr2, #1\n\t"
        "mov\tr3, #1\n\t"
        "str\tr7, [sp, #4]\n\t"
        "bl\t__Func_8010704\n\t"
        "1:\n\t"
        "add\tsp, #8\n\t"
        : "=r"(actor), "=r"(speedLo), "=r"(tileZ), "=r"(speedHi),
          "=r"(tileX), "=r"(two)
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)actor;
    (void)speedLo;
    (void)tileZ;
    (void)speedHi;
    (void)tileX;
    (void)two;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\t0x6666\n\t"
    "12:\n\t"
    ".word\t0xcccc\n\t"
);
