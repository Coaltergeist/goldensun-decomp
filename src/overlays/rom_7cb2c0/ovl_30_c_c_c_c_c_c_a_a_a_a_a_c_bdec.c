extern void __CutsceneStart(void);
extern void OvlFunc_945_200c8e8(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __Func_809259c(int, int);
extern void __MessageID(int);
extern void __Func_8093040(int, int, int);

void OvlFunc_945_200bdec(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __CutsceneStart();
    OvlFunc_945_200c8e8(15, 1, 1);
    arg1 = 0xa0;
    arg2 = 0x28;
    arg0 = 8;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 7;
    __Func_8092adc(arg0, arg1, arg2);
    __Func_809259c(8, 2);
    __MessageID(0x1e3d);
    __Func_8093040(8, 0, 0x14);
    OvlFunc_945_200c8e8(9, 0xb, 0);
}
