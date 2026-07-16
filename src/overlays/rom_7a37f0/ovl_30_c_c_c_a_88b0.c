typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int frames);
extern void __PlaySound(int sound);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __MapActor_TravelTo(int actor, int x, int y);
extern void __MapActor_WaitMovement(int actor);
extern void __Func_809228c(int actor, int x, int z);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_916_20088b0(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(6);
    __PlaySound(0xEF);
    {
        register int actor asm("r0");
        register int x asm("r1");
        register int y asm("r2");
        __asm__ volatile (
            "mov r1, #0x80\n\t"
            "ldr r2, =0x3333\n\t"
            "mov r0, #8\n\t"
            "lsl r1, r1, #8"
            : "=r" (actor), "=r" (x), "=r" (y));
        __MapActor_SetSpeed(actor, x, y);
    }
    __MapActor_SetAnim(8, 2);
    __MapActor_TravelTo(8, 0x68, 0xB0);
    __CutsceneWait(6);
    __MapActor_SetAnim(0, 2);
    {
        register int actor asm("r0");
        register int x asm("r1");
        register int y asm("r2");
        __asm__ volatile (
            "mov r0, #0\n\t"
            "ldr r1, =0x4ccc\n\t"
            "ldr r2, =0x3333"
            : "=r" (actor), "=r" (x), "=r" (y));
        __MapActor_SetSpeed(actor, x, y);
    }
    __Func_809228c(0, 8, 0);
    __CutsceneWait(0x18);
    __MapActor_SetAnim(0, 1);
    __MapActor_WaitMovement(8);
    __MapActor_SetAnim(8, 1);
    __PlaySound(0x120);
    __PlaySound(0xD5);
    __Func_8010704(5, 9, 1, 4, 4, 9);
    __Func_8010704(0, 0, 1, 4, 6, 9);
    __asm__ volatile (
        "ldr r3, =.L12c4\n\t"
        "ldr r2, [r3]\n\t"
        "ldr r3, .Lzero_20088b0\n\t"
        "strh r3, [r2]"
        :
        :
        : "r2", "r3", "memory");
    __CutsceneEnd();
}
asm(".align 2, 0\n.Lzero_20088b0: .word 0");
