typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __PlaySound(int sound);
extern void __Func_8091220(u32 arg0, u32 arg1);
extern void __Func_8091200(u32 value, u32 mode);
extern void __Func_8091254(int frames);
extern void __WaitFrames(int frames);
extern u8 *iwram_3001ebc;
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __Func_8092950(int actor, int arg1);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_80933d4(int arg0, int arg1);
extern void __StartTask(void (*task)(void), int priority);
extern void OvlFunc_881_200b1fc(void);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int map_id);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_881_200b130(void)
{
    u8 *actor;

    __CutsceneStart();
    __PlaySound(0x8d);
    __Func_8091220(0, 0);
    __Func_8091200(0, 0);
    __Func_8091254(1);
    __WaitFrames(2);
    *(int *)(iwram_3001ebc + 0x1c8) = 1;
    __MapTransitionIn();
    __WaitMapTransition();
    __Func_8092950(0, 0xf);
    actor = __MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    __WaitFrames(1);
    __Func_80933d4(0x40000, 0x8000);
    {
        register void (*task)(void) asm("r0");
        register int priority asm("r1");

        priority = 0xc8;
        priority <<= 4;
        asm volatile("" : "+r"(priority));
        task = OvlFunc_881_200b1fc;
        __StartTask(task, priority);
    }
    __Func_8091220(0, 0);
    __Func_8091200(0x10004, 1);
    __Func_8091200(0x10000, 2);
    __Func_8091254(0x28);
    __CutsceneWait(0xf0);
    __Func_8091200(0, 0);
    __Func_8091254(0x50);
    __WaitFrames(0x5a);
    __Func_8091e9c(0x6d);
    __SetFlag(0x11a);
    __CutsceneEnd();
}
