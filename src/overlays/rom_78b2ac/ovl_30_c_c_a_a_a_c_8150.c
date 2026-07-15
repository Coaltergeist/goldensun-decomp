extern int OvlFunc_890_200a5b0(void);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8091200(int value, int mode);
extern void __Func_8091254(int value);
extern void OvlFunc_890_20089f4(void);

void OvlFunc_890_2008150(void)
{
    register int flag asm("r0");

    if (OvlFunc_890_200a5b0() != 0) {
        asm volatile(
            "mov r0, #0x80\n\t"
            "lsl r0, #2\n\t"
            "bl __GetFlag"
            : "=r" (flag) : : "r1", "r2", "r3", "lr", "memory");
        if (flag == 0) {
            __CutsceneStart();
            __Func_8091200(0x10000, 1);
            __Func_8091254(0x14);
            asm volatile(
                "mov r0, #0x80\n\t"
                "lsl r0, #2\n\t"
                "bl __SetFlag"
                : : : "r0", "r1", "r2", "r3", "lr", "memory");
            __ClearFlag(0x201);
            __ClearFlag(0x202);
            __CutsceneEnd();
        }
    } else {
        asm volatile(
            "ldr r0, .L8\n\t"
            "bl __GetFlag"
            : "=r" (flag) : : "r1", "r2", "r3", "lr", "memory");
        if (flag == 0) {
        __CutsceneStart();
        __Func_8091200(0x2051cc, 1);
        __Func_8091254(0x14);
        asm volatile(
            "ldr r0, .L8\n\t"
            "bl __SetFlag"
            : : : "r0", "r1", "r2", "r3", "lr", "memory");
        asm volatile(
            "mov r0, #0x80\n\t"
            "lsl r0, #2\n\t"
            "bl __ClearFlag"
            : : : "r0", "r1", "r2", "r3", "lr", "memory");
        __ClearFlag(0x202);
        if (__GetFlag(0x80a) == 0)
            OvlFunc_890_20089f4();
        __CutsceneEnd();
        }
    }
}
