extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8092950(int, int);
extern unsigned char *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(unsigned char *, int);
extern void __WaitFrames(int);
extern void __Func_800fe9c(void);
extern void OvlFunc_944_20084b0(void);

void OvlFunc_944_2008468(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __CutsceneStart();
    arg1 = 0xa4;
    arg2 = 0x1410000;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 16;
    __MapActor_SetPos(arg0, arg1, arg2);
    __Func_8092950(0, 15);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __WaitFrames(1);
    __Func_800fe9c();
    __WaitFrames(1);
    OvlFunc_944_20084b0();
    __CutsceneEnd();
}
