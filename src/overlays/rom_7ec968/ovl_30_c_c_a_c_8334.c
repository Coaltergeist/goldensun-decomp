extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_809218c(int actor, int x, int y);
extern void __Func_80921c4(int actor, int x, int y);
extern void __Func_8092adc(int actor, int value, int duration);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_8010704(int actor, int value, int mode, int one,
                           int seven, int finalValue);

static __inline__ void SetSpeedExact(int actor)
{
    asm volatile(
        "mov r1, #0x80\n\t"
        "mov r2, #0x80\n\t"
        "mov r0, %0\n\t"
        "lsl r1, #9\n\t"
        "lsl r2, #8\n\t"
        "bl __MapActor_SetSpeed"
        : : "i"(actor) : "r0", "r1", "r2", "r3", "lr", "memory");
}

static __inline__ void MoveExact(int actor)
{
    asm volatile(
        "mov r1, #0x80\n\t"
        "mov r0, %0\n\t"
        "lsl r1, #7\n\t"
        "mov r2, #0\n\t"
        "bl __Func_8092adc"
        : : "i"(actor) : "r0", "r1", "r2", "r3", "lr", "memory");
}

void OvlFunc_963_2008334(void)
{
    __CutsceneStart();
    SetSpeedExact(8);
    SetSpeedExact(9);
    asm volatile(
        "mov r2, #0xc0\n\t"
        "mov r0, #8\n\t"
        "mov r1, #0x88\n\t"
        "lsl r2, #1\n\t"
        "bl __Func_809218c"
        : : : "r0", "r1", "r2", "r3", "lr", "memory");
    asm volatile(
        "mov r2, #0xc0\n\t"
        "mov r0, #9\n\t"
        "mov r1, #0x98\n\t"
        "lsl r2, #1\n\t"
        "bl __Func_80921c4"
        : : : "r0", "r1", "r2", "r3", "lr", "memory");
    MoveExact(8);
    asm volatile(
        "mov r1, #0x80\n\t"
        "mov r2, #0\n\t"
        "mov r0, #9\n\t"
        "lsl r1, #7\n\t"
        "bl __Func_8092adc"
        : : : "r0", "r1", "r2", "r3", "lr", "memory");
    __MapActor_SetAnim(8, 1);
    __Func_8010704(6, 0x1b, 1, 1, 7, 0x1b);
    __Func_8010704(9, 0x1a, 2, 1, 7, 0x1a);
    __CutsceneEnd();
}
