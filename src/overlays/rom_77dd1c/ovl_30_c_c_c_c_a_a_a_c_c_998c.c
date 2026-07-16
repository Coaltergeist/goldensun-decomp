extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void *__MapActor_GetActor(int id);
extern void __MapActor_SetPos(int id, int x, int y);
extern void __MapActor_SetSpeed(int id, int a, int b);
extern void __Func_80921c4(int id, int a, int b);
extern void __Func_8092848(int id, int a, int b);
extern void __CutsceneWait(int frames);
extern void __MessageID(int id);
extern void __ActorMessage(int id, int arg);
extern void __Func_809280c(int a, int b, int c);
extern void __Func_80925cc(int a, int b);
extern void __Func_8092adc(int id, int a, int b);
extern void __MapActor_SetAnim(int id, int anim);
extern void __MapActor_TravelTo(int id, int x, int y);
extern void __MapActor_WaitMovement(int id);

void OvlFunc_882_200998c(void)
{
    asm volatile(
        "bl\t__CutsceneStart\n\t"
        "mov\tr0, #0\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "cmp\tr0, #0\n\t"
        "beq\t1f\n\t"
        "ldr\tr1, [r0, #8]\n\t"
        "ldr\tr2, [r0, #0x10]\n\t"
        "mov\tr0, #0x16\n\t"
        "bl\t__MapActor_SetPos\n\t"
        "1:\n\t"
        "mov\tr1, #0x80\n\t"
        "mov\tr2, #0x80\n\t"
        "mov\tr0, #0x16\n\t"
        "lsl\tr1, #9\n\t"
        "lsl\tr2, #8\n\t"
        "bl\t__MapActor_SetSpeed\n\t"
        "mov\tr0, #0x16\n\t"
        "ldr\tr1, 11f\n\t"
        "ldr\tr2, 12f\n\t"
        "bl\t__Func_80921c4\n\t"
        "mov\tr2, #0\n\t"
        "mov\tr1, #0\n\t"
        "mov\tr0, #0x16\n\t"
        "bl\t__Func_8092848\n\t"
        "mov\tr0, #0x1e\n\t"
        "bl\t__CutsceneWait\n\t"
        "ldr\tr0, 13f\n\t"
        "bl\t__MessageID\n\t"
        "mov\tr0, #0x16\n\t"
        "mov\tr1, #0\n\t"
        "bl\t__ActorMessage\n\t"
        "mov\tr2, #0\n\t"
        "mov\tr1, #0x16\n\t"
        "mov\tr0, #0\n\t"
        "bl\t__Func_809280c\n\t"
        "mov\tr0, #0xa\n\t"
        "bl\t__CutsceneWait\n\t"
        "mov\tr1, #1\n\t"
        "mov\tr0, #0\n\t"
        "bl\t__Func_80925cc\n\t"
        "mov\tr0, #0x14\n\t"
        "bl\t__CutsceneWait\n\t"
        "mov\tr1, #0x80\n\t"
        "mov\tr2, #0\n\t"
        "mov\tr0, #0x16\n\t"
        "lsl\tr1, #7\n\t"
        "bl\t__Func_8092adc\n\t"
        "mov\tr0, #0x16\n\t"
        "mov\tr1, #0\n\t"
        "bl\t__ActorMessage\n\t"
        "mov\tr0, #0x16\n\t"
        "mov\tr1, #2\n\t"
        "bl\t__MapActor_SetAnim\n\t"
        "mov\tr0, #0\n\t"
        "bl\t__MapActor_GetActor\n\t"
        "cmp\tr0, #0\n\t"
        "beq\t2f\n\t"
        "mov\tr3, #0xa\n\t"
        "ldrsh\tr1, [r0, r3]\n\t"
        "mov\tr3, #0x12\n\t"
        "ldrsh\tr2, [r0, r3]\n\t"
        "mov\tr0, #0x16\n\t"
        "bl\t__MapActor_TravelTo\n\t"
        "2:\n\t"
        "mov\tr0, #0x16\n\t"
        "bl\t__MapActor_WaitMovement\n\t"
        "mov\tr0, #0x16\n\t"
        "mov\tr1, #0\n\t"
        "mov\tr2, #0\n\t"
        "bl\t__MapActor_SetPos\n\t"
        "mov\tr1, #0x80\n\t"
        "mov\tr0, #0\n\t"
        "lsl\tr1, #1\n\t"
        "ldr\tr2, 14f\n\t"
        "bl\t__Func_80921c4\n\t"
        :
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    __CutsceneEnd();
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\t0x119\n\t"
    "12:\n\t"
    ".word\t0x1fb\n\t"
    "13:\n\t"
    ".word\t0xe7b\n\t"
    "14:\n\t"
    ".word\t0x205\n\t"
);
