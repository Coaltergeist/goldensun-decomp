extern unsigned char *iwram_3001ebc;

extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_8092208(int, int, int);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound_id);
extern void __Func_8091e9c(int value);
extern void OvlFunc_943_2008bb8(void);
extern void OvlFunc_943_2008bf0(void);

void OvlFunc_943_2008c28(void)
{
    register unsigned char *state asm("r6") = iwram_3001ebc;
    register int moved asm("r5") = 0;
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register unsigned char *ptr asm("r3");
    int mode;

    __CutsceneStart();
    mode = *(short *)(state + 0x16c);
    switch (mode) {
    case 1:
        moved = 1;
        OvlFunc_943_2008bb8();
        break;
    case 3:
        moved = 1;
        OvlFunc_943_2008bf0();
        break;
    }

    if (moved) {
        arg0 = 0;
        asm volatile("" : "+r"(arg0));
        arg1 = 0x9999;
        arg2 = 0x4ccc;
        __MapActor_SetSpeed(arg0, arg1, arg2);
        arg2 = 10;
        arg0 = 0;
        arg1 = 1;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg2 = -arg2;
        __Func_8092208(arg0, arg1, arg2);
        __CutsceneWait(10);
    } else {
        __PlaySound(0x7b);
    }

    arg2 = 0xb6;
    asm volatile("" : "+r"(arg2));
    arg2 <<= 1;
    ptr = state + arg2;
    asm volatile("" : "+r"(ptr));
    arg2 = 0;
    __Func_8091e9c(*(short *)(ptr + arg2));
}
