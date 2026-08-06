// fakematch
/* rom_79dd90 (overlay file 910): consolidated TU — mccoys_palace_ext map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/mccoys_palace_ext/exports.s");

INCLUDE_ASM("asm/maps/mccoys_palace_ext/ovl_30_a_a.s");

extern unsigned char gOvl_02008c08[];

unsigned int MccoysPalaceExt_GetEntrances(void) {
    return (unsigned int)gOvl_02008c08;
}

int MccoysPalaceExt_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008c50[];

void *MccoysPalaceExt_GetExits(void) {
    return (void *)gOvl_02008c50;
}

INCLUDE_ASM("asm/maps/mccoys_palace_ext/ovl_30_c_c_a_a_a_a.s");

void OvlFunc_910_20080f8(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0xd;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd2);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_910_200812c(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29de, 1);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mccoys_palace_ext/ovl_30_c_c_a_a_c.s");

#include "message.h"

void OvlFunc_910_2008184(void)
{
    __CutsceneStart();
    __MessageID(MSG_13c0);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

void OvlFunc_910_20081a4(void) {
    __CutsceneStart();
    __MessageID(0x13c3);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

void OvlFunc_910_20081c4(void) {
    __CutsceneStart();
    __MessageID(0x1751);
    __Func_8093054(0xb, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mccoys_palace_ext/ovl_30_c_c_c_c_a_a.s");

// fakematch
extern unsigned char *iwram_3001ebc;

void OvlFunc_910_200845c(void)
{
  int t;
  unsigned int w, z;

  __CutsceneStart();
  if (__GetFlag(0x200) == 0) {
    OvlFunc_910_20088e8();
  }
  w = 0x80;
  z = 0x80;
  {
    register unsigned int rq __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (rq));
    w <<= 8;
    __asm__ volatile ("" : "+r" (w));
    z <<= 7;
    __MapActor_SetSpeed(rq, w, z);
  }
  *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
  {
    register unsigned int rq __asm__("r0") = 0;
    __asm__ volatile ("" : : "r" (rq));
    __MapActor_SetAnim(rq, 2);
  }
  t = 0x10;
  {
    register int p1 __asm__("r1") = 2;
    __asm__ volatile ("" : : "r" (p1));
    t = -t;
    __Func_8092208(0, p1, t);
  }
  __CutsceneWait(0x10);
  __Func_8091e9c(2);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mccoys_palace_ext/ovl_30_c_c_c_c_a_c.s");

int OvlFunc_910_200890c(int *actor)
{
  short *r7;
  int r5;
  int t;
  unsigned int a;
  unsigned int b;
  r7 = *((short **) (((char *) actor) + 0x50));
  r5 = __sin(*((int *) (((char *) actor) + 0x30))) << 1;
  if (r5 > 0)
  {
    r5 = -r5;
  }
  ;
  *((int *) (((char *) actor) + 8)) = (*((int *) (((char *) actor) + 0x38))) + (__cos(*((int *) (((char *) actor) + 0x30))) << 1);
  *((int *) (((char *) actor) + 0xc)) = (*((int *) (((char *) actor) + 0x3c))) + r5;
  t = __cos((*((int *) (((char *) actor) + 0x30))) + 0x8000);
  if (t < 0)
  {
    t = t + 7;
  }
  r7[15] = t >> 3;
  a = __Random();
  b = __Random();
  *((int *) (((char *) actor) + 0x30)) = ((*((int *) (((char *) actor) + 0x30))) + (((a << 9) >> 16) + ((b << 9) >> 16))) + 0x400;
  return 0;
}

INCLUDE_ASM("asm/maps/mccoys_palace_ext/ovl_30_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/mccoys_palace_ext/imports.s");
