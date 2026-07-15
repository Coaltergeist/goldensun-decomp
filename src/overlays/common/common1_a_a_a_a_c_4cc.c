typedef short s16;
typedef int s32;
extern unsigned char gState[];
extern void __Func_808e118(void);
extern void __Func_8019908(int value, int tag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern int __Func_802106c(int a);
extern void __Func_8092c40(int actor, int b);
extern int __Func_8091c7c(int a, int b);

s32 OvlFunc_common1_4cc(int actor_in, int value_in)
{
    register int value asm("r5") = value_in;
    register int actor asm("r6") = actor_in;
    register int message asm("r0");
    s32 result;

    __Func_808e118();
    asm volatile(
        "mov r1, #5\n\t"
        "mov r0, r5\n\t"
        "bl __Func_8019908"
        :
        : "r"(value)
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    asm volatile(
        "ldr r3, =gState\n\t"
        "mov r1, #0xe0\n\t"
        "lsl r1, r1, #1\n\t"
        "add r3, r3, r1\n\t"
        "mov r1, #0\n\t"
        "ldrsh r2, [r3, r1]\n\t"
        "ldr r3, =0x8f\n\t"
        "cmp r2, r3\n\t"
        "bne 1f\n\t"
        "ldr r0, =0x2076\n\t"
        "b 3f\n\t"
        "1:\n\t"
        "ldr r3, =0x90\n\t"
        "cmp r2, r3\n\t"
        "bne 2f\n\t"
        "ldr r0, =0x2078\n\t"
        "b 3f\n\t"
        "2:\n\t"
        "ldr r0, =0x207a\n\t"
        "3:\n\t"
        : "=r"(message)
        :
        : "r1", "r2", "r3", "cc");

    __MessageID(message);
    asm volatile(
        "mov r0, r6\n\t"
        "mov r1, #0\n\t"
        "bl __ActorMessage"
        :
        : "r"(actor)
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");

    {
        register int flagOffset asm("r2");
        register int flagArg asm("r0");
        flagOffset = 0x80;
        flagOffset <<= 2;
        asm volatile("" : "+r"(flagOffset));
        flagArg = value + flagOffset;
        if (__GetFlag(flagArg)) {
            return 2;
        }
    }

    {
        register int flagOffset2 asm("r3");
        flagOffset2 = 0x82;
        flagOffset2 <<= 2;
        value += flagOffset2;
    }
    if (__GetFlag(value)) {
        result = __Func_802106c(0);
        if (result == 1) {
            return 2;
        }
        if (result == 2) {
            return 3;
        }
        {
            register int neg1 asm("r1");
            neg1 = 1;
            asm volatile("" : "+r"(neg1));
            neg1 = -neg1;
            asm volatile("" : "+r"(neg1));
            if (result != neg1) {
                return result;
            }
        }
        return 3;
    }

    __SetFlag(value);
    asm volatile("ldr r0, =0x207c" : "=r"(message));
    __MessageID(message);
    asm volatile(
        "mov r1, #0\n\t"
        "mov r0, r6\n\t"
        "bl __Func_8092c40"
        :
        : "r"(actor)
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
    return __Func_8091c7c(0, 0);
}
