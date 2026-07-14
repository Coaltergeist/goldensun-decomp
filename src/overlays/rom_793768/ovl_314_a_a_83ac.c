typedef unsigned char u8;
typedef signed short s16;

extern u8 *iwram_3001e8c[];
extern void *__MapActor_GetActor(int actor);
extern void OvlFunc_898_2009674(void *object, void *actor, int mode, int flag);

int OvlFunc_898_20083ac(void *argument)
{
    register u8 **globals asm("r3") = iwram_3001e8c;
    register u8 *state asm("r6");
    register u8 *other asm("r5");
    register void *object asm("r7");
    register int zero asm("r2");
    register int flag asm("r10");
    register int mode asm("r8");
    register int actor_arg asm("r0");

    asm volatile(
        "mov r7, r0\n\t"
        "mov r2, #0\n\t"
        "ldr r6, [r3]\n\t"
        "ldr r5, [r3, #0x30]\n\t"
        "mov r3, #0x12\n\t"
        "mov r10, r2\n\t"
        "mov r8, r3\n\t"
        "mov r2, #0x80\n\t"
        "ldr r3, [r7, #0x38]\n\t"
        "lsl r2, #24\n\t"
        "mov r0, #0\n\t"
        "cmp r3, r2\n\t"
        "beq .LOvlFunc_898_20083ac_exit"
        : "=r" (object), "=r" (zero), "=r" (state), "=r" (other),
          "=r" (flag), "=r" (mode), "=r" (actor_arg), "+r" (globals)
        : "r" (argument) : "cc", "memory");

    {
        register void *actor_result asm("r0") = __MapActor_GetActor(actor_arg);
        register void *actor asm("r1");
        register int other_offset asm("r2") = 0x178;
        register u8 *other_address asm("r3") = other + other_offset;
        asm volatile("" : "+r" (other_offset), "+r" (other_address));
        {
        register int other_value asm("r3") = *(s16 *)other_address;
        actor = actor_result;
        asm volatile("" : "+r" (other_value), "+r" (actor));
        if (other_value != 0 ||
            ({ register int state_offset asm("r2") = 0xea4;
               register u8 *state_address asm("r3") = state + state_offset;
               asm volatile("" : "+r" (state_offset), "+r" (state_address));
               *state_address; }) != 0) {
            register int new_mode asm("r3") = 0x1a;
            register int new_flag asm("r2") = 1;
            mode = new_mode;
            flag = new_flag;
            asm volatile("" : "+r" (mode), "+r" (flag));
        }
        OvlFunc_898_2009674(object, actor, mode, flag);
        }
    }
    {
        register int return_value asm("r0") = 0;
        asm volatile("" : "+r" (return_value));
        asm volatile(".LOvlFunc_898_20083ac_exit:");
        return return_value;
    }
}
