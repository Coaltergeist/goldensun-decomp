extern void __PlaySound(int sound);
extern void __Func_8010560(void *script, int arg1, int arg2);
extern void __Func_809218c(int arg0, int arg1, int arg2);
extern void __Func_8091e9c(int actor);
extern unsigned char OvlScript_883_200f55a[] asm(".L755a");
extern unsigned char OvlScript_883_200f570[] asm(".L7570");
extern unsigned char OvlScript_883_200f586[] asm(".L7586");

void OvlFunc_883_2008f5c(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_883_200f570, 0x31, 0x45);
    arg1 = 0xa3;
    arg0 = 0;
    arg1 <<= 1;
    arg2 = 0x466;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __Func_8091e9c(8);
}

void OvlFunc_883_2008f8c(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_883_200f586, 0x34, 0x4c);
    arg1 = 0xbb;
    arg0 = 0;
    arg1 <<= 1;
    arg2 = 0x4d6;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __Func_8091e9c(9);
}

void OvlFunc_883_2008fbc(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_883_200f55a, 0x23, 0x4a);
    arg0 = 0;
    arg1 = 0x66;
    arg2 = 0x4b6;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __Func_8091e9c(0xa);
}
