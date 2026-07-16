extern void *__MapActor_GetActor(int id);
extern void __vec3_translate(int dist, int angle, void *pos);
extern int __TestCollision(void *actor, void *pos);
extern void __ClearFlag(int flag);
extern void OvlFunc_969_20086c0(void);
extern void __Actor_SetAnim(void *actor, int anim);
extern void __WaitFrames(int count);
extern void __PlaySound(int id);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __Func_8092158(int id, int x, int y);

void OvlFunc_969_2008518(void)
{
    register void *actor asm("r5");
    register void *vec asm("r6");
    register void *flagPtr asm("r7");
    register int savedFlags asm("r8");

    asm volatile(
        "mov\tr0, #0\n\t"
        "sub\tsp, #0xc\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr5, r0\n\t"
        "ldrh\tr1, [r5, #6]\n\t"
        "mov\tr3, #0x80\n\t"
        "lsl\tr3, #5\n\t"
        "add\tr1, r3\n\t"
        "mov\tr7, r5\n\t"
        "mov\tr3, #0xe0\n\t"
        "lsl\tr3, #8\n\t"
        "add\tr7, #0x55\n\t"
        "and\tr1, r3\n\t"
        "ldrb\tr3, [r7]\n\t"
        "ldr\tr0, 11f\n\t"
        "mov\tr8, r3\n\t"
        "ldr\tr3, [r5, #8]\n\t"
        "mov\tr2, #0x80\n\t"
        "lsl\tr2, #12\n\t"
        "and\tr3, r0\n\t"
        "mov\tr6, sp\n\t"
        "add\tr3, r2\n\t"
        "str\tr3, [r6]\n\t"
        "ldr\tr3, [r5, #0xc]\n\t"
        "str\tr3, [r6, #4]\n\t"
        "ldr\tr3, [r5, #0x10]\n\t"
        "and\tr3, r0\n\t"
        "mov\tr0, #0x80\n\t"
        "add\tr3, r2\n\t"
        "lsl\tr0, #14\n\t"
        "mov\tr2, r6\n\t"
        "str\tr3, [r6, #8]\n\t"
        "bl\t__vec3_translate\n\t"
        "mov\tr0, r5\n\t"
        "mov\tr1, r6\n\t"
        "bl\t__TestCollision\n\t"
        "cmp\tr0, #0\n\t"
        "bne\t1f\n\t"
        "mov\tr0, #0x94\n\t"
        "lsl\tr0, #2\n\t"
        "bl\t__ClearFlag\n\t"
        "bl\tOvlFunc_969_20086c0\n\t"
        "mov\tr1, #6\n\t"
        "mov\tr0, r5\n\t"
        "bl\t__Actor_SetAnim\n\t"
        "mov\tr0, #6\n\t"
        "bl\t__WaitFrames\n\t"
        "mov\tr1, #7\n\t"
        "mov\tr0, r5\n\t"
        "bl\t__Actor_SetAnim\n\t"
        "mov\tr3, #0xc0\n\t"
        "lsl\tr3, #10\n\t"
        "str\tr3, [r5, #0x30]\n\t"
        "mov\tr3, #0x80\n\t"
        "lsl\tr3, #10\n\t"
        "str\tr3, [r5, #0x34]\n\t"
        "mov\tr0, #0x98\n\t"
        "bl\t__PlaySound\n\t"
        "mov\tr3, #0x80\n\t"
        "lsl\tr3, #11\n\t"
        "str\tr3, [r5, #0x28]\n\t"
        "ldrb\tr2, [r7]\n\t"
        "mov\tr3, #0x7e\n\t"
        "and\tr3, r2\n\t"
        "strb\tr3, [r7]\n\t"
        "mov\tr0, r5\n\t"
        "mov\tr1, #0\n\t"
        "bl\t__Actor_SetSpriteFlags\n\t"
        "mov\tr3, #0xa\n\t"
        "ldrsh\tr2, [r6, r3]\n\t"
        "mov\tr3, #2\n\t"
        "ldrsh\tr1, [r6, r3]\n\t"
        "mov\tr0, #0\n\t"
        "bl\t__Func_8092158\n\t"
        "mov\tr0, r5\n\t"
        "mov\tr1, #6\n\t"
        "bl\t__Actor_SetAnim\n\t"
        "mov\tr0, r5\n\t"
        "mov\tr1, #1\n\t"
        "bl\t__Actor_SetSpriteFlags\n\t"
        "mov\tr3, r8\n\t"
        "strb\tr3, [r7]\n\t"
        "1:\n\t"
        "add\tsp, #0xc\n\t"
        : "=r"(actor), "=r"(vec), "=r"(flagPtr), "=r"(savedFlags)
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)actor;
    (void)vec;
    (void)flagPtr;
    (void)savedFlags;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\t0xfff00000\n\t"
);
