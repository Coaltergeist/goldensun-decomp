extern void __MessageID(int message);
extern void OvlFunc_969_2008894(int a);
extern void __PlaySound(int sound);
extern void __Func_8012330(int arg0, int arg1, int arg2);
extern void __Func_80933d4(int arg0, int arg1);
extern void __Func_80933f8(int x, int y, int z, int mode);
extern void __Func_8093530(void);
extern void __CutsceneWait(int frames);
extern void __Func_80925cc(int actor, int animation);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __MapActor_Surprise(int actor, int emote);
extern void __Func_809259c(int actor, int value);

void OvlFunc_969_200cb28(void) {
    __MessageID(0x2829);
    OvlFunc_969_2008894(0x15);
    __PlaySound(0x3e);

    {
        register int a0 asm("r0");
        register int a1 asm("r1");
        register int a2 asm("r2");
        asm volatile(
            "mov %0, #0x80\n"
            "mov %1, #0x80\n"
            "mov %2, #0x80\n"
            "lsl %2, %2, #9\n"
            "lsl %0, %0, #9\n"
            "lsl %1, %1, #9\n"
            : "=r"(a0), "=r"(a1), "=r"(a2));
        __Func_8012330(a0, a1, a2);
    }

    __Func_80933d4(0x4cccc, 0x9999);
    __Func_80933d4(0x80 << 11, 0x80 << 8);

    {
        register int a0 asm("r0");
        register int a1 asm("r1");
        register int a2 asm("r2");
        register int a3 asm("r3");
        asm volatile(
            "mov %0, #0xc0\n"
            "mov %2, #0xee\n"
            "mov %3, #1\n"
            "lsl %2, %2, #16\n"
            "ldr %1, =0xffc00000\n"
            "lsl %0, %0, #16\n"
            : "=r"(a0), "=r"(a1), "=r"(a2), "=r"(a3));
        __Func_80933f8(a0, a1, a2, a3);
    }

    __Func_8093530();
    __CutsceneWait(0x28);
    __Func_80925cc(0x15, 1);

    {
        register int a0 asm("r0");
        register int a1 asm("r1");
        register int a2 asm("r2");
        asm volatile(
            "mov %2, #0x28\n"
            "ldr %0, =0x2015\n"
            "mov %1, #0\n"
            : "=r"(a0), "=r"(a1), "=r"(a2));
        __Func_8093040(a0, a1, a2);
    }

    __Func_80925cc(6, 3);
    OvlFunc_969_2008894(6);

    {
        register int a0 asm("r0");
        register int a1 asm("r1");
        asm volatile(
            "mov %1, #0x81\n"
            "lsl %1, %1, #1\n"
            "mov %0, #0x15\n"
            : "=r"(a0), "=r"(a1));
        __MapActor_Surprise(a0, a1);
    }

    __CutsceneWait(0x3c);

    {
        register int a0 asm("r0");
        register int a1 asm("r1");
        register int a2 asm("r2");
        asm volatile(
            "mov %2, #0x50\n"
            "ldr %0, =0x2015\n"
            "mov %1, #0\n"
            : "=r"(a0), "=r"(a1), "=r"(a2));
        __Func_8093040(a0, a1, a2);
    }

    {
        register int a0 asm("r0");
        register int a1 asm("r1");
        asm volatile(
            "mov %1, #0x81\n"
            "lsl %1, %1, #1\n"
            "mov %0, #6\n"
            : "=r"(a0), "=r"(a1));
        __MapActor_Surprise(a0, a1);
    }

    __CutsceneWait(0x28);
    __Func_809259c(6, 2);
    OvlFunc_969_2008894(6);
}
