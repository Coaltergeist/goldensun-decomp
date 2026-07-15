typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern u8 *__MapActor_GetActor(int actor_id);
extern void __vec3_translate(int distance, unsigned int angle, int *position);
extern int __TestCollision(u8 *actor, int *position);
extern void __CutsceneStart(void);
extern void __Actor_SetAnim(u8 *actor, int animation);
extern void __WaitFrames(int frames);
extern void __PlaySound(int sound_id);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8092158(int actor_id, int x, int y);
extern void __CutsceneEnd(void);

void OvlFunc_957_2008de8(void)
{
    u8 *actor;
    u8 *flag;
    register u8 saved asm("r8");
    register int argval asm("r0");
    register int *position asm("r6");
    register unsigned int angle asm("r1");

    asm volatile(
        "ldr r3, =gState\n\t"
        "mov r2, #0xfa\n\t"
        "lsl r2, #1\n\t"
        "add r3, r2\n\t"
        "ldr r0, [r3]\n\t"
        "sub sp, #0xc"
        : "=r"(argval)
        :
        : "r2", "r3");
    actor = __MapActor_GetActor(argval);
    flag = actor + 0x55;
    saved = *flag;
    {
        register int distance asm("r0");

        asm volatile(
            "ldr r3, [%3, #8]\n\t"
            "mov r6, sp\n\t"
            "str r3, [r6, #0]\n\t"
            "ldr r3, [%3, #12]\n\t"
            "str r3, [r6, #4]\n\t"
            "ldr r3, [%3, #16]\n\t"
            "str r3, [r6, #8]\n\t"
            "mov r1, #0xf0\n\t"
            "ldrh r3, [%3, #6]\n\t"
            "lsl r1, #8\n\t"
            "mov r0, #0x80\n\t"
            "and r1, r3\n\t"
            "lsl r0, #14"
            : "=r"(position), "=r"(angle), "=r"(distance)
            : "r"(actor)
            : "r3");
        __vec3_translate(distance, angle, position);
    }
    if (__TestCollision(actor, position) == 0) {
        __CutsceneStart();
        __Actor_SetAnim(actor, 6);
        __WaitFrames(6);
        __PlaySound(0x98);
        __Actor_SetAnim(actor, 7);
        *(int *)(actor + 0x30) = 0xc0 << 10;
        *(int *)(actor + 0x34) = 0x80 << 10;
        *(int *)(actor + 0x28) = 0x80 << 11;
        *flag &= 0x7e;
        __Actor_SetSpriteFlags(actor, 0);
        {
            register int a0 asm("r0");
            register int a1 asm("r1");
            register int a2 asm("r2");

            asm volatile(
                "mov r2, #2\n\t"
                "ldrsh r1, [r6, r2]\n\t"
                "mov r0, #0\n\t"
                "mov r3, #10\n\t"
                "ldrsh r2, [r6, r3]"
                : "=r"(a0), "=r"(a1), "=r"(a2)
                : "r"(position)
                : "r3");
            __Func_8092158(a0, a1, a2);
        }
        __Actor_SetAnim(actor, 6);
        __Actor_SetSpriteFlags(actor, 1);
        {
            register int tmp asm("r2");

            asm volatile("mov r2, r8" : "=r"(tmp) : "r"(saved));
            *flag = tmp;
        }
        __CutsceneEnd();
    }
    asm volatile("add sp, #0xc");
}
