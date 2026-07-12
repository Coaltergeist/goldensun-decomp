extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_200a0a4(void);

void OvlFunc_964_200a300(void)
{
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __CutsceneStart();
    arg4 = 0x13;
    arg5 = 0x2d;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x53, 0x2d, 0xb, 8, arg4, arg5);
    OvlFunc_964_20080c4();
    OvlFunc_964_200a0a4();
    __CutsceneEnd();
}
