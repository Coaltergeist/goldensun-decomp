extern void __PlaySound(int sound);
extern void __Func_8010560(void *arg0, int arg1, int arg2);
extern void __Func_809218c(int arg0, int arg1, int arg2);
extern void __CutsceneWait(int duration);
extern void OvlFunc_882_200815c(int arg0);
extern int __GetFlag(int flag);
extern void OvlFunc_882_200950c(void);
extern void __SetFlag(int flag);
extern unsigned char OvlScript_882_200d78a[] asm(".L578a");
extern unsigned char OvlScript_882_200d7a0[] asm(".L57a0");
extern unsigned char Flag_206[] asm("0x206");

void OvlFunc_882_2008240(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __PlaySound(0x9e);
    __Func_8010560(OvlScript_882_200d78a, 0x36, 0x20);
    arg1 = 0xcb;
    arg1 <<= 1;
    arg2 = 0x2d7;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809218c(arg0, arg1, arg2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(5);
}

void OvlFunc_882_2008278(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    arg0 = (int)Flag_206;
    asm volatile("" : "+r"(arg0));
    if (__GetFlag(arg0) == 0) {
        __PlaySound(0x9e);
        __Func_8010560(OvlScript_882_200d7a0, 0x2d, 0x27);
    }

    if (__GetFlag(0x835) == 0 && __GetFlag(0x831) == 0) {
        OvlFunc_882_200950c();
        arg0 = (int)Flag_206;
        asm volatile("" : "+r"(arg0));
        __SetFlag(arg0);
    } else {
        arg1 = 0x83;
        arg0 = 0;
        arg1 <<= 1;
        arg2 = 0x325;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        __Func_809218c(arg0, arg1, arg2);
        __CutsceneWait(3);
        OvlFunc_882_200815c(6);
    }
}
