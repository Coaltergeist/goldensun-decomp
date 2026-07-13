extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_801776c(int value, int arg);
extern void __PlaySound(int sound);
extern void OvlFunc_941_2008384(void);

void OvlFunc_941_2008460(void)
{
    if (!__GetFlag(0x200) && !__GetFlag(0x202)) {
        register int arg __asm__("r1") = 1;
        register int value __asm__("r0") = 0x1528;

        __asm__ volatile ("" : : "r" (arg), "r" (value));
        __Func_801776c(value, arg);
        __PlaySound(0x9d);
        OvlFunc_941_2008384();
        __SetFlag(0x202);
        __ClearFlag(0x201);
    }
}
