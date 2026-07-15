typedef unsigned char u8;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern u8 *__MapActor_GetActor(int);
extern void OvlFunc_927_2008244(int, int, int, int, int, int);
extern void OvlFunc_927_2008244_abi(void) asm("OvlFunc_927_2008244");

void OvlFunc_927_2009520(void)
{
    register int x asm("r5");
    register int y asm("r7");
    register int one asm("r6");
    register int zero asm("r8");
    u8 *actor;

    __CutsceneStart();
    actor = __MapActor_GetActor(0xb);
    x = *(int *)(actor + 8) >> 20;
    actor = __MapActor_GetActor(0xb);
    y = *(int *)(actor + 0x10) >> 20;

    asm volatile("mov r3, #0xff\n\tmov r6, #1\n\tstr r3, [sp, #4]\n\t"
                 "mov r1, r5\n\tmov r2, r7\n\tmov r3, #1\n\t"
                 "mov r0, #2\n\tstr r6, [sp]"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();
    asm volatile("mov r2, #0\n\tmov r8, r2\n\tstr r2, [sp, #4]\n\t"
                 "add r1, r5, #1\n\tmov r2, r7\n\tmov r3, #1\n\t"
                 "mov r0, #2\n\tstr r6, [sp]"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();
    asm volatile("mov r3, r8\n\tstr r3, [sp, #4]\n\t"
                 "sub r1, r5, #1\n\tmov r2, r7\n\tmov r3, #1\n\t"
                 "mov r0, #2\n\tstr r6, [sp]"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();
    asm volatile("mov r3, r8\n\tadd r2, r7, #1\n\tstr r3, [sp, #4]\n\t"
                 "mov r1, r5\n\tmov r3, #1\n\tmov r0, #2\n\t"
                 "str r6, [sp]"
                 : : : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_927_2008244_abi();
    asm volatile("" : "=r"(one), "=r"(zero));
    OvlFunc_927_2008244(2, x, y - 1, 1, one, zero);

    if (x == 0x24 && y == 0x18) {
        actor = __MapActor_GetActor(0xb);
        actor[0x55] = zero;
        *(int *)(actor + 0x14) = -0x20000;
        *(int *)(actor + 0xc) = -0x20000;
    }
    __CutsceneEnd();
}
