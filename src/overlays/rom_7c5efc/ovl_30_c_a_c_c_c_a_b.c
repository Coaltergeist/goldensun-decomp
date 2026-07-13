extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_801776c(int value, int arg);
extern void __PlaySound(int sound);
extern void OvlFunc_941_2008210(void);

void OvlFunc_941_200833c(void)
{
    if (!__GetFlag(0x201) && !__GetFlag(0x200)) {
        register int arg __asm__("r1") = 1;
        register int value __asm__("r0") = 0x1528;

        __asm__ volatile ("" : : "r" (arg), "r" (value));
        __Func_801776c(value, arg);
        __PlaySound(0x9d);
        OvlFunc_941_2008210();
        __SetFlag(0x201);
        __ClearFlag(0x202);
    }
}
