extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int y);
extern void __Func_809218c(int actor, int x, int y);
extern void OvlFunc_884_2008714(int actor);
extern unsigned char OvlScript_884_200beb4[] asm(".L3eb4");

void OvlFunc_884_20087ec(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_884_200beb4, 0x2b, 0xf);
    arg0 = 0;
    arg1 = 0xe6;
    arg2 = 0x197;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    OvlFunc_884_2008714(3);
}

void OvlFunc_884_200881c(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_884_200beb4, 0x34, 0x12);
    arg1 = 0xbb;
    arg0 = 0;
    arg1 <<= 1;
    arg2 = 0x1a3;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    OvlFunc_884_2008714(4);
}

void OvlFunc_884_200884c(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_884_200beb4, 0x29, 0x20);
    arg0 = 0;
    arg1 = 0xc8;
    arg2 = 0x222;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    OvlFunc_884_2008714(5);
}

void OvlFunc_884_200887c(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_884_200beb4, 0x23, 0x24);
    arg0 = 0;
    arg1 = 0x66;
    arg2 = 0x263;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    OvlFunc_884_2008714(6);
}

void OvlFunc_884_20088ac(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_884_200beb4, 0x33, 0x27);
    arg1 = 0xb3;
    arg0 = 0;
    arg1 <<= 1;
    arg2 = 0x29e;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    OvlFunc_884_2008714(7);
}
