#include "gba/types.h"

extern void __CutsceneStart(void);
extern void __LoadFieldActors(const void *actors);
extern void __WaitFrames(int frames);
extern void __MessageID(int id);
extern void __Func_8092c40(int actor, int value);
extern int __Func_8091c7c(int actor, int value);
extern void __ActorMessage(int actor, int value);
extern void __Func_80931ec();
extern void __CutsceneEnd(void);
extern u8 ActorData[] asm(".L3c9c");
extern u8 *iwram_3001ebc;

void OvlFunc_888_20084e8(void)
{
    register int one asm("r0");
    register int three asm("r3");
    register int seven asm("r2");
    register int sixteen asm("r1");
    register int fourteen asm("r4");
    register int zero asm("r5");

    __CutsceneStart();
    __LoadFieldActors(ActorData);
    __WaitFrames(1);
    __MessageID(0x1bfd);
    asm volatile("mov r1, #0\n\t"
                 "mov r0, #9\n\t"
                 "bl __Func_8092c40"
                 : : : "r0", "r1", "r2", "r3", "memory");
    if (__Func_8091c7c(0, 0) == 0) {
        __ActorMessage(9, 0);
    } else {
        (*(u16 *)(iwram_3001ebc + 0x1d8))++;
        one = 1;
        three = 3;
        seven = 7;
        sixteen = 0x10;
        fourteen = 0xe;
        zero = 0;
        __Func_80931ec(2, 0x10, 1, 0x18, one, three, seven, sixteen,
                       one, fourteen, zero);
        __ActorMessage(9, 0);
    }
    __CutsceneEnd();
}
