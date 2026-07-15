#include "gba/types.h"

extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __CutsceneWait(int frames);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __PlaySound(int sound);
extern void __Func_809228c(int actor, int x, int y);
extern void __MapActor_WaitMovement(int actor);
extern void OvlFunc_903_2008348(void);
extern void __Func_809202c(void);
extern void __CutsceneEnd(void);

void OvlFunc_903_200843c(void)
{
    register u8 *state asm("r5") = iwram_3001ebc;
    register int movement asm("r5");
    register int actor asm("r0");
    register int speedX asm("r1");
    register int speedY asm("r2");

    __CutsceneStart();
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(20);
    asm volatile ("mov r0, #0\n\tldr r1, =0x3333\n\tldr r2, =0x1999" : "=r" (actor), "=r" (speedX), "=r" (speedY));
    __MapActor_SetSpeed(actor, speedX, speedY);
    asm volatile ("ldr r1, =0x3333\n\tldr r2, =0x1999" : "=r" (speedX), "=r" (speedY));
    __MapActor_SetSpeed(9, speedX, speedY);
    __PlaySound(0xb9);

    movement = (11 - (*(s16 *)(state + 0x16c) << 1)) << 4;
    __Func_809228c(0, movement, 0);
    __Func_809228c(9, movement, 0);
    __MapActor_WaitMovement(0);
    __MapActor_WaitMovement(9);
    __CutsceneWait(20);
    __MapActor_SetAnim(0, 1);
    OvlFunc_903_2008348();
    __Func_809202c();
    __CutsceneEnd();
}
