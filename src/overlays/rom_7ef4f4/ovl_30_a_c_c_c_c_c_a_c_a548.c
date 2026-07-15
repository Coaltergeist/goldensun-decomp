extern int __GetFlag(int);
extern void __ClearFlag(int);
extern void __SetFlag(int);
extern void __PlaySound(int);
extern void __CutsceneStart(void);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __Func_8010704(int, int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_965_200a548(void)
{
    {
        register int flag985 asm("r0");
        asm volatile("ldr r0, =0x985\n\tsub sp, #8" : "=r"(flag985));
        if (__GetFlag(flag985) != 0) {
            register int flag asm("r0");
            asm volatile("ldr r0, =0x985" : "=r"(flag));
            __ClearFlag(flag);
            __PlaySound(0x9d);
            __CutsceneStart();
            {
                register int a asm("r0");
                register int b asm("r1");
                register int c asm("r2");
                asm volatile("mov r1, #0x94\n\tmov r0, #8\n\tlsl r1, #1\n\tmov r2, #0xf0"
                             : "=r"(a), "=r"(b), "=r"(c));
                __MapActor_TravelTo(a, b, c);
            }
            __MapActor_TravelTo(9, 0x138, 0xf0);
            __MapActor_WaitMovement(8);
            __MapActor_WaitMovement(9);
            asm volatile("mov r3, #0x11\n\tmov r2, #0xe\n\tstr r3, [sp]\n\tstr r2, [sp, #4]"
                         : : : "r2", "r3", "memory");
            __Func_8010704(0, 0xe, 4, 1);
            __CutsceneEnd();
            {
                register int flag301 asm("r0");
                asm volatile("ldr r0, =0x301" : "=r"(flag301));
                if (__GetFlag(flag301) != 0) {
                    asm volatile("ldr r0, =0x301" : "=r"(flag301));
                    __ClearFlag(flag301);
                } else {
                    asm volatile("ldr r0, =0x301" : "=r"(flag301));
                    __SetFlag(flag301);
                }
            }
        }
    }
    asm volatile("add sp, #8");
}
