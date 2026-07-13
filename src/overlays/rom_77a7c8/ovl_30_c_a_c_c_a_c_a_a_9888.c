typedef signed short s16;

extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __Func_80933f8(int x, int y, int z, int mode);
extern void __WaitFrames(int frames);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __SetCameraTarget(int actor_id, int mode);
extern void __MapTransitionIn(void);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern unsigned char gScript_881__0200d158[];
extern void __MapActor_SetBehavior(int actor_id, const void *script);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __SetFlag(int flag);
extern void __Func_8091e9c(int map_id);
extern void __CutsceneEnd(void);

void OvlFunc_881_2009888(void)
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
    __MapActor_SetPos(0, 0, 0);
    __MapActor_SetPos(8, 0x1f080000, 0xc80000);
    *(int *)(actor + 0x18) = 0x14000;
    *(int *)(actor + 0x1c) = 0x14000;
    __WaitFrames(1);
    __SetCameraTarget(8, 1);
    __MapTransitionIn();
    {
        register int target asm("r0") = 8;
        register int speed_x asm("r1");
        register int speed_y asm("r2");

        asm volatile("" : "+r"(target));
        speed_x = 0x9999;
        asm volatile("" : "+r"(target), "+r"(speed_x));
        speed_y = 0x4ccc;
        asm volatile("" : "+r"(target), "+r"(speed_x), "+r"(speed_y));
        __MapActor_SetSpeed(target, speed_x, speed_y);
    }
    actor += 0x64;
    asm volatile("" : "+r"(actor));
    {
        register int zero asm("r3") = 0;

        asm volatile("" : "+r"(zero), "+r"(actor));
        *(s16 *)actor = zero;
    }
    __MapActor_SetBehavior(8, gScript_881__0200d158);
    do {
        __WaitFrames(1);
    } while (*(s16 *)actor == 0);
    __MapTransitionOut();
    __WaitMapTransition();
    __SetFlag(0x927);
    __Func_8091e9c(0x67);
    __CutsceneEnd();
}
