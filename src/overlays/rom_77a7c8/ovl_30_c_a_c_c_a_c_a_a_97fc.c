extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __Func_80933f8(int x, int y, int z, int mode);
extern void __WaitFrames(int frames);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __SetCameraTarget(int actor_id, int mode);
extern void __MapTransitionIn(void);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __Func_80921c4(int actor, int x, int y);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __SetFlag(int flag);
extern void __Func_8091e9c(int map_id);
extern void __CutsceneEnd(void);

void OvlFunc_881_20097fc(void)
{
    register unsigned char *actor asm("r5") = __MapActor_GetActor(8);
    __CutsceneStart();
    {
        register int x asm("r0") = 1;
        register int y asm("r1");
        register int z asm("r2");
        register int mode asm("r3");

        asm volatile("" : "+r"(x));
        y = 1;
        asm volatile("" : "+r"(x), "+r"(y));
        z = 1;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        mode = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z), "+r"(mode));
        y = -y;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z), "+r"(mode));
        z = -z;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z), "+r"(mode));
        x = -x;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z), "+r"(mode));
        __Func_80933f8(x, y, z, mode);
    }
    __WaitFrames(1);
    {
        register int y asm("r2") = 0;
        register int actor_id asm("r0");
        register int x asm("r1");

        asm volatile("" : "+r"(y));
        actor_id = 0;
        asm volatile("" : "+r"(y), "+r"(actor_id));
        x = 0;
        asm volatile("" : "+r"(y), "+r"(actor_id), "+r"(x));
        __MapActor_SetPos(actor_id, x, y);
    }
    *(int *)(actor + 0x1c) = 0x14000;
    *(int *)(actor + 0x18) = 0x14000;
    __SetCameraTarget(8, 1);
    __MapTransitionIn();
    {
        register int actor_id asm("r0") = 8;
        register int x asm("r1");
        register int y asm("r2");

        asm volatile("" : "+r"(actor_id));
        x = 0x6666;
        asm volatile("" : "+r"(actor_id), "+r"(x));
        y = 0x3333;
        asm volatile("" : "+r"(actor_id), "+r"(x), "+r"(y));
        __MapActor_SetSpeed(actor_id, x, y);
    }
    {
        register int x asm("r1") = 0x14a8;
        register int y asm("r2");
        register int actor_id asm("r0");

        asm volatile("" : "+r"(x));
        y = 0x918;
        asm volatile("" : "+r"(x), "+r"(y));
        actor_id = 8;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor_id));
        __Func_80921c4(actor_id, x, y);
    }
    __MapTransitionOut();
    __WaitMapTransition();
    __SetFlag(0x927);
    __Func_8091e9c(0x66);
    __CutsceneEnd();
}
