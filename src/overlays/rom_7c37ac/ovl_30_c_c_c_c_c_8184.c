typedef signed short s16;

extern unsigned char *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound_id);
extern void __Func_80118a8(int actor_id);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __Func_809228c(int actor_id, int arg1, int arg2);
extern void __Func_8092208(int actor_id, int arg1, int arg2);
extern void __Func_8091e9c(int value);
extern void __Func_80118c0(int actor_id);
extern void __CutsceneEnd(void);

void OvlFunc_938_2008184(void)
{
    register unsigned char *state asm("r5") = iwram_3001ebc;

    __CutsceneStart();
    __CutsceneWait(10);
    if (*(s16 *)(state + 0x16c) == 4)
        __PlaySound(0xbc);
    else
        __PlaySound(0x9e);

    __Func_80118a8(1);
    __Func_80118a8(2);
    __CutsceneWait(10);
    asm volatile(
        "mov r1, #0x80\n\t"
        "mov r2, #0x80\n\t"
        "lsl r2, #7\n\t"
        "mov r0, #0\n\t"
        "lsl r1, #8\n\t"
        "bl __MapActor_SetSpeed"
        : : : "r0", "r1", "r2", "r3", "memory", "cc");
    __MapActor_SetAnim(0, 2);

    if (*(s16 *)(state + 0x16c) == 4)
        asm volatile(
            "mov r2, #0x10\n\t"
            "mov r0, #0\n\t"
            "mov r1, #0\n\t"
            "neg r2, r2\n\t"
            "bl __Func_809228c"
            : : : "r0", "r1", "r2", "r3", "memory", "cc");
    else
        asm volatile(
            "mov r2, #0x10\n\t"
            "mov r0, #0\n\t"
            "mov r1, #3\n\t"
            "neg r2, r2\n\t"
            "bl __Func_8092208"
            : : : "r0", "r1", "r2", "r3", "memory", "cc");

    __CutsceneWait(0x10);
    asm volatile(
        "mov r2, #0xb6\n\t"
        "lsl r2, #1\n\t"
        "add r3, %0, r2\n\t"
        "mov r2, #0\n\t"
        "ldrsh r0, [r3, r2]\n\t"
        "bl __Func_8091e9c"
        : : "r" (state) : "r0", "r1", "r2", "r3", "memory", "cc");
    __Func_80118c0(1);
    __Func_80118c0(2);
    __CutsceneEnd();
}
