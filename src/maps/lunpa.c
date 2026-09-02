// fakematch
/* rom_7c460c (overlay file 939): consolidated TU — lunpa map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lunpa/Lunpa_GetEntrances.s");

unsigned int Lunpa_GetSpecialExits(void) {
    return 0;
}

INCLUDE_ASM("asm/maps/lunpa/Lunpa_GetExits.s");
INCLUDE_ASM("asm/maps/lunpa/Lunpa_GetActors.s");

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

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20083f4.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008468.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_200849c.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20085f0.s");

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_939_20086bc(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29e1, 1);
    __CutsceneEnd();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState__a1 __asm__("gState");
extern int __GetFlag(int);
extern unsigned char _EVENT_9f[], _EVENT_68[];
extern unsigned char Lm939_23b4[] __asm__(".Lm939_23b4");
extern unsigned char Lm939_21bc[] __asm__(".Lm939_21bc");
extern unsigned char Lm939_1fc4[] __asm__(".Lm939_1fc4");

int Lunpa_GetEvents(void)
{
    GlobalState *p = &gState__a1;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_9f) {
        __GetFlag(0x941);
        return (int)Lm939_23b4;
    }
    if (ev == (int)_EVENT_68) {
        if (__GetFlag(0x941)) return (int)Lm939_21bc;
    }
    return (int)Lm939_1fc4;
}

void OvlFunc_939_2008738(void) {
    __CutsceneStart();
    __MapActor_Emote(0x11, 0x81 << 1, 0x3c);
    __MessageID(0x1b9c);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008764.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20087f4.s");

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

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20088ec.s");

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

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008ac4.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008b0c.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008b6c.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008c10.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008c74.s");

extern void __Func_8093c00(void);

void OvlFunc_939_2008d08(void) {
    __Func_8093c00();
}

void OvlFunc_939_2008d14(void) {
    if (__GetFlag(0x201))
        return;
    __PlaySound(0x53);
}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008d30.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008eb0.s");

void OvlFunc_939_2008f9c(void) {}

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008fa0.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2008ff0.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_200918c.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20091d0.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2009240.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_20092a4.s");
INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_200931c.s");
extern void __MapTransitionIn(void);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __CutsceneWait(int);
extern void __Func_8096fb0(int, int);
extern void __Func_80970f8(int, int);
extern void __Func_809728c(void);
extern void __FieldMove(int);
extern void __Func_8097174(void);
void OvlFunc_939_20095bc(void)
{
    int y = 0x120;
    while (y == 0) {}

    __CutsceneStart();
    __MapTransitionIn();
    __MapActor_TravelToAnim(0, 0x98, 0xa8);
    __MapActor_WaitMovement(0);
    __CutsceneWait(0x14);
    __Func_8096fb0(0x92, 1);
    __Func_80970f8(0, 0);
    __Func_809728c();
    __FieldMove(1);
    __Func_8097174();
    __MapActor_TravelToAnim(0, 0x90, 0xb8);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x58, 0xb8);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x58, 0xc8);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x48, 0xc8);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x48, y);
    __MapActor_WaitMovement(0);
    __MapActor_TravelToAnim(0, 0x58, y);
    __MapActor_WaitMovement(0);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/lunpa/Lunpa_MapInit.s");

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

INCLUDE_ASM("asm/maps/lunpa/OvlFunc_939_2009840.s");
