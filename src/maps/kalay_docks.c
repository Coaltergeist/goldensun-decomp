/* rom_7c6bac (overlay file 942): consolidated TU — kalay_docks map overlay. */

#include "nonmatching.h"

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_942_2008030(void) {
    __Func_80955b0(14, 0, 5);
}

INCLUDE_ASM("asm/maps/kalay_docks/ovl_30_a_c.s");

unsigned int KalayDocks_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098a0[];

void *KalayDocks_GetExits(void) {
    return (void *)gOvl_020098a0;
}

INCLUDE_ASM("asm/maps/kalay_docks/ovl_30_c_c_a_a.s");

void OvlFunc_942_2008240(void) {
    __CutsceneStart();
    __MessageID(0x1cf8);
    __Func_8093054(8, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kalay_docks/ovl_30_c_c_a_c_a_a.s");

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

INCLUDE_ASM("asm/maps/kalay_docks/ovl_30_c_c_a_c_a_c.s");

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

INCLUDE_ASM("asm/maps/kalay_docks/ovl_30_c_c_a_c_c_a.s");

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

INCLUDE_ASM("asm/maps/kalay_docks/ovl_30_c_c_a_c_c_c_c.s");

extern unsigned int iwram_3001ebc;
extern void __ClearFlag(int);

void OvlFunc_942_2008ad4(void) {
    *(unsigned int *)((char *)iwram_3001ebc + 0x1c0) = 0x1c0 + 0x49;
    __ClearFlag(0x12f);
}

INCLUDE_ASM("asm/maps/kalay_docks/ovl_30_c_c_c.s");
