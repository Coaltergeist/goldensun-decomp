/* rom_7f21b8 (overlay file 967): consolidated TU — lalivero_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lalivero_rooms/exports.s");

INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_2008030.s");

extern unsigned char gOvl_02009438[];

void *LaliveroRooms_GetEntrances(void) {
    return (void *)gOvl_02009438;
}

INCLUDE_ASM("asm/maps/lalivero_rooms/LaliveroRooms_GetSpecialExits.s");

extern unsigned char gOvl_020096d0[];

void *LaliveroRooms_GetExits(void) {
    return (void *)gOvl_020096d0;
}

INCLUDE_ASM("asm/maps/lalivero_rooms/LaliveroRooms_GetActors.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_20080c8.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_200815c.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_20081c8.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_2008234.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_200829c.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_2008308.s");

void OvlFunc_967_20083f4(void) {
    __SetFlag(0x9bc);
    __CutsceneStart();
    __Func_808e118();
    __CutsceneWait(0xa);
    __Func_80933f8(0xf0 << 15, -1, 0xc0 << 15, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);
    __MessageID(0x288b);
    __ActorMessage(0xc, 0);
    __CutsceneWait(0xa);
    __MapActor_Face(0, 0xc, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(0, 3);
    __CutsceneWait(0x1e);
    __CutsceneEnd();
}

void OvlFunc_967_2008468(void)
{
  int a = 0xc;
  int b = 0;
 do { __SetFlag(0x9bc); __MessageID(0x288b); } while (0);
  __ActorMessage(a, b);
}

extern unsigned int iwram_3001ebc;

void OvlFunc_967_200848c(void)
{
    short *ptr;
    unsigned int v;
    short val;

    ptr = (short *)iwram_3001ebc;
    v = 0xb6 << 1;
    ptr = (short *)((unsigned char *)ptr + v);
    val = *(short *)((unsigned char *)ptr + 0);
    __Func_8091e9c(val);
    __PlaySound(0x7b);
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern int __GetFlag(int);
extern unsigned char _EVENT_b4[];
extern unsigned char Lm967_2010[] __asm__(".Lm967_2010");
extern unsigned char Lm967_1eb4[] __asm__(".Lm967_1eb4");
extern unsigned char gScript_887__02009ca4[];
extern unsigned char Lm967_1a94[] __asm__(".Lm967_1a94");

int LaliveroRooms_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b4) {
        if (__GetFlag(0x9a7)) return (int)Lm967_2010;
        return (int)Lm967_1eb4;
    }
    if (__GetFlag(0x9a7)) return (int)gScript_887__02009ca4;
    return (int)Lm967_1a94;
}
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_2008508.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_2008eec.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/LaliveroRooms_MapInit.s");

INCLUDE_ASM("asm/maps/lalivero_rooms/imports.s");
