typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern u8 *MapActor_GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern int OvlFunc_947_2008ddc_NoArgs(void) asm("OvlFunc_947_2008ddc");
extern void __Func_8010704(int, int, int, int, int, int);
extern void Func_8010704_NoArgs(void) asm("__Func_8010704");
extern void OvlFunc_947_2008528(int, int, int, int, int, int);
extern void OvlFunc_947_2008528_NoArgs(void) asm("OvlFunc_947_2008528");
extern void __Actor_SetAnim(u8 *actor, int animation);

int OvlFunc_947_2008f58(int actor_id)
{
    register int saved_id asm("r5");
    register u8 *actor asm("r7");
    register u8 *work asm("r6");

    asm volatile(
        "sub sp, #0x30\n\t"
        "mov r5, r0"
        : "=r"(saved_id)
        :
        : "memory");
    MapActor_GetActor_NoArgs();
    asm volatile(
        "add r3, sp, #0xc\n\t"
        "add r6, sp, #0x18\n\t"
        "str r3, [sp]\n\t"
        "add r3, sp, #8\n\t"
        "mov r7, r0\n\t"
        "str r3, [sp, #4]\n\t"
        "add r1, sp, #0x14\n\t"
        "add r2, sp, #0x10\n\t"
        "mov r0, r5\n\t"
        "mov r3, r6"
        : "=r"(actor), "=r"(work)
        : "r"(saved_id)
        : "r0", "r1", "r2", "r3", "memory");

    if (!OvlFunc_947_2008ddc_NoArgs()) {
        asm volatile("mov r0, #0\n\tb .L2008f58_end" ::: "r0");
    }

    asm volatile(
        "ldr r4, [r6, #0x10]\n\t"
        "ldr r0, [sp, #0xc]\n\t"
        "ldr r5, [r6, #8]\n\t"
        "ldr r1, [sp, #8]\n\t"
        "ldr r2, [sp, #0x14]\n\t"
        "add r1, r4\n\t"
        "ldr r3, [sp, #0x10]\n\t"
        "add r0, r5\n\t"
        "str r5, [sp]\n\t"
        "str r4, [sp, #4]"
        :
        : "r"(work)
        : "r0", "r1", "r2", "r3", "r4", "r5", "memory");
    Func_8010704_NoArgs();
    asm volatile(
        "ldr r0, [sp, #0x10]\n\t"
        "ldr r2, [r6, #0x10]\n\t"
        "ldr r1, [r6, #8]\n\t"
        "str r0, [sp]\n\t"
        "mov r0, #0xff\n\t"
        "ldr r3, [sp, #0x14]\n\t"
        "str r0, [sp, #4]\n\t"
        "mov r0, #0"
        :
        : "r"(work)
        : "r0", "r1", "r2", "r3", "memory");
    OvlFunc_947_2008528_NoArgs();
    __Actor_SetAnim(actor, 1);
    actor[0x23] &= 0xfd;
    asm volatile("mov r0, #1\n.L2008f58_end:\n\tadd sp, #0x30"
                 :
                 :
                 : "r0", "memory");
}
