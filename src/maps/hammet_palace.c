/* rom_7c37ac (overlay file 938): consolidated TU — hammet_palace map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/hammet_palace/exports.s");

INCLUDE_ASM("asm/maps/hammet_palace/HammetPalace_GetEntrances.s");

unsigned int HammetPalace_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_917__02009d9c[];

void *HammetPalace_GetExits(void) {
    return (void *)gScript_917__02009d9c;
}

INCLUDE_ASM("asm/maps/hammet_palace/HammetPalace_GetActors.s");
INCLUDE_ASM("asm/maps/hammet_palace/HammetPalace_GetEvents.s");

void OvlFunc_938_20080d4(void) {
    __CutsceneStart();
    __MessageID(0x1b83);
    __Func_8093054(0xd, 0);
    __CutsceneEnd();
}

void OvlFunc_938_20080f4(void) {
    __CutsceneStart();
    __MessageID(0x1b88);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_938_2008114(void)
{
  unsigned long long t1;
  unsigned long v1;
  unsigned short t2;

  __CutsceneStart();
  __MapActor_Emote(8, 0x100, 0x3c);
  __MessageID(0x1b91);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __ActorMessage_Wait(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __Func_80925cc(t2, 2);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __ActorMessage_Wait(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __MapActor_DoAnim(t2, 4);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __ActorMessage_Wait(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __MapActor_DoAnim(t2, 3);

  __ActorMessage_Wait(8, 0, 10);
  __SetFlag(0x913);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_2008184.s");
INCLUDE_ASM("asm/maps/hammet_palace/HammetPalace_MapInit.s");
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_2008264.s");
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_2008360.s");
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_200940c.s");
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_2009450.s");
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_2009494.s");

INCLUDE_ASM("asm/maps/hammet_palace/imports.s");
