/* rom_79dd90 (overlay file 910): consolidated TU — mccoys_palace_ext map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/mccoys_palace_ext/exports.s");

INCLUDE_ASM("asm/maps/mccoys_palace_ext/OvlFunc_910_2008030.s");

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

INCLUDE_ASM("asm/maps/mccoys_palace_ext/MccoysPalaceExt_GetActors.s");

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

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_22[];
extern unsigned char Lm910_d30[] __asm__(".Lm910_d30");
extern unsigned char Lm910_d24[] __asm__(".Lm910_d24");

int MccoysPalaceExt_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_22) return (int)Lm910_d30;
    return (int)Lm910_d24;
}

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

INCLUDE_ASM("asm/maps/mccoys_palace_ext/OvlFunc_910_20081e4.s");

extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void OvlFunc_910_20088e8(void);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_8092208(int, int, int);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);
extern void __CutsceneEnd(void);
extern unsigned char *iwram_3001ebc;

void OvlFunc_910_200845c(void)
{
  int sp1 = 0x8000;
  int sp2 = 0x4000;
  int t = -0x10;

  do { } while (sp1 == 0);

  __CutsceneStart();
  if (__GetFlag(0x200) == 0) {
    OvlFunc_910_20088e8();
  }
  __MapActor_SetSpeed(0, sp1, sp2);
  *(unsigned int *)(iwram_3001ebc + 0x1c0) = 0x100;
  __MapActor_SetAnim(0, 2);
  __Func_8092208(0, 2, t);
  __CutsceneWait(0x10);
  __Func_8091e9c(2);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mccoys_palace_ext/MccoysPalaceExt_MapInit.s");
INCLUDE_ASM("asm/maps/mccoys_palace_ext/OvlFunc_910_200850c.s");
INCLUDE_ASM("asm/maps/mccoys_palace_ext/OvlFunc_910_20085dc.s");
INCLUDE_ASM("asm/maps/mccoys_palace_ext/OvlFunc_910_20088e8.s");

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

INCLUDE_ASM("asm/maps/mccoys_palace_ext/OvlFunc_910_2008974.s");
INCLUDE_ASM("asm/maps/mccoys_palace_ext/mccoys_palace_ext_data.s");

INCLUDE_ASM("asm/maps/mccoys_palace_ext/imports.s");
