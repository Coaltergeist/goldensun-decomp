typedef unsigned char u8;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern u8 *__MapActor_GetActor(int);
extern void __SetFlag(int);
extern void OvlFunc_927_2008244(int, int, int, int, int, int);
extern void OvlFunc_927_2008244_abi(void) asm("OvlFunc_927_2008244");

void OvlFunc_927_2009c34(void)
{
    register int x asm("r6");
    register int y asm("r5");
    register int one asm("r8");
    register int oxff asm("r10");
    register int zero asm("r7");
    u8 *actor;

    __CutsceneStart();
    actor = __MapActor_GetActor(0xe);
    x = *(int *)(actor + 8);
    actor = __MapActor_GetActor(0xe);
    y = *(int *)(actor + 0x10);

    asm volatile("mov r3, #1\n\tstr r3, [sp]\n\t"
                 "asr r6, #20\n\tasr r5, #20\n\t"
                 "mov r8, r3\n\tmov r3, #0xff\n\tstr r3, [sp, #4]\n\t"
                 "mov r2, r5\n\tmov r1, r6\n\tmov r10, r3\n\t"
                 "mov r0, #2\n\tmov r3, #1"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();

    asm volatile("mov r7, #0\n\tmov r3, r8\n\t"
                 "mov r2, r5\n\tadd r1, r6, #1\n\tmov r0, #2\n\t"
                 "str r3, [sp]\n\tstr r7, [sp, #4]"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();

    asm volatile("mov r3, r8\n\t"
                 "mov r2, r5\n\tsub r1, r6, #1\n\tmov r0, #2\n\t"
                 "str r3, [sp]\n\tstr r7, [sp, #4]"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();

    asm volatile("add r2, r5, #1\n\tmov r3, r8\n\t"
                 "mov r1, r6\n\tmov r0, #2\n\t"
                 "str r3, [sp]\n\tstr r7, [sp, #4]"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();

    asm volatile("sub r5, #1\n\tmov r3, r8\n\t"
                 "mov r1, r6\n\tmov r2, r5\n\tmov r0, #2\n\t"
                 "str r3, [sp]\n\tstr r7, [sp, #4]"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();

    asm volatile("" : : "r"(x), "r"(y));

    actor = __MapActor_GetActor(0xe);
    if ((*(int *)(actor + 0x10) >> 20) == 0x1b) {
        actor = __MapActor_GetActor(0xe);
        actor[0x55] = zero;
        *(int *)(actor + 0x14) = -0x20000;
        *(int *)(actor + 0xc) = -0x20000;
        __SetFlag(0x85 << 2);

        OvlFunc_927_2008244(2, 0x2b, 0x17, 1, one, oxff);
    }
    __CutsceneEnd();
}
