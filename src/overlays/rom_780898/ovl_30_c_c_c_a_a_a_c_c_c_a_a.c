extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int arg1, int arg2);
extern void __Func_809218c(int arg0, int arg1, int arg2);
extern void __Func_8091e9c(int actor);
extern unsigned char OvlScript_883_200f55a[] asm(".L755a");
extern unsigned char OvlScript_883_200f570[] asm(".L7570");

void OvlFunc_883_2008e54(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_883_200f55a, 0x36, 0x20);
    arg1 = 0xcb;
    arg0 = 0;
    arg1 <<= 1;
    arg2 = 0x2d7;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __Func_8091e9c(5);
}

void OvlFunc_883_2008e84(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_883_200f570, 0x2d, 0x27);
    arg1 = 0x83;
    arg0 = 0;
    arg1 <<= 1;
    arg2 = 0x325;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __Func_8091e9c(6);
}
