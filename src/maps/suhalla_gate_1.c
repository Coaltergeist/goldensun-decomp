/* rom_7ec968 (overlay file 963): consolidated TU — suhalla_gate_1 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/suhalla_gate_1/exports.s");

extern void __Func_8091f14(int a, int b);

void OvlFunc_963_2008030(void) {
    __Func_8091f14(0xd, 0x1a);
}

INCLUDE_ASM("asm/maps/suhalla_gate_1/SuhallaGate1_GetEntrances.s");

unsigned int SuhallaGate1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008b48[];

void *SuhallaGate1_GetExits(void) {
    return (void *)gOvl_02008b48;
}

INCLUDE_ASM("asm/maps/suhalla_gate_1/SuhallaGate1_GetActors.s");
INCLUDE_ASM("asm/maps/suhalla_gate_1/SuhallaGate1_GetEvents.s");
INCLUDE_ASM("asm/maps/suhalla_gate_1/SuhallaGate1_MapInit.s");
INCLUDE_ASM("asm/maps/suhalla_gate_1/OvlFunc_963_2008288.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_963_20082f8(void)
{
    short r5;
    unsigned char *base;

    base = *(unsigned char **)iwram_3001ebc;
    base += 0xb6 << 1;
    r5 = *(short *)base;
    __PlaySound(0x7b);
    __ClearFlag(0x8fb);
    __ClearFlag(0x8fc);
    __Func_8091e9c(r5);
}

INCLUDE_ASM("asm/maps/suhalla_gate_1/OvlFunc_963_2008334.s");
INCLUDE_ASM("asm/maps/suhalla_gate_1/OvlFunc_963_20083c4.s");
INCLUDE_ASM("asm/maps/suhalla_gate_1/OvlFunc_963_2008730.s");

void OvlFunc_963_20087ac(void) {
    unsigned int r5;

    __CutsceneStart();
    __MessageID(0x266d);
    __ActorMessage_Wait(0xa, 0, 0xa);
    r5 = 0;
    do {
        __Func_8092950(0xa, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 1);
        __WaitFrames(4);
        __Func_8092950(0xa, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 0);
        r5++;
        __WaitFrames(4);
    } while (r5 <= 5);
    r5 = 0;
    do {
        __Func_8092950(0xa, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 1);
        __WaitFrames(2);
        __Func_8092950(0xa, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 0);
        r5++;
        __WaitFrames(2);
    } while (r5 <= 0xb);
    __MapActor_SetPos(0xa, 0, 0);
    __SetFlag(0x897);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/suhalla_gate_1/ovl_30_c_c_c.s");

INCLUDE_ASM("asm/maps/suhalla_gate_1/imports.s");
