typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *iwram_3001ebc;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern u8 *__MapActor_GetActor(int actor);
extern void __Func_8010560(void *script, int x, int y);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_8092208(int actor, int mode, int offset);
extern void __Func_8091e9c(int map_id);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);

typedef struct {
    void *script;
    u16 x;
    u16 y;
} L50e0Entry;

extern L50e0Entry L50e0[] asm(".L50e0");

void OvlFunc_936_2008464(void)
{
    u8 *state = iwram_3001ebc;
    s16 *field;
    s32 index;
    u32 i;

    __CutsceneStart();
    for (i = 8; i <= 0x41; i++) {
        u8 *actor = __MapActor_GetActor(i);
        if (actor != 0)
            actor[0x55] = 0;
    }

    field = (s16 *)(state + 0x16c);
    index = *field;
    index--;
    {
        register int soundArg asm("r0") = 0x9e;

        asm volatile("" : "+r"(soundArg));
        {
            register s32 idx asm("r5") = index;

            asm volatile("" : "+r"(idx));
            __PlaySound(soundArg);
        {
            register void *script asm("r0");
            register u32 fx asm("r1");
            register u32 fy asm("r2");

            asm volatile(
                "lsl r5, r5, #3\n\t"
                "ldr r0, =.L50e0\n\t"
                "add r3, r5, #4\n\t"
                "ldrh r1, [r0, r3]\n\t"
                "add r3, r0\n\t"
                "ldrh r2, [r3, #2]\n\t"
                "ldr r0, [r0, r5]"
                : "=r"(script), "=r"(fx), "=r"(fy), "+r"(idx)
                :
                : "r3");
            __Func_8010560(script, fx, fy);
        }
        }
    }
    __MapActor_SetSpeed(0, 0x8000, 0x4000);
    __MapActor_GetActor(0)[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    {
        register int a0 asm("r0");
        register int a1 asm("r1");
        register int a2 asm("r2");

        asm volatile(
            "mov r2, #8\n\t"
            "mov r1, #2\n\t"
            "neg r2, r2\n\t"
            "mov r0, #0"
            : "=r"(a0), "=r"(a1), "=r"(a2));
        __Func_8092208(a0, a1, a2);
    }
    __CutsceneWait(0xa);
    __Func_8091e9c(*field);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
