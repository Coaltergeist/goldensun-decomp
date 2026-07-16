extern void *__MapActor_GetActor(int id);
extern void __MapActor_SetSpeed(int id, int a, int b);
extern void __Actor_TravelTo(void *actor, int x, int z, int y);
extern void __MapActor_WaitMovement(int id);
extern void __PlaySound(int id);
extern void OvlFunc_964_20091e0(int id);
extern void __CutsceneWait(int frames);

void OvlFunc_964_2009c2c(int actorId)
{
    register void *p5 asm("r5");
    register int other asm("r6");
    register int self asm("r7");
    register int i asm("r8");
    register int bestY asm("r10");

    asm volatile(
        "ldr\tr2, 11f\n\t"
        "mov\tr3, #0\n\t"
        "mov\tr7, r0\n\t"
        "mov\tr10, r2\n\t"
        "mov\tr8, r3\n\t"
        "1:\n\t"
        "mov\tr6, r8\n\t"
        "add\tr6, #0xa\n\t"
        "cmp\tr6, r7\n\t"
        "beq\t2f\n\t"
        "mov\tr0, r6\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "ldr\tr5, [r0, #8]\n\t"
        "mov\tr0, r7\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "ldr\tr3, [r0, #8]\n\t"
        "asr\tr5, #20\n\t"
        "asr\tr3, #20\n\t"
        "cmp\tr5, r3\n\t"
        "bne\t2f\n\t"
        "mov\tr0, r6\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "ldr\tr5, [r0, #0x10]\n\t"
        "mov\tr0, r7\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "ldr\tr3, [r0, #0x10]\n\t"
        "asr\tr5, #20\n\t"
        "asr\tr3, #20\n\t"
        "cmp\tr5, r3\n\t"
        "bne\t2f\n\t"
        "mov\tr0, r6\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr2, #0x80\n\t"
        "ldr\tr3, [r0, #0xc]\n\t"
        "lsl\tr2, #13\n\t"
        "add\tr3, r2\n\t"
        "cmp\tr10, r3\n\t"
        "bgt\t2f\n\t"
        "mov\tr0, r6\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr2, #0x80\n\t"
        "ldr\tr3, [r0, #0xc]\n\t"
        "lsl\tr2, #13\n\t"
        "add\tr2, r3\n\t"
        "mov\tr0, r7\n\t"
        "mov\tr10, r2\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "add\tr0, #0x64\n\t"
        "strh\tr6, [r0]\n\t"
        "2:\n\t"
        "mov\tr3, #1\n\t"
        "add\tr8, r3\n\t"
        "mov\tr2, r8\n\t"
        "cmp\tr2, #4\n\t"
        "bls\t1b\n\t"
        "mov\tr1, #0x80\n\t"
        "mov\tr2, #0x80\n\t"
        "lsl\tr1, #11\n\t"
        "lsl\tr2, #10\n\t"
        "mov\tr0, r7\n\t"
        "bl\t__MapActor_SetSpeed\n\t"
        "mov\tr0, r7\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr6, r0\n\t"
        "mov\tr0, r7\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "mov\tr5, r0\n\t"
        "mov\tr0, r7\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "ldr\tr1, [r5, #8]\n\t"
        "ldr\tr3, [r0, #0x10]\n\t"
        "mov\tr2, r10\n\t"
        "mov\tr0, r6\n\t"
        "bl\t__Actor_TravelTo\n\t"
        "mov\tr0, r7\n\t"
        "bl\t__MapActor_WaitMovement\n\t"
        "mov\tr0, #0xbc\n\t"
        "bl\t__PlaySound\n\t"
        "mov\tr0, r7\n\t"
        "bl\tOvlFunc_964_20091e0\n\t"
        "mov\tr0, #0x1e\n\t"
        "bl\t__CutsceneWait\n\t"
        : "=r"(p5), "=r"(other), "=r"(self), "=r"(i), "=r"(bestY)
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)p5;
    (void)other;
    (void)self;
    (void)i;
    (void)bestY;
    (void)actorId;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\t0xffb00000\n\t"
);
