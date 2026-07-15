typedef struct MapActor {
    unsigned char pad[8];
    int position;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void CallPlacement(int a, int b, int c, int d) asm("__Func_8010704");
extern void CallPreparedPlacement(void) asm("__Func_8010704");

void OvlFunc_903_2008348(void)
{
    register int actorId asm("r0") = 9;
    register int position asm("r3");
    register int area asm("r5");
    register int flag asm("r0");

    asm volatile("sub sp,#8" : "+r" (actorId) : : "memory");
    position = __MapActor_GetActor(actorId)->position;
    if (position < 0)
        position += 0xfffff;

    asm volatile("ldr %0,=0x861" : "=r" (flag));
    area = position >> 20;
    __ClearFlag(flag);
    asm volatile("ldr %0,=0x862" : "=r" (flag));
    __ClearFlag(flag);

    if (area == 0xf) {
        asm volatile("mov r3,#0x10\nmov r2,#0x12\nstr r3,[sp]\nstr r2,[sp,#4]" ::: "r2", "r3", "memory");
        CallPlacement(0x2f, 0x12, 1, 2);
    } else if (area == 0x10) {
        asm volatile(
            "mov r3,#0x12\nstr r3,[sp,#4]\n"
            "mov r0,#0x30\nmov r1,#0x12\nmov r2,#1\nmov r3,#2\nstr r5,[sp]"
            ::: "r0", "r1", "r2", "r3", "memory");
        CallPreparedPlacement();
        asm volatile("ldr %0,=0x861" : "=r" (flag));
        __SetFlag(flag);
    } else {
        asm volatile("mov r3,#0x10\nmov r2,#0x12\nstr r3,[sp]\nstr r2,[sp,#4]" ::: "r2", "r3", "memory");
        CallPlacement(0x2f, 0x12, 1, 2);
        asm volatile("ldr %0,=0x862" : "=r" (flag));
        __SetFlag(flag);
    }
    asm volatile("add sp,#8" ::: "memory");
}
