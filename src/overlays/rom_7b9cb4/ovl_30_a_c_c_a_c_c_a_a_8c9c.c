#include "gba/types.h"

extern void __CutsceneStart(void);
extern void __Func_8010704(int, int, int, int);
extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern u8 *__MapActor_GetActor(int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void OvlFunc_932_200840c(void);
extern void __CutsceneEnd(void);

void OvlFunc_932_2008c9c(void)
{
    u8 *actor;
    volatile int stackArgs[2];

    __CutsceneStart();
    __asm__ volatile (
        "mov r3, #24\n\tmov r2, #26\n\tstr r3, [sp]\n\tstr r2, [sp, #4]\n\t"
        "mov r3, #1\n\tmov r1, #27\n\tmov r2, #2\n\tmov r0, #24\n\tbl __Func_8010704"
        : "=m" (stackArgs)
        :
        : "r0", "r1", "r2", "r3", "lr", "memory");
    __PlaySound(0xb9);
    __asm__ volatile (
        "mov r0, #10\n\tldr r1, =0x3333\n\tldr r2, =0x1999\n\tbl __MapActor_SetSpeed"
        : : : "r0", "r1", "r2", "r3", "lr", "memory");
    __asm__ volatile (
        "ldr r1, =0x3333\n\tldr r2, =0x1999\n\tmov r0, #0\n\tbl __MapActor_SetSpeed"
        : : : "r0", "r1", "r2", "r3", "lr", "memory");
    actor = __MapActor_GetActor(0xa) + 0x5a;
    *actor &= 0xfe;
    __MapActor_SetAnim(0, 8);
    __asm__ volatile (
        "mov r1, #200\n\tmov r2, #212\n\tmov r0, #0\n\tlsl r1, r1, #1\n\tlsl r2, r2, #1\n\tbl __MapActor_TravelTo"
        : : : "r0", "r1", "r2", "r3", "lr", "memory");
    __asm__ volatile (
        "mov r1, #204\n\tmov r2, #212\n\tlsl r2, r2, #1\n\tlsl r1, r1, #1\n\tmov r0, #10\n\tbl __MapActor_TravelTo"
        : : : "r0", "r1", "r2", "r3", "lr", "memory");
    __MapActor_WaitMovement(0xa);
    __MapActor_SetAnim(0, 1);
    OvlFunc_932_200840c();
    __CutsceneEnd();
}
