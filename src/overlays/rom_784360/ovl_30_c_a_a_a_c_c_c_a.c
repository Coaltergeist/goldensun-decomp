extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int x, int y);
extern void __Func_809218c(int actor, int x, int y);
extern void OvlFunc_884_2008714(int actor);
extern unsigned char OvlScript_884_200beb4[] asm(".L3eb4");

void OvlFunc_884_2008750(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_884_200beb4, 0x2c, 7);
    arg0 = 0;
    arg1 = 0xf8;
    arg2 = 0x117;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    OvlFunc_884_2008714(1);
}
