extern unsigned char gState[];

extern void __CutsceneStart(void);
extern void __Func_808e118(void);
extern void __ClearFlag(int flag);
extern int __GetFlag(int flag);
extern void __Func_8091f90(int actor, int value);
extern void __Func_8091eb0(int actor, int value);
extern void __CutsceneEnd(void);

void OvlFunc_945_2009978(void)
{
    __CutsceneStart();
    __Func_808e118();
    gState[0x22b] = 3;
    asm volatile("" ::: "memory");
    __ClearFlag(0x8f0);

    if (!__GetFlag(0x928)) {
        register int actor asm("r0");
        asm("ldr %0, =0x6f" : "=r"(actor));
        __Func_8091f90(actor, 0x10);
        __Func_8091eb0(0x3e, 0);
    } else {
        register int flag asm("r0");
        asm("ldr %0, =0x929" : "=r"(flag));
        if (!__GetFlag(flag)) {
            register int actor asm("r0");
            asm("ldr %0, =0x6f" : "=r"(actor));
            __Func_8091f90(actor, 0x12);
            __Func_8091eb0(0x3e, 1);
        } else {
            register int flag2 asm("r0");
            asm("ldr %0, =0x92a" : "=r"(flag2));
            if (!__GetFlag(flag2)) {
                register int actor2 asm("r0");
                asm("ldr %0, =0x6f" : "=r"(actor2));
                __Func_8091f90(actor2, 0x14);
                __Func_8091eb0(0x3e, 2);
            }
        }
    }

    __CutsceneEnd();
}
