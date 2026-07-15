typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 L49 asm(".L49");
extern u32 L20 asm(".L20");
extern u32 L31 asm(".L31");

extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetAnim(int actor_id, int anim);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __CutsceneWait(int frames);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Actor_SetAnim(u8 *actor, int anim);
extern void __WaitFrames(int frames);

void OvlFunc_common1_1254(int actor_id_arg)
{
    register u32 addr asm("r3");
    register int actor_id asm("r6");
    register u8 *state asm("r7");
    register u8 *actor asm("r5");

    asm volatile("ldr %0, =iwram_3001e68" : "=r"(addr));
    actor_id = actor_id_arg;
    state = *(u8 **)addr;

    {
        register u8 *actor_raw asm("r0") = __MapActor_GetActor(actor_id);
        register u8 *flag_addr asm("r2");
        register u32 flag_val asm("r3");

        asm volatile(
            "ldr r3, =gState\n\t"
            "mov r1, #0xf9\n\t"
            "lsl r1, r1, #1\n\t"
            "add r2, r3, r1\n\t"
            "ldrb r3, [r2]\n\t"
            "mov r5, r0"
            : "=r"(flag_addr), "=r"(flag_val), "=r"(actor)
            : "r"(actor_raw)
            : "r1");

        if (flag_val == 1) {
            *flag_addr = 0;
            __MapActor_SetAnim(actor_id, 1);
            asm volatile("b .Lmerge_common1_1254\n\t.align 2, 0\n\t.pool");
        }
    }

    asm volatile(
        "mov r1, #128\n\t"
        "mov r0, r6\n\t"
        "lsl r1, r1, #7\n\t"
        "mov r2, #30\n\t"
        "bl __Func_8092adc"
        :
        : "r"(actor_id)
        : "r0", "r1", "r2", "r3", "lr", "memory");
    __MapActor_SetAnim(actor_id, 3);
    __CutsceneWait(0x1e);

    asm volatile(".Lmerge_common1_1254:");

    asm volatile(
        "mov r2, #0\n\t"
        "mov r3, #0xf\n\t"
        "strb r2, [%0, #7]\n\t"
        "strb r3, [%0, #6]\n\t"
        "ldr r3, .Lp49_1254\n\t"
        "ldr r3, [r3]\n\t"
        "str r3, [%1, #8]\n\t"
        "ldr r3, .Lp20_1254\n\t"
        "ldr r3, [r3]\n\t"
        "str r3, [%1, #0x10]\n\t"
        "ldr r3, .Lp31_1254\n\t"
        "ldr r3, [r3]\n\t"
        "strh r3, [%1, #6]\n\t"
        "mov r3, #0x80\n\t"
        "lsl r3, r3, #24\n\t"
        "mov r0, %1\n\t"
        "str r3, [%1, #0x38]\n\t"
        "str r3, [%1, #0x40]\n\t"
        "add r0, r0, #0x55\n\t"
        "mov r3, #3\n\t"
        "str r2, [%1, #0x24]\n\t"
        "str r2, [%1, #0x2c]\n\t"
        "ldr r1, .Lp0_1254\n\t"
        "strb r3, [r0]\n\t"
        "mov r3, %1\n\t"
        "add r3, r3, #0x22\n\t"
        "strb r1, [r3]\n\t"
        "mov r0, %1\n\t"
        "str r2, [%1, #0xc]\n\t"
        "str r2, [%1, #0x14]\n\t"
        "mov r1, #1\n\t"
        "bl __Actor_SetSpriteFlags"
        :
        : "r"(state), "r"(actor)
        : "r0", "r1", "r2", "r3", "lr", "memory");

    __Actor_SetAnim(actor, 0);
    __Actor_SetAnim(actor, 1);
    __WaitFrames(1);

    asm volatile(
        "b .Lfuncend_1254\n\t"
        ".align 2, 0\n\t"
        ".Lp0_1254: .word 0\n\t"
        ".Lp49_1254: .word .L49\n\t"
        ".Lp20_1254: .word .L20\n\t"
        ".Lp31_1254: .word .L31\n\t"
        ".Lfuncend_1254:");
}
