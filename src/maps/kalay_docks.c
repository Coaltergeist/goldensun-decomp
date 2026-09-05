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

extern void __CutsceneStart(void);
extern void __CutsceneWait(int);
extern void __CutsceneEnd(void);
void __SetFlag(int);
void __Func_8092adc(int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __MapActor_Emote(int, int, int);
extern int __Func_8091c7c(int, int);
void OvlFunc_942_20086c8(void)
{
    extern unsigned int iwram_3001ebc;
  int emote1 = 0x80 << 1;
  int emote2 = 0x81 << 1;
  int flag = 0x8a8;
  int id = 0xb;
  unsigned short *base;

  do { } while (emote1 == 0);

  __CutsceneStart();
  if (__GetFlag(flag) != 0)
  {
    __MapActor_Face(id, 0, 0);
    __CutsceneWait(0x14);
    __MessageID(0x1f1c);
    __ActorMessage(id, 0);
    __CutsceneEnd();
    return;
  }

  __CutsceneWait(0x14);
  __MapActor_Emote(id, emote1, 0x32);
  __MapActor_Face(id, 0, 0);
  __CutsceneWait(0x14);
  __MessageID(0x1f18);
  __ActorMessage(id, 0);
  if (__GetFlag(0x8a6) != 0)
  {
    __CutsceneWait(0x14);
    __MapActor_Emote(id, emote2, 0x28);
    __ShowActorMessage_NoWait(id, 0);
    if (__Func_8091c7c(0, 0) == 0)
    {
      __CutsceneWait(0x14);
      __ActorMessage(id, 0);
      __SetFlag(flag);
    }
    else
    {
      __CutsceneWait(10);
      base = (unsigned short *)iwram_3001ebc;
      base[0xec] += 1;
      __ActorMessage(id, 0);
      __CutsceneWait(10);
      __Func_8092adc(id, 0, 0);
      __CutsceneWait(0x1e);
    }
  }
  else
  {
    __CutsceneWait(10);
    __Func_8092adc(id, 0, 0);
    __CutsceneWait(0x1e);
  }
  __CutsceneEnd();
}
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_930__020096b8[30];
extern unsigned char Lm942_16ce[] __asm__(".Lm942_16ce");

extern unsigned char Lconst_6b[] __asm__(".Lconst_6b");
__asm__(".equ .Lconst_6b, 0x6b");

extern unsigned char Lconst_70[] __asm__(".Lconst_70");
__asm__(".equ .Lconst_70, 0x70");

extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_8092b08(int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __Func_8010560(void *, int, int);
extern void __Func_8091e9c(int);

void OvlFunc_942_20087dc(void)
{
    int s1 = 0x80 << 8;
    int s2 = 0x80 << 7;
    int off = 0xe0 << 1;
    int a1 = 0x98 << 1;
    int a2 = 0xae << 3;

    do { } while (s1 == 0);

    __CutsceneStart();
    __PlaySound(0x9e);
    __MapActor_SetSpeed(0, s1, s2);
    __Func_8092b08(0, 3);
    if (*(short *)((char *)&gState + off) == (int)Lconst_6b) {
        __MapActor_TravelToAnim(0, a1, a2);
        __Func_8010560(gScript_930__020096b8, 0x4e, 0x56);
    } else if (*(short *)((char *)&gState + off) == (int)Lconst_70) {
        __MapActor_TravelToAnim(0, 0xf8, 0xc0);
        __Func_8010560(Lm942_16ce, 0x4a, 9);
    }
    __CutsceneWait(0x10);
    __Func_8091e9c(3);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/kalay_docks/KalayDocks_MapInit.s");
extern void __ClearFlag(int);
void OvlFunc_942_2008ba0(void);
void __MapActor_SetPos(int, int, int);

void OvlFunc_942_20088cc(void) {
    int pos_x = 0xb0 << 15;
    int pos_y = 0xa3 << 19;
    int f8ac = 0x8ac;
    int f109 = 0x109;
    int f8a9 = 0x8a9;
    int f911 = 0x911;
    unsigned int r2;
    unsigned int r3;
    GlobalState *state = &gState;

    do { } while (pos_x == 0);

    r2 = 0xe1;
    r2 <<= 1;
    r3 = (unsigned int)state + r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 1) {
        if (!__GetFlag(f8ac)) {
            __SetFlag(f8ac);
            OvlFunc_942_2008ba0();
        }
    }

    r2 = 0xe1;
    r2 <<= 1;
    r3 = (unsigned int)state + r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 2) {
        if (!__GetFlag(f109)) {
            __ClearFlag(f8a9);
        }
    }

    if (__GetFlag(f911)) {
        if (!__GetFlag(f8a9)) {
            __MapActor_SetPos(0xc, pos_x, pos_y);
            __Func_8092adc(0xc, 0, 0);
        }
    }
}
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008958.s");

extern unsigned int iwram_3001ebc;

void OvlFunc_942_2008ad4(void) {
    *(unsigned int *)((char *)iwram_3001ebc + 0x1c0) = 0x1c0 + 0x49;
    __ClearFlag(0x12f);
}

INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008af8.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008b68.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008ba0.s");
INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008e40.s");
INCLUDE_ASM("asm/maps/kalay_docks/kalay_docks_data.s");

INCLUDE_ASM("asm/maps/kalay_docks/imports.s");
