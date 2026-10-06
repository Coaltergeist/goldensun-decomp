#include "state/global_state.h"

extern GlobalState gState;

extern void *__MapActor_GetActor(int);

extern void __Func_8092950(int, int);

extern void __Func_8092b08(int, int);

extern void __Actor_SetSpriteFlags(void *, int);

extern void OvlFunc_917_2009768(int);

extern unsigned char Const_0[] __asm__(".Lm917_10d4");

__asm__(".equ .Lm917_10d4, 0");

int KolimaForest5_MapInit(void) {
    void *actor10;
    void *actor14;
    void *actor11;
    void *act;
    char *p11;
    char *p14;
    int r0;
    int r3;
    int r2;
    int r1;
    int r5;
    int zero;

    actor10 = __MapActor_GetActor(10);
    actor14 = __MapActor_GetActor(14);
    actor11 = __MapActor_GetActor(11);
    __WaitFrames(1);
    __Func_8092950(14, 15);

    r0 = 0xe0;
    r3 = *(int *)iwram_3001ebc;
    r0 <<= 1;
    r2 = 0x81;
    r3 += r0;
    r2 <<= 2;
    *(int *)r3 = r2;
    r2 = (int)&gState;
    r0 += 0x80;
    r1 = 0x28;
    r3 = r2 + r0;
    *(short *)r3 = r1;
    r3 = 0x242;
    r2 += r3;
    r3 = 4;
    *(short *)r2 = r3;

    zero = (int)Const_0;
    if (__GetFlag(0x845) == 0) {
        OvlFunc_917_2009768(3);
    }

    act = __MapActor_GetActor(8);
    r5 = 6;
    *(short *)((char *)act + 0x20) = r5;
    *(short *)((char *)__MapActor_GetActor(9) + 0x20) = r5;
    *(short *)((char *)__MapActor_GetActor(12) + 0x20) = r5;
    *(short *)((char *)__MapActor_GetActor(13) + 0x20) = r5;

    __Actor_SetSpriteFlags(__MapActor_GetActor(14), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(11), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);

    __Func_8092b08(8, 2);
    __Func_8092b08(14, 2);
    __Func_8092b08(9, 2);

    *(unsigned char *)((char *)actor10 + 0x55) = zero;
    p11 = (char *)actor11 + 0x55;
    r3 = 0xe0;
    r3 <<= 13;
    *(int *)((char *)actor10 + 0xc) = r3;
    *p11 = zero;
    p14 = (char *)actor14 + 0x55;
    *(int *)((char *)actor11 + 0xc) = r3;
    *p14 = zero;
    *(int *)((char *)actor14 + 0xc) = r3;

    __MapActor_SetAnim(9, 3);
    __MapActor_SetAnim(8, 3);

    r5 = 8;
    *(unsigned char *)((char *)__MapActor_GetActor(8) + 0x59) |= r5;
    *(unsigned char *)((char *)__MapActor_GetActor(9) + 0x59) |= r5;
    *(unsigned char *)((char *)__MapActor_GetActor(10) + 0x59) |= r5;
    *(unsigned char *)((char *)__MapActor_GetActor(11) + 0x59) |= r5;
    *(unsigned char *)((char *)__MapActor_GetActor(14) + 0x59) |= r5;

    return 0;
}
