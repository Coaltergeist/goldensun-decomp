extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_809280c(int, int, int);
extern void __Func_80925cc(int, int);
extern void __CutsceneWait(int);
extern void __Func_8092c40(int, int);
extern int __Func_8091c7c(int, int);
extern void __Func_809259c(int, int);
extern void __Func_8092adc(int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_885_20080dc(void)
{
    __CutsceneStart();
    if (__GetFlag(0x815)) {
        __MessageID(0x11c4);
        __ActorMessage(0xc, 0);
    } else {
        register int message asm("r5") = 0xf76;
        __asm__ volatile ("@ retain message base" : "+r" (message));
        __MessageID(message);
        __Func_809280c(0xc, 0, 0xa);
        __Func_80925cc(0xc, 2);
        __CutsceneWait(6);
        __asm__ volatile ("mov r1, #0\n\tmov r0, #12\n\tbl __Func_8092c40"
                          : : : "r0", "r1", "r2", "r3", "lr", "memory");
        if (__Func_8091c7c(0, 0) == 0)
            __MessageID(message + 1);
        else
            __MessageID(message + 2);
        __Func_809259c(0xc, 3);
        __ActorMessage(0xc, 0);
        __asm__ volatile ("mov r1, #192\n\tmov r0, #12\n\tlsl r1, r1, #8\n\tmov r2, #10\n\tbl __Func_8092adc"
                          : : : "r0", "r1", "r2", "r3", "lr", "memory");
    }
    __CutsceneEnd();
}
