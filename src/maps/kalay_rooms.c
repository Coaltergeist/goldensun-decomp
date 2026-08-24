/* rom_7c3044 (overlay file 937): consolidated TU — kalay_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kalay_rooms/exports.s");

INCLUDE_ASM("asm/maps/kalay_rooms/KalayRooms_GetEntrances.s");

int KalayRooms_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008728[];

void *KalayRooms_GetExits(void) {
    return (void *)gOvl_02008728;
}

INCLUDE_ASM("asm/maps/kalay_rooms/KalayRooms_GetActors.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_64[], _EVENT_65[];
extern unsigned char Lm937_c88[] __asm__(".Lm937_c88");
extern unsigned char Lm937_a48[] __asm__(".Lm937_a48");
extern unsigned char Lm937_eb0[] __asm__(".Lm937_eb0");
extern unsigned char Lm937_a3c[] __asm__(".Lm937_a3c");

int KalayRooms_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_64) {
        int f1 = *(short *)((char *)p + 0x1c2);
        switch (f1) {
        case 9: case 0xa: case 0xb: case 0xc: case 0xd: case 0xe: case 0xf:
        case 0x11:
            return (int)Lm937_c88;
        default:
            return (int)Lm937_a48;
        }
    }
    if (ev == (int)_EVENT_65)
        return (int)Lm937_eb0;
    return (int)Lm937_a3c;
}

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

INCLUDE_ASM("asm/maps/kalay_rooms/OvlFunc_937_20081fc.s");
INCLUDE_ASM("asm/maps/kalay_rooms/OvlFunc_937_2008240.s");
INCLUDE_ASM("asm/maps/kalay_rooms/KalayRooms_MapInit.s");
INCLUDE_ASM("asm/maps/kalay_rooms/OvlFunc_937_200833c.s");

INCLUDE_ASM("asm/maps/kalay_rooms/imports.s");
