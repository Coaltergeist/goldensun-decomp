typedef unsigned char u8;

extern void __Func_8010704(int, int, int, int, int, int);
extern u8 *__MapActor_GetActor(int actor_id);
extern void OvlFunc_964_2008244(int, int, int, int, int, int);

void OvlFunc_964_200a52c(void)
{
    u8 *actor;
    register int x asm("r5");
    register int constant_ff asm("r6");
    register int constant_one asm("r8");
    register int fifth asm("r3") = 0x2c;
    register int sixth asm("r2") = 0x13;
    register int y asm("r2");

    __asm__ volatile ("" : "+r" (fifth), "+r" (sixth));
    __Func_8010704(0x6c, 0x13, 4, 1, fifth, sixth);

    actor = __MapActor_GetActor(0x11);
    x = *(int *)(actor + 8);
    __asm__ volatile ("" : "+r" (x));
    actor = __MapActor_GetActor(0x11);
    y = *(int *)(actor + 0x10);
    __asm__ volatile ("" : "+r" (y));
    x >>= 20;
    __asm__ volatile ("" : "+r" (x));
    __asm__ volatile (
        "mov r3, #1\n\t"
        "mov r1, r5\n\t"
        "asr r2, #20\n\t"
        "mov r6, #0xff\n\t"
        "mov r0, #0\n\t"
        "str r3, [sp]\n\t"
        "str r6, [sp, #4]\n\t"
        "mov r8, r3\n\t"
        "bl OvlFunc_964_2008244"
        : "=r" (constant_one), "=r" (constant_ff), "+r" (y)
        : "r" (x)
        : "r0", "r1", "r3", "cc", "memory");

    actor = __MapActor_GetActor(0x12);
    x = *(int *)(actor + 8);
    __asm__ volatile ("" : "+r" (x));
    actor = __MapActor_GetActor(0x12);
    y = *(int *)(actor + 0x10);
    __asm__ volatile ("" : "+r" (y));
    x >>= 20;
    __asm__ volatile ("" : "+r" (x));
    __asm__ volatile (
        "mov r3, r8\n\t"
        "asr r2, #20\n\t"
        "mov r1, r5\n\t"
        "mov r0, #0\n\t"
        "str r3, [sp]\n\t"
        "str r6, [sp, #4]\n\t"
        "bl OvlFunc_964_2008244"
        : "+r" (y)
        : "r" (x), "r" (constant_one), "r" (constant_ff)
        : "r0", "r1", "r3", "cc", "memory");
}
