extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int y);
extern void __Func_809218c(int actor, int x, int y);
extern void __CutsceneWait(int duration);
extern void OvlFunc_882_200815c(int actor);
extern unsigned char Script_578a[] asm(".L578a");
extern unsigned char Script_57a0[] asm(".L57a0");
extern unsigned char Script_57b6[] asm(".L57b6");

void OvlFunc_882_2008328(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(Script_57a0, 0x31, 0x45);
    arg1 = 0xa3;
    arg1 <<= 1;
    arg2 = 0x466;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(8);
}

void OvlFunc_882_2008360(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(Script_57b6, 0x34, 0x4c);
    arg1 = 0xbb;
    arg1 <<= 1;
    arg2 = 0x4d6;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(9);
}

void OvlFunc_882_2008398(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(Script_578a, 0x23, 0x4a);
    arg1 = 0x66;
    arg2 = 0x4b6;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(0xa);
}

void OvlFunc_882_20083cc(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(Script_578a, 0x23, 0x49);
    arg1 = 0x66;
    arg2 = 0x4b6;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(0xc);
}

void OvlFunc_882_2008400(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(Script_57a0, 0x26, 0x48);
    arg1 = 0x92;
    arg2 = 0x49e;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(0xd);
}
