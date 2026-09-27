/* rom_7c6bac (overlay file 942): consolidated TU — kalay_docks map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/kalay_docks/exports.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_942_2008030(void) {
    __Func_80955b0(14, 0, 5);
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_6b[], _EVENT_70[], _EVENT_6c[];
extern unsigned char Lm942_1738[] __asm__(".Lm942_1738");
extern unsigned char Lm942_17c8[] __asm__(".Lm942_17c8");
extern unsigned char Lm942_1840[] __asm__(".Lm942_1840");
extern unsigned char Lm942_1708[] __asm__(".Lm942_1708");

void *KalayDocks_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_6b) return Lm942_1738;
    if (ev == (int)_EVENT_70) return Lm942_17c8;
    if (ev == (int)_EVENT_6c) return Lm942_1840;
    return Lm942_1708;
}


unsigned int KalayDocks_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098a0[];

void *KalayDocks_GetExits(void) {
    return (void *)gOvl_020098a0;
}

extern unsigned char gOvl_02009ba4[];
extern unsigned char Lm942_1acc[] __asm__(".Lm942_1acc");
extern unsigned char Lm942_19c4[] __asm__(".Lm942_19c4");
extern unsigned char gOvl_020098ec[];
extern unsigned char Lm942_1dcc[] __asm__(".Lm942_1dcc");
extern unsigned char Lm942_1d24[] __asm__(".Lm942_1d24");
extern unsigned char Lm942_1c7c[] __asm__(".Lm942_1c7c");
extern unsigned char Lm942_18d4[] __asm__(".Lm942_18d4");
void *KalayDocks_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_6b) {
        if (API_GetFlag(0x93e)) return gOvl_02009ba4;
        return Lm942_1acc;
    }
    if (ev == (int)_EVENT_70) {
        if (API_GetFlag(0x950)) return Lm942_19c4;
        return gOvl_020098ec;
    }
    if (ev == (int)_EVENT_6c) {
        if (API_GetFlag(0x950)) return Lm942_1dcc;
        if (API_GetFlag(0x93e)) return Lm942_1d24;
        return Lm942_1c7c;
    }
    return Lm942_18d4;
}
void OvlFunc_942_2008144(void) {
    __CutsceneStart();
    API_SetFlag(0x8aa);
    API_MapActor_TravelToAnimWait(0, 0x188, 0x128);
    API_MapActor_SetSpeed(8, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(8, 0x198, 0x128);
    API_Func_8092adc(8, 0x8000, 0);
    API_CutsceneWait(0x14);
    __CutsceneEnd();
}

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

void OvlFunc_942_2008260(void) {
    extern unsigned int iwram_3001ebc;
    unsigned short *base;

    __CutsceneStart();
    if (API_GetFlag(0x8a6) == 0)
    {
        API_MessageID(0x1cfd);
        __ShowActorMessage_NoWait(0xb, 0);
        if (__Func_8091c7c(0, 0) == 0)
        {
            API_ActorMessage(0xb, 0);
            API_SetFlag(0x8a6);
        }
        else
        {
            base = (unsigned short *)iwram_3001ebc;
            base[0xec] += 1;
            API_ActorMessage(0xb, 0);
        }
    }
    else
    {
        API_MessageID(0x1cfe);
        API_ActorMessage(0xb, 0);
    }
    __CutsceneEnd();
}

extern struct Actor *__MapActor_GetActor(unsigned int);

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

extern unsigned char _MSG_1d20[];
extern int __CheckPartyItem(int);
extern int __CheckItem(int, int);
extern void __Func_8078948(int, int);

void OvlFunc_942_2008328(void) {
    extern unsigned int iwram_3001ebc;
    struct Actor *actor;
    int dir;
    int msg;
    int unit;
    int slot;
    unsigned short *base;

    actor = __MapActor_GetActor(0);
    dir = (short)((actor->facing + (0x80 << 6)) & (int)0xffffc000);
    __CutsceneStart();
    if (API_GetFlag(0x8a7)) {
        if (API_GetFlag(0x8a9)) {
            __MessageID(0x1d23);
            __ShowActorMessage_NoWait(0xc, 0);
        } else {
            msg = (int)_MSG_1d20;
            __MessageID(msg);
            __ShowActorMessage_NoWait(0xc, 0);
            if (__Func_8091c7c(0, 0) == 0) {
                __CutsceneWait(10);
                __MessageID(msg + 1);
                API_ActorMessage(0xc, 0);
                API_MapActor_TravelToAnimWait(0xc, 0x58, 0xa1 << 3);
                API_Func_8092adc(0xc, 0x80 << 7, 0);
                __CutsceneWait(0x14);
                API_SetFlag(0x8a9);
            } else {
                __MessageID(msg + 2);
                API_ActorMessage(0xc, 0);
            }
        }
    } else {
        if ((dir << 16) != (0x80 << 24)) {
            return;
        }
        __MessageID(0x1d16);
        API_ActorMessage(0xc, 0);
        if (API_GetFlag(0x8a5)) {
            unit = __CheckPartyItem(0xeb);
            slot = __CheckItem(unit, 0xeb);
            API_MapActor_DoAnim(0xc, 3);
            API_MapActor_TravelToAnimWait(0xc, 0x58, 0xa1 << 3);
            API_Func_8092adc(0xc, 0x80 << 7, 0);
            base = (unsigned short *)iwram_3001ebc;
            base[0xec] += 1;
            API_ActorMessage(0xc, 0);
            __Func_8078948(unit, slot);
            API_SetFlag(0x8a7);
            actor = __MapActor_GetActor(0);
            API_MapActor_TravelToAnimWait(0, *(short *)((char *)actor + 0xa), 0xa3 << 3);
            API_MapActor_TravelToAnimWait(0, 0x48, 0xa3 << 3);
            API_MapActor_TravelToAnimWait(0xc, 0x58, 0xa3 << 3);
            API_Func_8092adc(0xc, 0, 0);
        } else {
            API_ActorMessage(0xc, 0);
        }
    }
    __CutsceneEnd();
}

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

extern void *__CreateUIBox(int, int, int, int, int);
extern void __CloseUIBox(void *, int);
extern void __Func_801e7c0(int, void *, int, int);
extern void __Func_801ea08(int, int, void *, int, int);
extern void __Func_8019908(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_DoAnim(int, int);

void OvlFunc_942_200851c(void) {
    extern unsigned int iwram_3001ebc;
    unsigned int r2;
    unsigned int r3;
    unsigned int cost;
    GlobalState *state;
    void *box;

    r2 = 0x96;
    r2 <<= 2;
    cost = r2;
    __CutsceneStart();
    if (API_GetFlag(0x8a5)) {
        __MessageID(0x1d0b);
        API_ActorMessage(8, 0);
        return;
    }

    __MessageID(0x1d04);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        __ActorMessage_Wait(8, 0, 10);
    } else {
        r3 = 0xec;
        r2 = iwram_3001ebc;
        r3 <<= 1;
        r2 += r3;
        r3 = *(unsigned short *)r2;
        r3 += 1;
        *(unsigned short *)r2 = r3;
        __Func_8019908(cost, 5);
        __ShowActorMessage_NoWait(8, 0);
        box = __CreateUIBox(0x13, 8, 0xb, 4, 2);
        __Func_801e7c0(0xc8a, box, 0, 0);
        state = &gState;
        __Func_801ea08(*(int *)((char *)state + 0x10), 6, box, 0x18, 8);
        if (__Func_8091c7c(-1, 0) == 1) {
            __CloseUIBox(box, 2);
            __MapActor_DoAnim(0, 4);
            __CutsceneWait(10);
            API_ActorMessage(8, 0);
        } else if (cost > *(unsigned int *)((char *)state + 0x10)) {
            __CloseUIBox(box, 2);
            __MapActor_DoAnim(0, 3);
            __CutsceneWait(10);
            r2 = iwram_3001ebc;
            r3 = 0xec;
            r3 <<= 1;
            r2 += r3;
            r3 = *(unsigned short *)r2;
            r3 += 1;
            *(unsigned short *)r2 = r3;
            API_PlaySound(0x71);
            API_ActorMessage(8, 0);
        } else {
            __CloseUIBox(box, 2);
            __MapActor_DoAnim(0, 3);
            __CutsceneWait(10);
            r3 = iwram_3001ebc;
            r2 = 0xec;
            r2 <<= 1;
            r3 += r2;
            r2 = *(unsigned short *)r3;
            r2 += 3;
            *(unsigned short *)r3 = r2;
            API_ActorMessage(8, 0);
            __Func_8091a58(0xeb, 0);
            API_SetFlag(0x8a5);
            __AddCoins(-cost);
        }
    }
    __CutsceneEnd();
}

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

  unsigned short *base;

  __CutsceneStart();
  if (API_GetFlag(0x8a8) != 0)
  {
    API_MapActor_Face(11, 0, 0);
    __CutsceneWait(0x14);
    __MessageID(0x1f1c);
    API_ActorMessage(11, 0);
    __CutsceneEnd();
    return;
  }

  __CutsceneWait(0x14);
  API_MapActor_Emote(11, 0x100, 0x32);
  API_MapActor_Face(11, 0, 0);
  __CutsceneWait(0x14);
  __MessageID(0x1f18);
  API_ActorMessage(11, 0);
  if (API_GetFlag(0x8a6) != 0)
  {
    __CutsceneWait(0x14);
    API_MapActor_Emote(11, 0x102, 0x28);
    __ShowActorMessage_NoWait(11, 0);
    if (__Func_8091c7c(0, 0) == 0)
    {
      __CutsceneWait(0x14);
      API_ActorMessage(11, 0);
      API_SetFlag(0x8a8);
    }
    else
    {
      __CutsceneWait(10);
      base = (unsigned short *)iwram_3001ebc;
      base[0xec] += 1;
      API_ActorMessage(11, 0);
      __CutsceneWait(10);
      API_Func_8092adc(11, 0, 0);
      __CutsceneWait(0x1e);
    }
  }
  else
  {
    __CutsceneWait(10);
    API_Func_8092adc(11, 0, 0);
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

extern unsigned char Lconst_6c[] __asm__(".Lconst_6c");
__asm__(".equ .Lconst_6c, 0x6c");

extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_8092b08(int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __Func_8010560(void *, int, int);
extern void __Func_8091e9c(int);

void OvlFunc_942_20087dc(void)
{
    int off = 0xe0 << 1;

    __CutsceneStart();
    __PlaySound(0x9e);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    __Func_8092b08(0, 3);
    if (*(short *)((char *)&gState + off) == (int)Lconst_6b) {
        API_MapActor_TravelToAnim(0, 0x130, 0x570);
        __Func_8010560(gScript_930__020096b8, 0x4e, 0x56);
    } else if (*(short *)((char *)&gState + off) == (int)Lconst_70) {
        API_MapActor_TravelToAnim(0, 0xf8, 0xc0);
        __Func_8010560(Lm942_16ce, 0x4a, 9);
    }
    __CutsceneWait(0x10);
    __Func_8091e9c(3);
    __CutsceneEnd();
}
extern void OvlFunc_942_20088cc(void);
extern void OvlFunc_942_2008958(void);
extern void OvlFunc_942_2008ad4(void);

int KalayDocks_MapInit(void) {
    GlobalState *state = &gState;
    unsigned int r1;
    unsigned int r2;
    unsigned int r3;

    r1 = 0xe1;
    r1 <<= 1;
    r3 = (unsigned int)state + r1;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x5a) {
        __SetFlag(0x950);
    }

    r1 = 0xe0;
    r1 <<= 1;
    r3 = (unsigned int)state + r1;
    r1 = 0;
    r2 = *(short *)((char *)r3 + r1);
    if (r2 == (int)Lconst_6b) {
        OvlFunc_942_20088cc();
    } else if (r2 == (int)Lconst_70) {
        OvlFunc_942_2008958();
    } else if (r2 == (int)Lconst_6c) {
        OvlFunc_942_2008ad4();
    }
    return 0;
}
extern void __ClearFlag(int);
void OvlFunc_942_2008ba0(void);
void __MapActor_SetPos(int, int, int);

void OvlFunc_942_20088cc(void) {
    unsigned int r2;
    unsigned int r3;
    GlobalState *state = &gState;

    r2 = 0xe1;
    r2 <<= 1;
    r3 = (unsigned int)state + r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 1) {
        if (!API_GetFlag(0x8ac)) {
            API_SetFlag(0x8ac);
            OvlFunc_942_2008ba0();
        }
    }

    r2 = 0xe1;
    r2 <<= 1;
    r3 = (unsigned int)state + r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 2) {
        if (!API_GetFlag(0x109)) {
            API_ClearFlag(0x8a9);
        }
    }

    if (API_GetFlag(0x911)) {
        if (!API_GetFlag(0x8a9)) {
            API_MapActor_SetPos(0xc, 0x580000, 0x5180000);
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

extern void __Func_8010704(int, int, int, int, int, int);
void OvlFunc_942_2008b68(int);

void OvlFunc_942_2008af8(void) {
    int x14;
    int x15;
    int s2;

    x14 = __MapActor_GetActor(14)->pos.x;
    x14 >>= 20;
    x15 = __MapActor_GetActor(15)->pos.x;
    s2 = 11;
    __Func_8010704(5, 12, 5, 1, 5, s2);
    __Func_8010704(1, 0, 1, 1, x15 >> 20, s2);
    __Func_8010704(1, 0, 1, 1, x14, s2);
    OvlFunc_942_2008b68(14);
    OvlFunc_942_2008b68(15);
}

INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008b68.s");

extern void __Func_808e118(void);

void OvlFunc_942_2008ba0(void)
{
    struct Actor *actor;

    __CutsceneStart();
    __Func_808e118();
    API_MapActor_SetPos(8, 0xa4 << 17, 0xb2 << 19);
    __MapActor_GetActor(8)->stop = 1;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x14);
    API_Func_809233c(1, -0x10, 0, 0x80 << 8);
    API_MapActor_WaitMovement(1);
    API_Func_8092adc(0, 0xa0 << 8, 0);
    API_CutsceneWait(0x14);
    API_MessageID(0x1f89);
    API_Func_8092adc(0, 0xa0 << 8, 0);
    API_MapActor_SetSpeed(1, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(1, 0xe8, 0xb2 << 3);
    API_Func_8092adc(1, 0x80 << 8, 0);
    API_Func_80933f8(0xb8 << 16, -1, 0xb4 << 19, 1);
    API_Func_8093530();
    API_CutsceneWait(0xa);
    API_MapActor_Jump(1, 6, 0xf);
    API_MapActor_Jump(1, 6, 0x28);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0x14);
    API_Func_80933f8(0x84 << 17, -1, 0xb5 << 19, 1);
    API_Func_8093530();
    API_CutsceneWait(0x14);
    API_MapActor_Emote(8, 0x80 << 1, 0x32);
    API_MapActor_SetSpeed(8, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(8, 0x84 << 1, 0xb2 << 3);
    API_Func_8092adc(8, 0x80 << 8, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(1, 0, 0);
    API_CutsceneWait(0x14);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(0xa);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Emote(1, 0x81 << 1, 0x28);
    API_CutsceneWait(0x1e);
    API_Func_8092adc(1, 0x80 << 8, 0);
    API_CutsceneWait(0x32);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0x14);
    API_Func_8092adc(1, 0x80 << 6, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_SetSpeed(1, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(1, 0x84 << 1, 0xb7 << 3);
    API_Func_8092adc(1, 0, 0);
    API_Func_8092adc(0, 0x80 << 8, 0);
    API_Func_8092adc(8, 0x80 << 7, 0);
    API_CutsceneWait(0x1e);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x1e);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x1e);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetAnim(1, 2);

    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_CutsceneWait(0x14);

    __MapActor_GetActor(8)->stop = 0;
    API_MapActor_SetBehavior(8, 2);

    actor = __MapActor_GetActor(8);
    actor->waveCounter = actor->pos.x / 0x10000;
    actor->__unk66 = actor->pos.z / 0x10000;

    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kalay_docks/OvlFunc_942_2008e40.s");


INCLUDE_ASM("asm/maps/kalay_docks/kalay_docks_data.s");

INCLUDE_ASM("asm/maps/kalay_docks/imports.s");
