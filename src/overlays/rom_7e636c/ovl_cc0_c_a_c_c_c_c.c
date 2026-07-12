extern void __CutsceneStart(void);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __CutsceneWait(int frames);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __PlaySound(int sound);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_958_2009158(void) {
    __CutsceneStart();
    if (*(int *)(__MapActor_GetActor(9) + 8) >> 20 > 0x2a) {
        {
            register int arg4 asm("r3") = 0x6b;
            register int arg5 asm("r2") = 0x11;

            asm volatile("" : "+r"(arg4), "+r"(arg5));
            __Func_8010704(0x6c, 0x11, 1, 1, arg4, arg5);
        }
        __CutsceneWait(8);
        __MapActor_SetPos(9, 0, 0);
        {
            register int actor asm("r0");
            register int x asm("r1");
            register int y asm("r2");

            x = 0xae;
            asm volatile("" : "+r"(x));
            y = 0x90;
            asm volatile("" : "+r"(x), "+r"(y));
            y <<= 17;
            asm volatile("" : "+r"(x), "+r"(y));
            actor = 10;
            asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
            x <<= 18;
            asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
            __MapActor_SetPos(actor, x, y);
        }
        __MapActor_SetAnim(10, 3);
        __PlaySound(0x9a);
        __SetFlag(0x9a5);
    }
    __CutsceneEnd();
}
