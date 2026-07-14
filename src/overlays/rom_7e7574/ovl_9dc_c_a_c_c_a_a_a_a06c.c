extern void __CutsceneStart(void);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __CutsceneEnd(void);
extern void __MapTransitionIn(void);

void OvlFunc_959_200a06c(void)
{
    __CutsceneStart();
    {
        register int x asm("r1") = 0xac;
        register int y asm("r2") = 0xb0;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 0xc;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        x <<= 18;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        y <<= 15;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        __MapActor_SetPos(actor_id, x, y);
    }
    {
        register int x asm("r1") = 0xb0;
        register int y asm("r2") = 0xb0;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 0xd;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        x <<= 18;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        y <<= 15;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        __MapActor_SetPos(actor_id, x, y);
    }
    {
        register int x asm("r1") = 0xb4;
        register int y asm("r2") = 0xc0;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(x), "+r"(y));
        y <<= 15;
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 0xe;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        x <<= 18;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        __MapActor_SetPos(actor_id, x, y);
    }
    __MapActor_SetAnim(0xc, 5);
    __MapActor_SetAnim(0xd, 5);
    __MapActor_SetAnim(0xe, 5);
    __Func_809280c(0, 0xd, 0);
    __CutsceneEnd();
    __MapTransitionIn();
}
