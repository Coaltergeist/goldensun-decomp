extern unsigned char iwram_3001ebc[];

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_809228c(int actor, int x, int y);
extern void __MapActor_Jump(int actor, int arg1, int arg2);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MapActor_WaitMovement(int actor);
extern void *__StartTask(void (*func)(void), int priority);
extern void __StopTask(void (*func)(void));
extern void OvlFunc_926_200a5b8(void);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __PlaySound(int sound);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __Func_8092950(int actor, int arg1);
extern void __Func_8091e9c(int arg0);

void OvlFunc_926_200a68c(int x, int y)
{
    register int saved_x asm("r5");
    register int saved_y asm("r6");

    saved_x = x;
    asm volatile("" : "+r"(saved_x));
    saved_y = y;
    asm volatile("" : "+r"(saved_x), "+r"(saved_y));
    __CutsceneStart();
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r1 = 0xa0;
        asm volatile("" : "+r"(r1));
        r2 = 0xa0;
        asm volatile("" : "+r"(r1), "+r"(r2));
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        r1 <<= 10;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        r2 <<= 9;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        __MapActor_SetSpeed(r0, r1, r2);
    }
    __Func_809228c(0, saved_x, saved_y);
    __MapActor_Jump(0, 4, 0);
    __MapActor_SetAnim(0, 7);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 6);
    __CutsceneEnd();
}

void OvlFunc_926_200a6d8(void)
{
    register void (*task_func)(void) asm("r5");

    __CutsceneStart();
    task_func = OvlFunc_926_200a5b8;
    asm volatile("" : "+r"(task_func));
    {
        register unsigned int r0 asm("r0");
        register unsigned int r1 asm("r1");

        r1 = 0xc8;
        asm volatile("" : "+r"(r1));
        r0 = (unsigned int)task_func;
        asm volatile("" : "+r"(r0), "+r"(r1));
        r1 <<= 4;
        asm volatile("" : "+r"(r0), "+r"(r1));
        __StartTask((void (*)(void))r0, r1);
    }
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r1 = 0x3333;
        asm volatile("" : "+r"(r1));
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r1));
        r2 = 0x1999;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        __MapActor_SetSpeed(r0, r1, r2);
    }
    {
        register unsigned int r2 asm("r2");
        register unsigned int r3 asm("r3");

        r3 = (unsigned int)iwram_3001ebc;
        asm volatile("" : "+r"(r3));
        r2 = 0xe4;
        asm volatile("" : "+r"(r2), "+r"(r3));
        r3 = *(unsigned int *)r3;
        r2 <<= 1;
        r3 += r2;
        r2 = 0x3c;
        *(unsigned int *)r3 = r2;
    }
    __MapTransitionOut();
    __PlaySound(0x9a);
    __MapActor_SetAnim(0, 2);
    __Func_809228c(0, 0, -6);
    __MapActor_WaitMovement(0);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __StopTask(task_func);
    __WaitMapTransition();
    __Func_8091e9c(3);
    __CutsceneEnd();
}
