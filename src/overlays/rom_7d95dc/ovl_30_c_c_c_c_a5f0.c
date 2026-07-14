extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __MapTransitionIn(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_8092158(int actor, int x, int z);
extern void __MapActor_TravelTo(int actor, int x, int z);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern int __GetFlag(int flag);
extern void __Func_8091e9c(int map_id);

void OvlFunc_953_200a5f0(void)
{
    __CutsceneStart();
    {
        register int a2 asm("r2");
        register int a0 asm("r0");
        register int a1 asm("r1");

        a2 = 0xcccc;
        asm volatile("" : "+r"(a2));
        a0 = 0;
        asm volatile("" : "+r"(a0), "+r"(a2));
        a1 = 0x19999;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        __MapActor_SetSpeed(a0, a1, a2);
    }
    __MapTransitionIn();
    __MapActor_SetAnim(0, 2);
    {
        register int a1 asm("r1");
        register int a2 asm("r2");
        register int a0 asm("r0");

        a1 = 0xc3;
        asm volatile("" : "+r"(a1));
        a2 = 0xd6;
        asm volatile("" : "+r"(a1), "+r"(a2));
        a0 = 0;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        a1 <<= 2;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        a2 <<= 1;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        __Func_8092158(a0, a1, a2);
    }
    {
        register int a1 asm("r1");
        register int a2 asm("r2");
        register int a0 asm("r0");

        a1 = 0xdc;
        asm volatile("" : "+r"(a1));
        a2 = 0xd6;
        asm volatile("" : "+r"(a1), "+r"(a2));
        a0 = 0;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        a1 <<= 2;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        a2 <<= 1;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        __Func_8092158(a0, a1, a2);
    }
    {
        register int a1 asm("r1");
        register int a2 asm("r2");
        register int a0 asm("r0");

        a1 = 0xf5;
        asm volatile("" : "+r"(a1));
        a2 = 0xd6;
        asm volatile("" : "+r"(a1), "+r"(a2));
        a0 = 0;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        a1 <<= 2;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        a2 <<= 1;
        asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
        __MapActor_TravelTo(a0, a1, a2);
    }
    __MapTransitionOut();
    __WaitMapTransition();
    if (__GetFlag(0x90f) != 0) {
        __Func_8091e9c(0x20);
    } else {
        __Func_8091e9c(0xc);
    }
}
