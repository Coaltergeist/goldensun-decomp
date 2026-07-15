#include "gba/types.h"

extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern u8 *__MapActor_GetActor(int actor);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_80922c4(int actor, int x, int y);
extern void __PlaySound(int sound);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int value);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __CutsceneEnd(void);

void OvlFunc_939_2008c74(void)
{
    u8 *actor;
    register int fifth asm("r5");
    register int sixth asm("r6");
    register int moveActor asm("r0");
    register int moveX asm("r1");
    register int moveY asm("r2");

    __SetFlag(0x242);
    __CutsceneStart();
    __MapActor_SetSpeed(0, 0x3333, 0x1999);
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    asm volatile ("mov r2, #8\n\tmov r1, #0\n\tneg r2, r2\n\tmov r0, #0"
                  : "=r" (moveActor), "=r" (moveX), "=r" (moveY));
    __Func_80922c4(moveActor, moveX, moveY);
    __PlaySound(0x9e);
    asm volatile ("mov r5, #0x29\n\tmov r6, #4" : "=r" (fifth), "=r" (sixth));
    __Func_80105d4(0x35, 4, 2, 2, fifth, sixth);
    __CutsceneWait(10);
    __Func_80105d4(0x35, 6, 2, 2, fifth, sixth);
    __CutsceneWait(10);
    __Func_8091e9c(1);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
