typedef unsigned char u8;
typedef signed short s16;

extern u8 gState[];
extern u8 *__MapActor_GetActor(int actor);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_808edac(int, int, int);
extern void __Func_808ee0c(void);
extern void OvlFunc_960_2008ce4(void);
extern int __StartTask(void (*task)(void), int priority);

int OvlFunc_960_2008dc8(void)
{
    register int stateValue asm("r2");
    register int expected asm("r3");
    register int result asm("r0");
    asm volatile(
        "ldr r3, =gState\n\t"
        "mov r1, #0xe0\n\t"
        "lsl r1, #1\n\t"
        "add r3, r1\n\t"
        "mov r1, #0\n\t"
        "ldrsh r2, [r3, r1]\n\t"
        "ldr r3, =0xa5\n\t"
        "sub sp, #8"
        : "=r" (stateValue), "=r" (expected)
        :
        : "r1");
    if (stateValue == expected) {

    __MapActor_GetActor(0xe)[0x23] = 2;
    {
        register u8 zero asm("r5") = 0;
        register int x asm("r1") = 0xf8;
        register int y asm("r2") = 0xb2;
        u8 *actor = __MapActor_GetActor(0xe);
        actor += 0x55;
        asm volatile("" : "+r" (actor));
        asm volatile("mov r1, #0xf8\n\tmov r2, #0xb2"
                     : "=r" (x), "=r" (y));
        *actor = zero;
        asm volatile(
            "lsl r1, #16\n\t"
            "mov r0, #0xe\n\t"
            "lsl r2, #18\n\t"
            "bl __MapActor_SetPos"
            : "+r" (x), "+r" (y)
            :
            : "r0", "r3", "cc", "memory");
    }
    asm volatile(
        "mov r3, #0xf\n\t"
        "mov r2, #0x2c\n\t"
        "str r3, [sp]\n\t"
        "str r2, [sp, #4]\n\t"
        "mov r3, #1\n\t"
        "mov r0, #0x1f\n\t"
        "mov r1, #0x5f\n\t"
        "mov r2, #1\n\t"
        "bl __Func_8010704"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r1, #1\n\t"
        "mov r2, #1\n\t"
        "mov r0, #0x64\n\t"
        "neg r1, r1\n\t"
        "neg r2, r2\n\t"
        "bl __Func_808edac"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    __Func_808ee0c();
    asm volatile(
        "mov r3, #0xc\n\t"
        "mov r2, #0x47\n\t"
        "str r3, [sp]\n\t"
        "str r2, [sp, #4]\n\t"
        "mov r0, #0x7f\n\t"
        "mov r1, #0x7f\n\t"
        "mov r2, #1\n\t"
        "mov r3, #1\n\t"
        "bl __Func_8010704"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r1, #0xc8\n\t"
        "ldr r0, =OvlFunc_960_2008ce4\n\t"
        "lsl r1, #4\n\t"
        "bl __StartTask"
        : "=r" (result) : : "r1", "r2", "r3", "cc", "memory");
    }
    asm volatile("add sp, #8" : : : "memory");
    return result;
}
