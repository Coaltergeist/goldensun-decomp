typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *iwram_3001ebc;
extern u8 gState[];

extern void Func_809537c(int value);
extern u16 Func_808b074(int value);
extern u8 *GetFieldActor(int actor);
extern void Func_808adf0(u8 *actor);
extern void Func_808b320(int a, int b);
extern void Func_808b320_NoArgs(void) asm("Func_808b320");

void Func_8091f14(int argument, int value)
{
    register u8 *state asm("r8");
    register int flag asm("r5");
    register int saved_value asm("r7");
    register int masked_argument asm("r0");
    register u8 *global asm("r6");

    asm volatile(
        "ldr r3, =iwram_3001ebc\n\t"
        "mov r5, #0x80\n\t"
        "ldr r3, [r3]\n\t"
        "lsl r5, #4\n\t"
        "mov r8, r3\n\t"
        "and r5, r0\n\t"
        "mov r3, #0xff\n\t"
        "mov r7, r1\n\t"
        "and r0, r3"
        : "=r"(state), "=r"(flag), "=r"(saved_value),
          "=r"(masked_argument)
        : "r"(argument), "r"(value)
        : "r3", "memory");

    if (flag == 0)
        Func_809537c(masked_argument);

    asm volatile(
        "mov r1, #0x96\n\t"
        "lsl r1, #1\n\t"
        "ldr r6, =gState\n\t"
        "add r3, r7, r1\n\t"
        "mov r1, #0x8d\n\t"
        "lsl r1, #2\n\t"
        "orr r3, r5\n\t"
        "add r2, r6, r1\n\t"
        "strh r3, [r2]"
        : "=r"(global)
        : "r"(saved_value), "r"(flag)
        : "r1", "r2", "r3", "memory");
    *(u16 *)(state + 0x17c) = Func_808b074(saved_value);
    if (*(s16 *)(state + 0x19e) == 3) {
        register int actor_id asm("r0");
        asm volatile(
            "mov r1, #0xfa\n\t"
            "lsl r1, #1\n\t"
            "add r3, r6, r1\n\t"
            "ldr r0, [r3]"
            : "=r"(actor_id)
            : "r"(global)
            : "r1", "r3", "memory");
        Func_808adf0(GetFieldActor(actor_id) + 8);
    }
    asm volatile("mov r1, #0\n\tmov r0, #0" ::: "r0", "r1");
    Func_808b320_NoArgs();
}
