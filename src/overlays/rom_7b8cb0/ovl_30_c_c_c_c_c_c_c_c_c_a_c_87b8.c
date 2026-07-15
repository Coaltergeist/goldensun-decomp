typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor);
extern void OvlFunc_931_20086f0(void);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_8092158(int actor, int value, int duration);
extern void __PlaySound(int sound);
extern void __DeleteFieldActor(int actor);
extern void __Func_8012330(int x, int y, int duration);
extern void __CutsceneWait(int duration);
extern void __MapActor_SetAnim(int actor, int animation);

void OvlFunc_931_20087b8(void)
{
    u8 *actor = __MapActor_GetActor(0x12);

    {
        register u16 zero asm("r2");
        register u8 *destination asm("r3") = actor;
        asm volatile("" : "+r" (destination));
        asm volatile("mov r2, #0" : "=r" (zero));
        destination += 0x64;
        *(u16 *)destination = zero;
        destination += 2;
        asm volatile("" : "+r" (destination));
        *(u16 *)destination = zero;
    }
    {
        register u32 value asm("r3");
        asm volatile("ldr r3, =0x6666" : "=r" (value));
        *(u32 *)(actor + 0x48) = value;
    }
    {
        register void (*callback)(void) asm("r3");
        register int actorId asm("r0");
        asm volatile("ldr r3, =OvlFunc_931_20086f0\n\tmov r0, #0x12"
                     : "=r" (callback), "=r" (actorId));
        *(void (**)(void))(actor + 0x6c) = callback;
        {
            register int x asm("r1");
            register int y asm("r2");
            asm volatile("ldr r2, =0x9999\n\tldr r1, =0x13333"
                         : "=r" (x), "=r" (y));
            __MapActor_SetSpeed(actorId, x, y);
        }
    }

    asm volatile(
        "mov r2, #0xe6\n\t"
        "mov r0, #0x12\n\t"
        "mov r1, #0x1c\n\t"
        "lsl r2, #1\n\t"
        "bl __Func_8092158"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    asm volatile(
        "mov r2, #0xe0\n\t"
        "mov r1, #0x18\n\t"
        "lsl r2, #1\n\t"
        "mov r0, #0x12\n\t"
        "bl __Func_8092158"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    __PlaySound(0xe5);
    __DeleteFieldActor(0x12);
    asm volatile(
        "mov r1, #0x80\n\t"
        "mov r2, #0x80\n\t"
        "lsl r1, #9\n\t"
        "lsl r2, #9\n\t"
        "mov r0, #0\n\t"
        "bl __Func_8012330"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    __CutsceneWait(4);
    asm volatile(
        "mov r0, #1\n\t"
        "mov r1, #1\n\t"
        "neg r1, r1\n\t"
        "ldr r2, =0xe666\n\t"
        "neg r0, r0\n\t"
        "bl __Func_8012330"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");
    __CutsceneWait(0x28);
    __MapActor_SetAnim(0x12, 1);
}
