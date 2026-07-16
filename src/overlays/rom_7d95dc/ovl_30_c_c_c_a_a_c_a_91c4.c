extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern void __Func_8092848(int a, int b, int c);
extern void __MessageID(int id);
extern void OvlFunc_953_2009c48(int actor);
extern void __Func_8092adc(int actor, int a, int b);
extern void __Func_809259c(int actor, int mode);
extern void __ActorMessage(int actor, int arg);
extern int __Func_8093554(void);
extern void __WaitFrames(int count);
extern void __Func_80933d4(int a, int b);
extern void __Func_80933f8(int a, int b, int c, int d);
extern void __Func_8093530(void);
extern int iwram_3001ebc;
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int id);

void OvlFunc_953_20091c4(void)
{
    register int flag asm("r5");

    asm volatile(
        "bl\t__CutsceneStart\n\t"
        "ldr\tr0, 11f\n\t"
        "bl\t__GetFlag\n\t"
        "mov\tr5, r0\n\t"
        "cmp\tr5, #0\n\t"
        "beq\t1f\n\t"
        "mov\tr1, #0\n\t"
        "mov\tr2, #0x28\n\t"
        "mov\tr0, #0x11\n\t"
        "bl\t__Func_8092848\n\t"
        "ldr\tr0, 12f\n\t"
        "bl\t__MessageID\n\t"
        "mov\tr0, #0x11\n\t"
        "bl\tOvlFunc_953_2009c48\n\t"
        "mov\tr1, #0xc0\n\t"
        "mov\tr0, #0x11\n\t"
        "lsl\tr1, #6\n\t"
        "mov\tr2, #0x14\n\t"
        "bl\t__Func_8092adc\n\t"
        "b\t2f\n\t"
        "1:\n\t"
        "mov\tr1, #2\n\t"
        "mov\tr0, #0x11\n\t"
        "bl\t__Func_809259c\n\t"
        "ldr\tr0, 13f\n\t"
        "bl\t__MessageID\n\t"
        "mov\tr1, #0\n\t"
        "mov\tr0, #0x11\n\t"
        "bl\t__ActorMessage\n\t"
        "bl\t__Func_8093554\n\t"
        "add\tr0, #0x55\n\t"
        "strb\tr5, [r0]\n\t"
        "mov\tr0, #1\n\t"
        "bl\t__WaitFrames\n\t"
        "ldr\tr0, 14f\n\t"
        "ldr\tr1, 15f\n\t"
        "bl\t__Func_80933d4\n\t"
        "mov\tr0, #0x87\n\t"
        "mov\tr1, #1\n\t"
        "mov\tr2, #0xd0\n\t"
        "lsl\tr0, #18\n\t"
        "neg\tr1, r1\n\t"
        "lsl\tr2, #16\n\t"
        "mov\tr3, #1\n\t"
        "bl\t__Func_80933f8\n\t"
        "bl\t__Func_8093530\n\t"
        "ldr\tr3, 16f\n\t"
        "ldr\tr1, [r3]\n\t"
        "mov\tr3, #0xe0\n\t"
        "lsl\tr3, #1\n\t"
        "add\tr2, r1, r3\n\t"
        "add\tr3, #0x40\n\t"
        "str\tr3, [r2]\n\t"
        "sub\tr3, #0x38\n\t"
        "add\tr2, r1, r3\n\t"
        "mov\tr3, #0x20\n\t"
        "str\tr3, [r2]\n\t"
        "bl\t__MapTransitionOut\n\t"
        "bl\t__WaitMapTransition\n\t"
        "ldr\tr0, 17f\n\t"
        "bl\t__GetFlag\n\t"
        "cmp\tr0, #0\n\t"
        "beq\t3f\n\t"
        "mov\tr0, #0x46\n\t"
        "bl\t__Func_8091e9c\n\t"
        "b\t2f\n\t"
        "3:\n\t"
        "mov\tr0, #7\n\t"
        "bl\t__Func_8091e9c\n\t"
        "2:\n\t"
        "bl\t__CutsceneEnd\n\t"
        : "=r"(flag)
        :
        : "r0", "r1", "r2", "r3", "r4", "lr", "cc", "memory");
    (void)flag;
}

asm(
    ".align 2, 0\n\t"
    "11:\n\t"
    ".word\t0x8a4\n\t"
    "12:\n\t"
    ".word\t0x206f\n\t"
    "13:\n\t"
    ".word\t0x206d\n\t"
    "14:\n\t"
    ".word\t0x66666\n\t"
    "15:\n\t"
    ".word\t0xcccc\n\t"
    "16:\n\t"
    ".word\tiwram_3001ebc\n\t"
    "17:\n\t"
    ".word\t0x8a3\n\t"
);
