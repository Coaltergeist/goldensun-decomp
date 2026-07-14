typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __Actor_SetAnim(u8 *actor, int animation);

void OvlFunc_945_2008284(u8 *object)
{
    u8 *actor = __MapActor_GetActor(9);
    u8 *state;
    u8 zero;
    register int state_value asm("r1");

    zero = object[0x5b];
    if (zero != 0)
        return;

    state = actor + 0x63;
    state_value = *state;
    __asm__ volatile ("" : "+r" (state_value));
    if (state_value == 1) {
        register int state_zero asm("r3");
        __asm__ volatile (
            "mov r2, #0xd0\n\t"
            "lsl r2, #8\n\t"
            "strh r2, [r5, #6]\n\t"
            "ldr r3, =0\n\t"
            "mov r2, r5\n\t"
            "add r2, #0x62\n\t"
            "strb r1, [r2]"
            : "=r" (state_zero)
            : "r" (object), "r" (state_value)
            : "r2", "memory", "cc");
        goto store_state;
    }
    if (state_value == 2) {
        if (object[0x62] != 0)
            __Actor_SetAnim(object, 3);
        object[0x62] = zero;
        *state = zero;
        __asm__ volatile ("b .L945_end\n\t.pool");
    }
    if (state_value == 3) {
        register int state_zero asm("r3");
        __asm__ volatile ("ldr r3, =0" : "=r" (state_zero));
        *(u16 *)(object + 6) = zero;
store_state:
        *state = state_zero;
    }
end:
    __asm__ volatile (".L945_end:");
    ;
}
