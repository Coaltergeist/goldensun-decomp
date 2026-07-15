#include "gba/types.h"

extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int mode);
extern void __Func_8092c40(int actor, int mode);
extern int __Func_8091c7c(int actor, int mode);
extern void __CutsceneEnd(void);

void OvlFunc_939_2008764(void)
{
    register int callActor asm("r0");
    register int callMode asm("r1");
    __CutsceneStart();
    if (!__GetFlag(0x85a)) {
        __MessageID(0x1be1);
        __ActorMessage(0x12, 0);
    } else {
        __MessageID(0x1b9f);
        asm volatile ("mov r1, #0\n\tmov r0, #0x12" : "=r" (callActor), "=r" (callMode));
        __Func_8092c40(callActor, callMode);
        if (__Func_8091c7c(0, 0) == 0) {
            asm volatile (
                "ldr r5, =iwram_3001ebc\n\t"
                "mov r2, #0xec\n\t"
                "ldr r3, [r5]\n\t"
                "lsl r2, #1\n\t"
                "add r3, r2\n\t"
                "ldrh r2, [r3]\n\t"
                "add r2, #1\n\t"
                "mov r1, #0\n\t"
                "strh r2, [r3]\n\t"
                "mov r0, #0x12"
                : "=r" (callActor), "=r" (callMode) : : "r2", "r3", "r5", "memory");
            __Func_8092c40(callActor, callMode);
            if (__Func_8091c7c(0, 0) == 1) {
                asm volatile (
                    "ldr r2, [r5]\n\t"
                    "mov r3, #0xec\n\t"
                    "lsl r3, #1\n\t"
                    "add r2, r3\n\t"
                    "ldrh r3, [r2]\n\t"
                    "add r3, #1\n\t"
                    "strh r3, [r2]"
                    : : : "r2", "r3", "r5", "memory");
            }
        }
        __ActorMessage(0x12, 0);
    }
    __CutsceneEnd();
}
