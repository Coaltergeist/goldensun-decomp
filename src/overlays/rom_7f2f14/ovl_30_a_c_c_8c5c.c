typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__CreateActor(int actor_type, int x, int z, int y);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Actor_SetAnim(u8 *actor, int animation);
extern void __Actor_SetScript(u8 *actor, void *script);
extern void OvlFunc_968_2008b98(void);

u8 *OvlFunc_968_2008c5c(int x, int y, void *script)
{
    register void *saved_script asm("r6");
    register u8 *actor asm("r5");
    register u8 *result asm("r0");

    asm volatile (
        "mov r4, r0\n\t"
        "mov r3, r1\n\t"
        "lsl r4, #16\n\t"
        "mov r0, #0x8e\n\t"
        "mov r6, r2\n\t"
        "lsl r3, #16\n\t"
        "lsl r0, #1\n\t"
        "mov r1, r4\n\t"
        "mov r2, #0\n\t"
        "bl __CreateActor\n\t"
        "mov r5, r0\n\t"
        "mov r0, #0"
        : "=r" (saved_script), "=r" (actor), "=r" (result)
        :
        : "r1", "r2", "r3", "r4", "cc", "memory");

    if (actor != 0) {
        *(u32 *)(actor + 0x30) = 0x10000;
        *(u32 *)(actor + 0x34) = 0x10000;
        __Actor_SetSpriteFlags(actor, 0);
        __Actor_SetAnim(actor, 7);
        asm volatile (
            "mov r3, r5\n\t"
            "mov r2, #0\n\t"
            "add r3, #0x55\n\t"
            "strb r2, [r3]\n\t"
            "mov r1, r5\n\t"
            "add r3, #4\n\t"
            "str r2, [r5, #0xc]\n\t"
            "add r1, #0x23\n\t"
            "strb r2, [r3]\n\t"
            "mov r3, #2\n\t"
            "strb r3, [r1]\n\t"
            "ldr r3, =OvlFunc_968_2008b98\n\t"
            "str r3, [r5, #0x6c]\n\t"
            "mov r3, r5\n\t"
            "add r3, #0x63\n\t"
            "mov r0, r5\n\t"
            "strb r2, [r3]\n\t"
            "mov r1, r6\n\t"
            "bl __Actor_SetScript"
            : : "r" (actor)
            : "r0", "r1", "r2", "r3", "cc", "memory");
        result = actor;
    }

    return result;
}
