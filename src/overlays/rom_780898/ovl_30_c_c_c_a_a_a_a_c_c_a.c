extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3,
                           int arg4, int arg5);
extern void __PlaySound(int sound);
extern void __Func_8010560(void *arg0, int arg1, int arg2);
extern void __Func_809218c(int arg0, int arg1, int arg2);
extern void __Func_8091e9c(int actor);
extern unsigned char OvlScript_883_200f544[] asm(".L7544");

void OvlFunc_883_2008d70(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __SetFlag(0x210);
    arg4 = 0xa;
    arg5 = 0x54;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x28, 0x54, 7, 4, arg4, arg5);
}

void OvlFunc_883_2008d98(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __ClearFlag(0x210);
    arg4 = 0xa;
    arg5 = 0x54;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x28, 0x59, 7, 4, arg4, arg5);
}

void OvlFunc_883_2008dc0(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0xbc);
    __Func_8010560(OvlScript_883_200f544, 0x2d, 0xb);
    arg2 = 0xd2;
    arg0 = 0;
    arg1 = 0x101;
    arg2 <<= 1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __Func_8091e9c(0xb);
}
