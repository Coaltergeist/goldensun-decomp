/* rom_7c6bac (overlay file 942): consolidated TU — kalay_docks map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kalay_docks/exports.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_942_2008030(void) {
    __Func_80955b0(14, 0, 5);
}

INCLUDE_ASM("asm/maps/kalay_docks/KalayDocks_GetEntrances.s");

unsigned int KalayDocks_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098a0[];

void *KalayDocks_GetExits(void) {
    return (void *)gOvl_020098a0;
}

INCLUDE_ASM("asm/maps/kalay_docks/KalayDocks_GetActors.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008144.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern int __GetFlag(int);
extern unsigned char _EVENT_6b[], _EVENT_70[], _EVENT_6c[];
extern unsigned char GFX_Thermometer[];
extern unsigned char Lm942_1e80[] __asm__(".Lm942_1e80");
extern unsigned char Lm942_2120[] __asm__(".Lm942_2120");
extern unsigned char Lm942_2018[] __asm__(".Lm942_2018");
extern unsigned char Lm942_2390[] __asm__(".Lm942_2390");
extern unsigned char Lm942_230c[] __asm__(".Lm942_230c");
extern unsigned char Lm942_224c[] __asm__(".Lm942_224c");
extern unsigned char Lm942_1e74[] __asm__(".Lm942_1e74");

int KalayDocks_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_6b) {
        if (__GetFlag(0x93e)) return (int)GFX_Thermometer;
        return (int)Lm942_1e80;
    }
    if (ev == (int)_EVENT_70) {
        if (__GetFlag(0x950)) return (int)Lm942_2120;
        return (int)Lm942_2018;
    }
    if (ev == (int)_EVENT_6c) {
        if (__GetFlag(0x950)) return (int)Lm942_2390;
        if (__GetFlag(0x93e)) return (int)Lm942_230c;
        return (int)Lm942_224c;
    }
    return (int)Lm942_1e74;
}

void OvlFunc_942_2008240(void) {
    __CutsceneStart();
    __MessageID(0x1cf8);
    __Func_8093054(8, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008260.s");

void OvlFunc_942_20082dc(void)
{
  int new_var;
  __MapActor_GetActor(0);
  new_var = 0x80 << 7;
  __CutsceneStart();
  if (__GetFlag(0x8a7))
  {
    if (__GetFlag(0x8a9))
    {
      __MessageID(0x1d23);
      __ShowActorMessage_NoWait(0xc, 0);
      __Func_8092adc(0xc, new_var, 0);
    }
  }
}

INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008328.s");

void OvlFunc_942_20084b8(void) {
    __CutsceneStart();
    if (__GetFlag(0x8a7)) {
        __MessageID(0x1d1f);
        __ShowActorMessage_NoWait(0xd, 0);
    } else if (__GetFlag(0x8a5)) {
        __MessageID(0x1d1b);
        __ActorMessage(0xd, 0);
    } else {
        __MessageID(0x1d19);
        __ActorMessage(0xd, 0);
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_200851c.s");

void OvlFunc_942_2008688(void) {
    __CutsceneStart();
    __MessageID(0x1f09);
    __Func_8093054(8, 0);
    __CutsceneEnd();
}

void OvlFunc_942_20086a8(void) {
    __CutsceneStart();
    __MessageID(0x1f15);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_20086c8.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_20087dc.s");
INCLUDE_ASM("asm/maps/kalay_docks/KalayDocks_MapInit.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_20088cc.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008958.s");

extern unsigned int iwram_3001ebc;
extern void __ClearFlag(int);

void OvlFunc_942_2008ad4(void) {
    *(unsigned int *)((char *)iwram_3001ebc + 0x1c0) = 0x1c0 + 0x49;
    __ClearFlag(0x12f);
}

INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008af8.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008b68.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008ba0.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008e40.s");

INCLUDE_ASM("asm/maps/kalay_docks/imports.s");
