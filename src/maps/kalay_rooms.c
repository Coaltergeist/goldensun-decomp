/* rom_7c3044 (overlay file 937): consolidated TU — kalay_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kalay_rooms/exports.s");

INCLUDE_ASM("asm/maps/kalay_rooms/ovl_30_a.s");

int KalayRooms_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008728[];

void *KalayRooms_GetExits(void) {
    return (void *)gOvl_02008728;
}

INCLUDE_ASM("asm/maps/kalay_rooms/ovl_30_c_c_a.s");

void OvlFunc_937_2008144(void) {
    __CutsceneStart();
    __MessageID(0x1add);
    __ActorMessage(0xc, 0);
    __SetFlag(0x91 << 4);
    __CutsceneEnd();
}

void OvlFunc_937_200816c(void) {
    __CutsceneStart();
    __MessageID(0x1ae3);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_937_200818c(void)
{
    unsigned short v;

    v = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) - 0x6001;
    if (v <= 0x3ffe) {
        __Func_80b3284(7, 8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x911) != 0) {
            __MessageID(0x1afb);
            __ActorMessage(8, 0);
        } else {
            __MessageID(0x1ad7);
            __Func_8093054(8, 0);
            __SetFlag(0x910);
        }
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/kalay_rooms/ovl_30_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/kalay_rooms/imports.s");
