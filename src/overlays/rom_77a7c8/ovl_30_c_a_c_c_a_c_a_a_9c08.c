extern void __Func_808c4c0(void);
extern void __Func_80936a0(int value, int mode);
extern void __Func_8093710(void);
extern void __Func_808c44c(void);
extern void __Func_80925cc(int actor, int animation);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int mode);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern void __Func_802899c(int value, int mode);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void __Func_80aa56c(void);
extern void __MapActor_Jump(int actor, int height, int duration);
extern void __Func_8091eb0(int actor, int animation);

void OvlFunc_881_2009c08(void)
{
    __Func_808c4c0();
    __Func_80936a0(0x10000, 6);
    __Func_8093710();
    __Func_808c44c();
    __Func_80925cc(8, 2);
    __MessageID(0xc66);
    __ActorMessage(8, 0);
    __CutsceneWait(0x1e);
    __PlaySound(0x6f);
    {
        register int value asm("r0");
        register int mode asm("r1");
        asm volatile("mov r1, #2\n\tmov r0, #0"
                     : "=r"(value), "=r"(mode));
        __Func_802899c(value, mode);
    }
    {
        register int flag asm("r0");
        asm volatile("ldr r0, =0x16f" : "=r"(flag));
        __ClearFlag(flag);
    }
    {
        register int flag asm("r0");
        asm volatile("ldr r0, =0x171" : "=r"(flag));
        __ClearFlag(flag);
    }
    __Func_80aa56c();
    {
        register int actor asm("r0");
        register int height asm("r1");
        register int duration asm("r2");
        asm volatile(
            "mov r2, #0x1e\n\t"
            "mov r1, #4\n\t"
            "mov r0, #8"
            : "=r"(actor), "=r"(height), "=r"(duration));
        __MapActor_Jump(actor, height, duration);
    }
    {
        register int message asm("r0");
        asm volatile("ldr r0, =0xc67" : "=r"(message));
        __MessageID(message);
    }
    {
        register int actor asm("r0");
        register int mode asm("r1");
        asm volatile("mov r1, #0\n\tmov r0, #8"
                     : "=r"(actor), "=r"(mode));
        __ActorMessage(actor, mode);
    }
    {
        register int flag asm("r0");
        asm volatile("ldr r0, =0x16f" : "=r"(flag));
        __ClearFlag(flag);
    }
    {
        register int flag asm("r0");
        asm volatile("ldr r0, =0x171" : "=r"(flag));
        __SetFlag(flag);
    }
    __Func_80aa56c();
    __CutsceneWait(0x1e);
    __Func_8091eb0(0xc, 6);
}
