extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void OvlFunc_968_2008374(void);
extern void OvlFunc_968_20098f8(void);

void OvlFunc_968_200996c(void)
{
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __CutsceneStart();
    arg4 = 0xc;
    arg5 = 0x2c;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x13, 0x2c, 4, 1, arg4, arg5);
    OvlFunc_968_2008374();
    OvlFunc_968_20098f8();
    __CutsceneEnd();
}
