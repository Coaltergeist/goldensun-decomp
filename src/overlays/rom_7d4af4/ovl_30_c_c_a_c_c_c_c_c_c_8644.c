typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed short s16;
typedef signed int s32;

extern u8 *iwram_3001ebc;
extern u8 L1d00[] asm(".L1d00");
extern void __CutsceneStart(void);
extern u8 *__MapActor_GetActor(s32 actorId);
extern void __PlaySound(s32 sound);
extern void __Func_8010560(u32 a, s32 b, s32 c);
extern void __MapActor_SetSpeed(s32 actorId, s32 x, s32 y);
extern void __MapActor_SetAnim(s32 actorId, s32 anim);
extern void __Func_8092208(s32 a, s32 b, s32 c);
extern void __CutsceneWait(s32 frames);
extern void __Func_8091e9c(s32 index);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __CutsceneEnd(void);

void OvlFunc_949_2008644(void)
{
    u8 *base = iwram_3001ebc;
    u32 actorId;
    u8 *actor;
    s32 index;

    __CutsceneStart();

    actorId = 8;
    do {
        actor = __MapActor_GetActor(actorId);
        if (actor != 0) {
            actor[0x55] = 0;
        }
        actorId++;
    } while (actorId < 0x42);

    {
        s32 sound = 0x9e;
        index = *(s16 *)(base + 0x16c) + -1;
        asm volatile("" : "+r"(index), "+r"(sound));
        __PlaySound(sound);
    }

    {
        register u32 word0 asm("r0");
        register s32 half4 asm("r1");
        register s32 half6 asm("r2");
        asm volatile(
            "lsl r4, %3, #3\n\t"
            "ldr r0, =.L1d00\n\t"
            "add r3, r4, #4\n\t"
            "ldrh r1, [r0, r3]\n\t"
            "add r3, r0\n\t"
            "ldrh r2, [r3, #2]\n\t"
            "ldr r0, [r0, r4]"
            : "=r"(word0), "=r"(half4), "=r"(half6)
            : "r"(index)
            : "r3", "r4");
        __Func_8010560(word0, half4, half6);
    }
    {
        s32 x = 0x8000;
        s32 zero = 0;
        s32 y = 0x4000;
        asm volatile("" : "+r"(zero) : "r"(x));
        __MapActor_SetSpeed(zero, x, y);
    }
    __MapActor_GetActor(0)[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    if (index != 6) {
        s32 z = 8;
        register s32 zero asm("r0") = 0;
        register s32 a1 asm("r1") = 2;
        asm volatile("" : "+r"(z) : "r"(zero));
        __Func_8092208(zero, a1, -z);
        __CutsceneWait(10);
    }
    __Func_8091e9c(*(s16 *)(base + 0x16c));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
