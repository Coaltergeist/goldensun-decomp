typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(int actor);
extern u32 __GetFlag(u32 flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_80933f8(int x, int y, int z, int mode);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __Func_8092950(int actor, int arg1);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __PlaySound(int sound);
extern void OvlFunc_968_20086a0(void);
extern void __MapActor_SetSpeed(int actor_id, int x, int y);
extern void __Func_8092304(int a0, int a1, int a2);
extern void __Func_809202c(void);

void OvlFunc_968_20087d8(void)
{
    register u8 *actor asm("r5");
    register u32 flag asm("r6");
    register u8 *p asm("r7");

    actor = __MapActor_GetActor(0);
    flag = __GetFlag(0x109);
    if (flag == 0) {
        __CutsceneStart();
        asm volatile(
            "add %0, r5, #0\n\t"
            "mov r0, #1\n\t"
            "mov r1, #1\n\t"
            "mov r2, #1\n\t"
            "mov r3, #0\n\t"
            "neg r0, r0\n\t"
            "neg r1, r1\n\t"
            "neg r2, r2\n\t"
            "add %0, #0x55\n\t"
            "bl __Func_80933f8\n\t"
            "strb r6, [%0, #0]"
            : "=r" (p)
            :
            : "r0", "r1", "r2", "r3", "cc", "memory");
        __MapActor_SetPos(0, *(s16 *)(actor + 0xa) << 16, (*(s16 *)(actor + 0x12) << 16) + 0xfff00000);
        __Func_8092950(0, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
        __MapTransitionIn();
        __WaitMapTransition();
        __PlaySound(0xe4);
        asm volatile(
            "ldr r3, =OvlFunc_968_20086a0\n\t"
            "mov r0, #0\n\t"
            "str r3, [r5, #108]\n\t"
            "ldr r1, =0x6666\n\t"
            "ldr r2, =0x3333\n\t"
            "bl __MapActor_SetSpeed"
            : : : "r0", "r1", "r2", "r3", "cc", "memory");
        __Func_8092304(0, 0, 8);
        __Func_8092950(0, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 1);
        __Func_8092304(0, 0, 8);
        *p = 3;
        *(u32 *)(actor + 0x6c) = flag;
        __Func_809202c();
        __CutsceneEnd();
    }
}
