// fakematch
/* rom_7c460c (overlay file 939): consolidated TU — lunpa map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lunpa/ovl_314_a_a.s");

unsigned int Lunpa_GetSpecialExits(void) {
    return 0;
}

INCLUDE_ASM("asm/maps/lunpa/ovl_314_a_c_a_a_a.s");

void OvlFunc_939_20083c0(void)
{
  int new_var;
  unsigned short new_var2;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  new_var = 0;
  new_var2 = 0x14;
  __MapActor_SetPos(new_var2, new_var, (long) (new_var4 = new_var));
  __SetFlag(0xfd1);
  new_var6 = 0xb5;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_808f1c0(new_var5, 3);
  __Func_8091a58(0xb5, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa/ovl_314_a_c_a_a_c_a.s");

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_939_20086bc(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29e1, 1);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa/ovl_314_a_c_a_a_c_c.s");

void OvlFunc_939_2008738(void) {
    __CutsceneStart();
    __MapActor_Emote(0x11, 0x81 << 1, 0x3c);
    __MessageID(0x1b9c);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa/ovl_314_a_c_a_c_a.s");

void OvlFunc_939_2008844(void) {
    __CutsceneStart();
    __MessageID(0x1ba6);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

void OvlFunc_939_2008864(void) {
    __CutsceneStart();
    __MessageID(0x1baa);
    __Func_8093054(0xb, 0);
    __CutsceneEnd();
}

void OvlFunc_939_2008884(void) {
    __CutsceneStart();
    __MessageID(0x1bb0);
    __Func_8093054(0xf, 0);
    __CutsceneEnd();
}

void OvlFunc_939_20088a4(void)
{
  int new_var;
  int new_var2;
  __CutsceneStart();
  new_var = 0;
  __Func_80925cc(0xa, 3);
  __MessageID(0x24d1);
 do { new_var2 = new_var; __ActorMessage(0xa, new_var2); } while (0);
  __CutsceneEnd();
}

void OvlFunc_939_20088cc(void) {
    __CutsceneStart();
    __MessageID(0x24d3);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa/ovl_314_a_c_a_c_c_c_c_c.s");

extern unsigned char gState;
extern void __MessageID(int);
extern int __GetFlag(int);
extern void __ActorMessage(int, int);

void OvlFunc_939_2008980(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) != 0) {
        __MessageID(0x2412);
    } else if (__GetFlag(0x941) != 0) {
        __MessageID(0x24dd);
    } else {
        __MessageID(0x1bb6);
    }
    __ActorMessage(9, 0);
}

extern void __SetFlag(int);
extern void __Func_8097608(void);
extern void __MapActor_Face(int, int, int);
extern void __Func_809259c(int, int);
extern void __MapActor_Emote(int, int, int);
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState__a1 __asm__("gState");
extern unsigned int iwram_3001ebc;

void OvlFunc_939_20089d4(void) {
    unsigned int r3;
    unsigned int r2;
    int x;
    unsigned long long t;
    unsigned int v;

    r3 = (unsigned int)&gState__a1;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0 && __GetFlag(0x941) && !__GetFlag(0x94d)) {
        x = 0x9af;
        __asm__("" : "+r"(x));
        x = __GetFlag(x);
        if (!x) {
            *(unsigned short *)(iwram_3001ebc + (0xbf << 1)) = x;
            __Func_8097608();
            __MapActor_Face(8, 0, 0);
            v = 8;
            __asm__ __volatile__("" : "+r"(v));
            __MapActor_Emote(v, 0x101, 0x3c);
            __MessageID(0x24db);
            __SetFlag(0x9af);
        } else {
            __MessageID(0x24e7);
        }
        __ActorMessage(8, 0);
        __Func_809259c(8, 1);
        __MessageID(0x24dc);
    } else {
        __MessageID(0x1bbf);
    }
    __ActorMessage(8, 0);
}

extern int _MSG_1bc0;

void OvlFunc_939_2008a90(void)
{
  unsigned long long t;
  unsigned long v;
  if (__GetFlag(0x941))
  {
    __MessageID(0x24e8);
  }
  else
  {
    __MessageID((int) (&_MSG_1bc0));
  }
  t = 9;
  do { t = (unsigned long) t; } while (0);
  v = t;
  __ActorMessage(v, 0);
}

INCLUDE_ASM("asm/maps/lunpa/ovl_314_a_c_c_a_c.s");

extern void __Func_8093c00(void);

void OvlFunc_939_2008d08(void) {
    __Func_8093c00();
}

void OvlFunc_939_2008d14(void) {
    if (__GetFlag(0x201))
        return;
    __PlaySound(0x53);
}

INCLUDE_ASM("asm/maps/lunpa/ovl_314_a_c_c_c_c.s");

void OvlFunc_939_2008f9c(void) {}

INCLUDE_ASM("asm/maps/lunpa/ovl_314_c_a.s");

int OvlFunc_939_20097d8(int *actor)
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

INCLUDE_ASM("asm/maps/lunpa/ovl_314_c_c.s");
