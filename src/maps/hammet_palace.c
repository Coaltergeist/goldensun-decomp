/* rom_7c37ac (overlay file 938): consolidated TU — hammet_palace map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/hammet_palace/exports.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char gScript_887__02009c04[];
extern unsigned char Lm938_1bd4[] __asm__(".Lm938_1bd4");
extern unsigned char Lconst_67[] __asm__(".Lconst_67");
__asm__(".equ .Lconst_67, 0x67");

void *HammetPalace_GetEntrances(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_67) {
        return gScript_887__02009c04;
    }
    return Lm938_1bd4;
}

unsigned int HammetPalace_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_917__02009d9c[];

void *HammetPalace_GetExits(void) {
    return (void *)gScript_917__02009d9c;
}

extern unsigned char Lm938_1df4[] __asm__(".Lm938_1df4");
extern unsigned char gScript_918__02009ddc[];

void *HammetPalace_GetActors(void)
{
    int offset;
    short a;
    unsigned char *r;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_67) {
        r = Lm938_1df4;
        __Func_808b868(r);
        return r;
    }
    return gScript_918__02009ddc;
}
extern unsigned char _EVENT_67[];
extern unsigned char Lm938_1f38[] __asm__(".Lm938_1f38");
extern unsigned char Lm938_1f2c[] __asm__(".Lm938_1f2c");

int HammetPalace_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_67) return (int)Lm938_1f38;
    return (int)Lm938_1f2c;
}

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

extern unsigned char iwram_3001ebc[];

extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_80118a8(int);
extern void __MapActor_TravelBy(int, int, int);
extern void __Func_8092208(int, int, int);
extern void __Func_8091e9c(int);
extern void __Func_80118c0(int);

void OvlFunc_938_2008184(void)
{
    unsigned char *map = *(unsigned char **)iwram_3001ebc;

    __CutsceneStart();
    __CutsceneWait(10);
    if (*(short *)(map + 0x16c) == 4) {
        __PlaySound(0xbc);
    } else {
        __PlaySound(0x9e);
    }
    __Func_80118a8(1);
    __Func_80118a8(2);
    __CutsceneWait(10);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    __MapActor_SetAnim(0, 2);
    if (*(short *)(map + 0x16c) == 4) {
        API_MapActor_TravelBy(0, 0, -16);
    } else {
        API_Func_8092208(0, 3, -16);
    }
    __CutsceneWait(16);
    __Func_8091e9c(*(short *)(map + 0x16c));
    __Func_80118c0(1);
    __Func_80118c0(2);
    __CutsceneEnd();
}
void OvlFunc_938_2008264(void);

int HammetPalace_MapInit(void)
{
    char *map;
    int offset;

    map = *(char **)iwram_3001ebc;
    offset = 0xe0;
    offset <<= 1;
    *(int *)(map + offset) = 0x209;
    if (*(short *)((char *)&gState + offset) == (int)Lconst_67) {
        OvlFunc_938_2008264();
    }
    return 0;
}

extern int __GetFlag(int);
extern void *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int);
extern void OvlFunc_938_2009494(void);
extern void OvlFunc_938_2008360(void);

void OvlFunc_938_2008264(void)
{
    unsigned char *actor;
    unsigned char *gs;
    int f1 = 0x1000;
    int f2 = 0xd000;

    int t1;
    int t2;

    __Func_80118c0(1);
    __Func_80118c0(2);

    gs = (unsigned char *)&gState;
    gs += (0xe1 << 1);
    switch (*(short *)gs) {
    case 9:
        if (__GetFlag(0x941) != 0) {
            actor = (unsigned char *)__MapActor_GetActor(8);
            *(unsigned short *)(actor + 6) = f1;
            if (__GetFlag(0x914) == 0) {
                OvlFunc_938_2009494();
            }
        } else {
            API_MapActor_SetPos(9, 0, 0);
            if (__GetFlag(0x321) != 0) {
                API_MapActor_SetPos(8, 0x38a0000, 0x1a60000);
                actor = (unsigned char *)__MapActor_GetActor(8);
                *(unsigned short *)(actor + 6) = f2;
            }
        }
        break;
    case 10:
    case 11:
        if (__GetFlag(0x915) != 0) {
            t1 = 4;
            t2 = 3;
            __CopyMapTiles(0x3a, 0x46, 0x36, 0x46, t1, t2);
            t1 = 0x37;
            t2 = 8;
            __Func_8010704(0x37, 9, 2, 1, t1, t2);
            __Func_800fe9c();
            __WaitFrames(1);
        }
        break;
    case 20:
        API_MapActor_SetPos(9, 0, 0);
        if (__GetFlag(0x109) == 0) {
            OvlFunc_938_2008360();
        }
        break;
    }
}

extern unsigned char ActorCmd_ARRAY_938__02009b94[];
extern void OvlFunc_938_200940c(int);
extern void OvlFunc_938_2009450(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8091220(int, int);
extern void __Func_8091200(int, int);
extern void __Func_8091254(int);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __CutsceneWait(int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __Func_8092adc(int, int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_Emote(int, int, int);
extern void __MessageID(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __ActorMessage(int, int);
extern void __MapActor_Surprise(int, int);
extern void __Func_80925cc(int, int);
extern void __Func_809259c(int, int);
extern int __Func_8093054(int, int);
extern int __Func_8091c7c(int, int);
extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_RunScript(int, void *);
extern void __ClearFlag(int);
extern void __SetFlag(int);

void OvlFunc_938_2008360(void)
{
    char **map_ptr;
    int flag;
    void *actor_cmd;

    __CutsceneStart();
    API_Func_80933f8((-1), (-1), (-1), 0);
    API_WaitFrames(1);
    API_Func_8091220((0x10002), 0);
    API_Func_8091200((0x10002), 0);
    API_Func_8091254(1);
    API_WaitFrames(1);
    map_ptr = (char **)iwram_3001ebc;
    {
        char *map = *map_ptr;
            *(int *)(map + (0xe4 << 1)) = 0x18;
            *(int *)(map + (0xe0 << 1)) = 0x201;
    }
    API_MapActor_SetPos(8, (0xd6 << 18), (0xdc << 17));
    API_MapActor_SetPos(0, (0xd6 << 18), (0xf3 << 17));
    API_MapActor_SetPos(1, (0xd4 << 18), (0xfb << 17));
    API_MapActor_SetPos(2, (0xda << 18), (0xf3 << 17));
    API_MapActor_SetPos(3, (0xdc << 18), (0xfb << 17));
    API_MapActor_SetPos(0xa, (0xd2 << 18), (0x2060000));
    API_MapActor_SetPos(0xb, (0xde << 18), (0x2060000));
    API_Func_80933f8((0xd8 << 18), (-1), (0xec << 17), 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    __MapTransitionIn();
    __WaitMapTransition();
    API_CutsceneWait(0x28);
    API_Func_80925cc(8, 1);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0xa);
    API_Func_80925cc(2, 1);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(0x14);
    API_Func_8092adc(2, (0x80 << 8), 0x14);
    API_Func_80925cc(0, 2);
    API_Func_8092adc(0, 0, 0xa);
    API_MapActor_DoAnim(0, 3);
    API_Func_809259c(1, 1);
    API_Func_80925cc(3, 1);
    API_Func_8092adc(1, (0xe0 << 8), 0);
    API_Func_8092adc(3, (0xa0 << 8), 0xa);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);
    OvlFunc_938_2009450(0x14);
    API_MapActor_Surprise(8, (0x81 << 1));
    API_Func_809259c(8, 2);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(8, (0xa0 << 7), 0xa);
    API_MapActor_DoAnim(8, 3);
    API_MapActor_Emote(0xa, (0x80 << 1), 0);
    API_Func_809259c(0xa, 2);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0xa, (0xf0 << 8), 0x14);
    API_Func_80925cc(0xb, 2);
    API_Func_8092adc(0xb, (0x90 << 8), 0x28);
    API_Func_8092adc(0xa, (0xd0 << 8), 0);
    API_Func_8092adc(0xb, (0xb0 << 8), 0x14);
    API_MapActor_DoAnim(0xb, 3);
    API_CutsceneWait(0xa);
    API_Func_80925cc(8, 2);
    API_Func_8092adc(8, (0xc0 << 6), 0xa);
    API_MapActor_Emote(8, (0x105), 0x3c);
    API_Func_80925cc(0xb, 2);
    API_MapActor_DoAnim(0xb, 4);
    API_MapActor_DoAnim(0xb, 4);
    API_Func_8091200((0x80 << 9), 0);
    API_Func_8091254(0x28);
    API_WaitFrames(0x3c);
    API_MapActor_Emote(8, (0x105), 0x3c);
    API_MessageID((0x1b21));
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(0xa, 2);
    API_ActorMessage_Wait(0xa, 0, 0xa);
    API_MapActor_DoAnim(0xb, 4);
    API_ActorMessage_Wait(0xb, 0, 0xa);
    API_Func_8092adc(2, (0xc0 << 7), 0xa);
    API_ActorMessage_Wait((0x6002), 0, 0xa);
    API_Func_80925cc(0xb, 2);
    API_ActorMessage_Wait(0xb, 0, 0xa);
    API_MapActor_SetAnim(0xa, 4);
    API_ActorMessage_Wait(0xa, 0, 0xa);
    API_Func_8092adc(2, (0xc0 << 8), 0xa);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_Emote(8, (0x101), 0x3c);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(0xb, 2);
    API_ActorMessage_Wait(0xb, 0, 0xa);
    API_Func_8092adc(2, (0x80 << 6), 0xa);
    API_MapActor_DoAnim(0xa, 3);
    API_ActorMessage_Wait(0xa, 0, 0xa);
    API_Func_8092adc(2, (0xc0 << 7), 0xa);
    API_Func_809259c(2, 1);
    API_ActorMessage_Wait((0x6002), 0, 0xa);
    API_MapActor_DoAnim(0xa, 3);
    API_Func_8092adc(2, (0x80 << 8), 0xa);
    __Func_8093054(0x6002, 0);
    API_MapActor_Surprise(8, (0x81 << 1));
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0xa);
    API_Func_8092adc(2, (0xc0 << 8), 0x14);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(1, 3);
    API_ActorMessage_Wait(1, 0, 0xa);
    API_MapActor_Emote(8, (0x105), 0x3c);
    API_MapActor_DoAnim(3, 4);
    API_ActorMessage_Wait(3, 0, 0x28);
    API_Func_8092adc(8, (0x80 << 5), 0x28);
    API_MapActor_SetSpeed(8, (0x6666), (0x3333));
    API_MapActor_TravelToAnimWait(8, (0xdf << 2), (0xdc << 1));
    API_CutsceneWait(0x28);
    API_Func_8092adc(8, (0xd0 << 8), 0x14);
    API_MapActor_Emote(8, (0x105), 0x3c);
    OvlFunc_938_200940c(0x3c);
    OvlFunc_938_2009450(0x28);
    API_MapActor_TravelToAnimWait(8, (0xd6 << 2), (0xdc << 1));
    API_CutsceneWait(0x28);
    API_Func_8092adc(8, (0x90 << 8), 0x14);
    API_MapActor_Emote(8, (0x105), 0x3c);
    API_Func_8092adc(0xa, (0xf0 << 8), 0);
    API_Func_8092adc(0xb, (0x90 << 8), 0x28);
    API_Func_8092adc(0xa, (0xd0 << 8), 0);
    API_Func_8092adc(0xb, (0xb0 << 8), 0xa);
    API_Func_80925cc(8, 1);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_80925cc(0xa, 2);
    API_ActorMessage_Wait(0xa, 0, 0xa);
    API_Func_80925cc(8, 2);
    API_Func_8092adc(8, (0xa0 << 7), 0xa);
    API_Func_8092adc(0, (0x80 << 7), 0);
    API_Func_8092adc(1, (0x80 << 7), 0);
    API_Func_8092adc(2, (0xc0 << 7), 0);
    API_Func_8092adc(3, (0xc0 << 7), 0);
    API_Func_8092adc(0xb, (0x90 << 8), 0x28);
    API_Func_8092adc(0xa, (0xf0 << 8), 0x14);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    API_Func_80925cc(0xb, 2);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0xb, (0xb0 << 8), 0x14);
    API_MapActor_DoAnim(0xb, 3);
    API_ActorMessage_Wait(0xb, 0, 0xa);
    API_Func_8092adc(0xb, (0x90 << 8), 0x28);
    API_MapActor_SetAnim(0xa, 3);
    API_MapActor_DoAnim(0xb, 3);
    API_Func_8092adc(0xa, (0xd0 << 8), 0);
    API_Func_8092adc(0xb, (0xb0 << 8), 0xa);
    API_Func_80925cc(0xa, 2);
    API_ActorMessage_Wait(0xa, 0, 0x14);
    OvlFunc_938_2009450(0x14);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_Surprise(8, (0x81 << 1));
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(0x14);
    API_MapActor_SetAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_80925cc(1, 2);
    API_Func_8092adc(1, (0xe0 << 8), 0x14);
    __ShowActorMessage_NoWait(1, 0);
    API_Func_8092adc(0, (0xc0 << 7), 0);
    flag = 1;
    if (__Func_8091c7c(0, 0) == 1) {
        *(unsigned short *)(*map_ptr + (0xec << 1)) += 1;
        flag = 0;
    }
    API_ActorMessage_Wait(1, 0, 10);
    if (flag != 0) {
        *(unsigned short *)(*map_ptr + (0xec << 1)) += 1;
    }
    API_Func_8092adc(2, (0x80 << 8), 0xa);
    API_MapActor_Surprise(2, (0x81 << 1));
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(8, (0x101), 0);
    API_Func_8092adc(8, (0xc0 << 6), 0x28);
    API_Func_8092adc(8, (0xa0 << 7), 0x14);
    API_Func_8092adc(8, (0xc0 << 6), 0x14);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(2, 1);
    API_Func_8092adc(2, (0xc0 << 8), 0xa);
    API_Func_8092adc(0, (0xc0 << 8), 0);
    API_Func_8092adc(1, (0xc0 << 8), 0xa);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_Emote(8, (0x107), 0x3c);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_DoAnim(8, 4);
    __ShowActorMessage_NoWait(8, 0);
    API_Func_8092adc(2, (0x80 << 8), 0);
    API_Func_8092adc(1, (0xe0 << 8), 0);
    API_Func_8092adc(3, (0xa0 << 8), 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(8, 3);
        API_ActorMessage_Wait(8, 0, 10);
        *(unsigned short *)(*map_ptr + (0xec << 1)) += 1;
    } else {
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(8, 4);
        *(unsigned short *)(*map_ptr + (0xec << 1)) += 1;
        API_ActorMessage_Wait(8, 0, 10);
    }
    OvlFunc_938_2009450(0x14);
    API_Func_8092adc(2, (0x80 << 6), 0);
    API_Func_8092adc(3, (0xa0 << 8), 0x28);
    API_Func_8092adc(2, (0xc0 << 8), 0);
    API_Func_8092adc(3, (0xc0 << 8), 0xa);
    API_ActorMessage_Wait(3, 0, 0x14);
    API_MapActor_Emote(8, (0x105), 0x3c);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_80925cc(8, 2);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_80925cc(2, 1);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(2, (0xcccc), (0x6666));
    API_MapActor_TravelToAnimWait(2, (0xd9 << 2), (0xec << 1));
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0xa);
    OvlFunc_938_200940c(0x28);
    OvlFunc_938_2009450(0x14);
    API_MapActor_Emote(8, (0x105), 0x3c);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(1, 2);
    API_ActorMessage_Wait(1, 0, 0xa);
    API_Func_80925cc(8, 1);
    API_Func_8092adc(8, (0xa0 << 7), 0xa);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_DoAnim(8, 3);
    API_Func_8092adc(8, (0xc0 << 6), 0xa);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_Surprise(0, (0x81 << 1));
    API_MapActor_Surprise(1, (0x81 << 1));
    API_MapActor_Surprise(2, (0x81 << 1));
    API_MapActor_Surprise(3, (0x81 << 1));
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_DoAnim(8, 3);
    __ShowActorMessage_NoWait(8, 0);
    API_Func_809259c(1, 1);
    API_Func_809259c(2, 1);
    API_Func_80925cc(3, 1);
    API_Func_8092adc(1, (0xe0 << 8), 0);
    API_Func_8092adc(2, (0xc0 << 7), 0);
    API_Func_8092adc(3, (0xa0 << 8), 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(0x14);
        API_MapActor_Surprise(8, (0x81 << 1));
        API_CutsceneWait(0x28);
        API_ActorMessage_Wait(8, 0, 10);
        *(unsigned short *)(*(char **)iwram_3001ebc + (0xec << 1)) += 2;
    } else {
        API_CutsceneWait(0x14);
        API_Func_80925cc(1, 2);
        *(unsigned short *)(*(char **)iwram_3001ebc + (0xec << 1)) += 1;
        API_ActorMessage_Wait(1, 0, 10);
        API_MapActor_Surprise(8, (0x81 << 1));
        API_CutsceneWait(0x28);
        API_ActorMessage_Wait(8, 0, 10);
    }
    API_MapActor_Emote(3, (0x101), 0x28);
    API_Func_8092adc(3, (0xc0 << 8), 0xa);
    API_ActorMessage(3, 0);
    API_Func_8092adc(1, (0xc0 << 8), 0);
    API_Func_8092adc(2, (0xc0 << 8), 0x14);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_Surprise(0, (0x81 << 1));
    API_MapActor_Surprise(1, (0x81 << 1));
    API_MapActor_Surprise(2, (0x81 << 1));
    API_MapActor_Surprise(3, (0x81 << 1));
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_8092adc(0, (0xe0 << 8), 0);
    API_Func_8092adc(1, (0xe0 << 8), 0);
    API_Func_8092adc(3, (0xa0 << 8), 0xa);
    API_MapActor_DoAnim(2, 4);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(8, 1);
    API_ActorMessage_Wait(8, 0, 0xa);
    OvlFunc_938_2009450(0xa);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_SetAnim(0, 4);
    API_MapActor_SetAnim(1, 4);
    API_MapActor_SetAnim(2, 4);
    API_MapActor_DoAnim(3, 4);
    API_MapActor_Surprise(8, (0x81 << 1));
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(8, 0, 0xa);
    OvlFunc_938_200940c(0x28);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0xa);
    OvlFunc_938_2009450(0x14);
    API_Func_80925cc(2, 2);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_Emote(3, (0x101), 0x3c);
    API_ActorMessage_Wait(3, 0, 0xa);
    API_MapActor_Emote(8, (0x84 << 1), 0x3c);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_DoAnim(3, 3);
    API_ActorMessage_Wait(3, 0, 0xa);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_Emote(1, (0x101), 0x28);
    API_ActorMessage_Wait(1, 0, 0xa);
    API_Func_8092adc(8, (0xa0 << 7), 0xa);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(0xa, 2);
    API_MapActor_DoAnim(0xa, 4);
    API_ActorMessage_Wait(0xa, 0, 0xa);
    API_MapActor_Emote(8, (0x105), 0x28);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_8092adc(8, (0xc0 << 6), 0xa);
    API_MapActor_SetAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(8, 1);
    API_Func_8092adc(8, (0xa0 << 7), 0xa);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_80925cc(2, 1);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_Emote(8, (0x80 << 1), 0x28);
    API_Func_8092adc(8, (0xc0 << 6), 0xa);
    API_ActorMessage_Wait(8, 0, 0xa);
    OvlFunc_938_200940c(0x28);
    OvlFunc_938_2009450(0x14);
    API_Func_80925cc(1, 1);
    API_ActorMessage_Wait(1, 0, 0xa);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_SetAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_Func_80925cc(8, 1);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_Surprise(0, (0x81 << 1));
    API_MapActor_Surprise(1, (0x81 << 1));
    API_CutsceneWait(0x3c);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_809259c(2, 1);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(0x14);
    API_Func_80925cc(8, 1);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_SetAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_Emote(2, (0x105), 0x3c);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_Func_8092adc(3, (0xa0 << 8), 0xa);
    API_ActorMessage_Wait(3, 0, 0xa);
    API_MapActor_DoAnim(2, 4);
    API_MapActor_DoAnim(2, 4);
    API_Func_8092adc(2, (0x80 << 6), 0xa);
    API_MapActor_SetAnim(2, 4);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_8092adc(2, (0xc0 << 8), 0);
    API_Func_80925cc(3, 2);
    API_Func_8092adc(3, (0xc0 << 8), 0xa);
    API_ActorMessage_Wait(3, 0, 0xa);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_Func_809259c(0xa, 2);
    API_ActorMessage_Wait(0xa, 0, 0xa);
    API_MapActor_DoAnim(0xb, 3);
    API_ActorMessage_Wait(0xb, 0, 0x14);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_DoAnim(2, 4);
    API_MapActor_SetAnim(2, 4);
    API_ActorMessage_Wait((0x2002), 0, 0xa);
    API_MapActor_DoAnim(1, 3);
    API_ActorMessage_Wait(1, 0, 0xa);
    API_Func_80925cc(8, 1);
    __ShowActorMessage_NoWait(8, 0);
    API_Func_8092adc(1, (0xe0 << 8), 0);
    API_Func_8092adc(2, (0xc0 << 7), 0);
    API_Func_8092adc(3, (0xa0 << 8), 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(0x14);
        OvlFunc_938_2009450(10);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_SetAnim(2, 3);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(1, 0, 10);
        *(unsigned short *)(*(char **)iwram_3001ebc + (0xec << 1)) += 2;
    } else {
        API_CutsceneWait(10);
        API_Func_80925cc(1, 2);
        *(unsigned short *)(*(char **)iwram_3001ebc + (0xec << 1)) += 1;
        API_ActorMessage_Wait(1, 0, 10);
        OvlFunc_938_2009450(10);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_SetAnim(2, 3);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(1, 0, 10);
    }
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_8092adc(8, (0xa0 << 7), 0xa);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xa, 1);
    API_CutsceneWait(0x14);
    API_Func_8092adc(8, (0xc0 << 6), 0xa);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xb, 1);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_SetAnim(0xa, 3);
    API_MapActor_DoAnim(0xb, 3);
    API_MapActor_SetSpeed(0xa, (0x80 << 9), (0x80 << 8));
    API_MapActor_SetSpeed(0xb, (0x80 << 9), (0x80 << 8));
    API_MapActor_TravelToAnim(0xa, (0xd4 << 2), (0x87 << 2));
    API_MapActor_TravelToAnimWait(0xb, (0xdc << 2), (0x87 << 2));
    API_MapActor_SetPos(0xa, 0, 0);
    API_MapActor_SetPos(0xb, 0, 0);
    API_MapActor_DoAnim(8, 3);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(1, (0x80 << 9), (0x80 << 8));
    API_MapActor_SetSpeed(2, (0x80 << 9), (0x80 << 8));
    API_MapActor_SetSpeed(3, (0x80 << 9), (0x80 << 8));
    actor_cmd = ActorCmd_ARRAY_938__02009b94;
    __MapActor_SetBehavior(1, actor_cmd);
    __MapActor_SetBehavior(2, actor_cmd);
    __MapActor_RunScript(3, actor_cmd);
    {
        char *map = *(char **)iwram_3001ebc;
        *(int *)(map + (0xe4 << 1)) = 0x10;
        *(int *)(map + (0xe0 << 1)) = 0x209;
    }
    API_ClearFlag((0x12f));
    API_SetFlag((0x912));
    __CutsceneEnd();
}

static inline void SetDir(int actor, int dir) {
    __Func_8092adc(actor, dir, 0);
}

void OvlFunc_938_200940c(int wait)
{
    SetDir(0, 0x6000);
    SetDir(1, 0xe000);
    SetDir(2, 0x2000);
    SetDir(3, 0xa000);
    if (wait != 0) {
        __CutsceneWait(wait);
    }
}
void OvlFunc_938_2009450(int wait)
{
    SetDir(0, 0xc000);
    SetDir(1, 0xc000);
    SetDir(2, 0xc000);
    SetDir(3, 0xc000);
    if (wait != 0) {
        __CutsceneWait(wait);
    }
}
extern unsigned char ActorCmd_ARRAY_938__02009b94[];

extern void __CutsceneStart(void);
extern void __Func_80933f8(int, int, int, int);
extern void __MapTransitionIn(void);
extern void __Func_80933d4(int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __CutsceneWait(int);
extern void __MapActor_Emote(int, int, int);
extern void __MessageID(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __Func_80925cc(int, int);
extern int __Func_8091c7c(int, int);
extern void __Func_809259c(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_RunScript(int, void *);
extern void __ClearFlag(int);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);

void OvlFunc_938_2009494(void)
{
    unsigned char *act;
    char **map_ptr;

    int emote;
    int flag;
    void *actor_cmd;

    __CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    __WaitFrames(1);
    API_Func_80933f8(0x3600000, -1, 0x2180000, 0);
    __Func_800fe9c();
    __WaitFrames(1);
    API_MapActor_SetPos(0, 0x3600000, 0x2760000);

    map_ptr = (char **)iwram_3001ebc;
    emote = 0x80 << 1;
    {
        char *map = *map_ptr;
        *(int *)(map + (0xe0 << 1)) = emote;
        *(int *)(map + (0xe4 << 1)) = 0x28;
    }
    __MapTransitionIn();

    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0x3600000, -1, 0x1d80000, 1);

    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);

    API_MapActor_TravelToAnimWait(0, 0x360, 0x1f2);

    act = (unsigned char *)__MapActor_GetActor(0);
    if (act != 0) {
        API_MapActor_SetPos(1, *(int *)(act + 8), *(int *)(act + 0x10));
    }
    act = (unsigned char *)__MapActor_GetActor(0);
    if (act != 0) {
        API_MapActor_SetPos(2, *(int *)(act + 8), *(int *)(act + 0x10));
    }
    act = (unsigned char *)__MapActor_GetActor(0);
    if (act != 0) {
        API_MapActor_SetPos(3, *(int *)(act + 8), *(int *)(act + 0x10));
    }

    API_MapActor_TravelToAnim(0, 0x358, 0x1e6);
    API_MapActor_TravelToAnim(1, 0x350, 0x1f6);
    API_MapActor_TravelToAnim(2, 0x368, 0x1e6);
    API_MapActor_TravelToAnimWait(3, 0x370, 0x1f6);

    __MapActor_SetAnim(0, 1);
    __MapActor_SetAnim(1, 1);
    __MapActor_SetAnim(2, 1);
    __CutsceneWait(10);
    OvlFunc_938_2009450(10);

    API_MapActor_Emote(9, emote, 0x14);
    API_Func_8092adc(9, 0x5000, 0x14);
    API_MessageID(0x2588);
    API_ActorMessage_Wait(0x2009, 0, 10);
    API_MapActor_Emote(8, emote, 0x14);
    API_Func_8092adc(8, 0x3000, 0x14);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_MapActor_Emote(8, 0x107, 0x3c);
    API_ActorMessage_Wait(8, 0, 10);

    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_MapActor_Surprise(2, 0x102);
    API_MapActor_Surprise(3, 0x102);
    __CutsceneWait(0x3c);
    API_MapActor_Emote(9, 0x102, 0x3c);

    API_Func_8092adc(9, 0x7000, 10);
    API_ActorMessage_Wait(0x2009, 0, 10);
    API_Func_8092adc(8, 0x1000, 10);
    API_MapActor_Emote(8, 0x108, 0x14);
    API_ActorMessage_Wait(8, 0, 0x28);
    __Func_80925cc(8, 2);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_8092adc(8, 0x3000, 10);
    __ShowActorMessage_NoWait(8, 0);

    flag = 1;
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(10);
        __MapActor_SetAnim(8, 3);
    } else {
        __CutsceneWait(10);
        *(unsigned short *)(*map_ptr + (0xec << 1)) += 1;
        __MapActor_SetAnim(8, 4);
        flag = 0;
    }
    API_ActorMessage_Wait(8, 0, 10);
    if (flag != 0) {
        *(unsigned short *)(*(char **)iwram_3001ebc + (0xec << 1)) += 1;
    }

    __Func_809259c(9, 2);
    API_MapActor_Surprise(9, 0x102);
    __CutsceneWait(0x50);
    API_ActorMessage_Wait(0x2009, 0, 10);
    API_Func_8092adc(8, 0x1000, 10);
    API_MapActor_Emote(8, 0x107, 0x28);
    __Func_80925cc(2, 3);
    API_ActorMessage_Wait(0x2002, 0, 0x14);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_Func_8092adc(8, 0x3000, 0x3c);
    API_ActorMessage_Wait(8, 0, 10);
    __Func_809259c(1, 2);
    API_ActorMessage_Wait(1, 0, 10);
    API_Func_8092adc(9, 0x5000, 0);
    API_Func_8092adc(2, 0x6000, 10);
    __Func_809259c(2, 2);
    API_ActorMessage_Wait(0x6002, 0, 10);
    API_Func_8092adc(2, 0xc000, 10);
    __Func_809259c(2, 2);
    API_ActorMessage_Wait(0x2002, 0, 0x14);
    __MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0x14);
    API_Func_8092adc(2, 0x8000, 0x14);
    API_ActorMessage_Wait(0x6002, 0, 10);
    API_Func_8092adc(3, 0xa000, 10);
    API_MapActor_Emote(3, 0x105, 0x28);
    API_ActorMessage_Wait(3, 0, 10);
    __Func_80925cc(2, 2);
    __CutsceneWait(0x50);
    __MapActor_DoAnim(2, 3);
    __CutsceneWait(0x14);
    API_Func_8092adc(1, 0xe000, 10);
    __MapActor_DoAnim(1, 4);

    __ShowActorMessage_NoWait(1, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x14);
        *(unsigned short *)(*(char **)iwram_3001ebc + (0xec << 1)) += 1;
    } else {
        __CutsceneWait(0x14);
        API_ActorMessage_Wait(1, 0, 10);
    }

    __MapActor_SetAnim(2, 3);
    __MapActor_DoAnim(3, 3);
    OvlFunc_938_2009450(0x14);
    __Func_80925cc(9, 2);
    API_ActorMessage_Wait(0x2009, 0, 10);
    __Func_80925cc(3, 2);
    API_ActorMessage_Wait(3, 0, 10);
    API_Func_8092adc(9, 0x3000, 10);
    __MapActor_DoAnim(9, 3);
    API_ActorMessage_Wait(0x2009, 0, 10);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_ActorMessage_Wait(0x2002, 0, 10);
    __Func_80925cc(9, 1);
    API_Func_8092adc(9, 0x5000, 10);
    API_ActorMessage_Wait(0x2009, 0, 10);
    __Func_80925cc(1, 2);
    API_ActorMessage_Wait(1, 0, 10);
    __MapActor_DoAnim(9, 4);
    API_ActorMessage_Wait(0x2009, 0, 10);
    __Func_80925cc(3, 1);
    API_ActorMessage_Wait(3, 0, 10);
    __Func_80925cc(8, 1);
    __CutsceneWait(0x14);
    API_ActorMessage_Wait(8, 0, 10);
    __MapActor_SetAnim(0, 3);
    __MapActor_SetAnim(1, 3);
    __MapActor_SetAnim(2, 3);
    __MapActor_DoAnim(3, 3);
    __CutsceneWait(0x14);

    actor_cmd = ActorCmd_ARRAY_938__02009b94;
    __MapActor_SetBehavior(1, actor_cmd);
    __MapActor_SetBehavior(2, actor_cmd);
    __MapActor_RunScript(3, actor_cmd);

    {
        char *map = *(char **)iwram_3001ebc;
        *(int *)(map + (0xe4 << 1)) = 0x10;
        *(int *)(map + (0xe0 << 1)) = 0x209;
    }
    API_ClearFlag(0x12f);
    API_SetFlag(0x914);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/hammet_palace/hammet_palace_data.s");

INCLUDE_ASM("asm/maps/hammet_palace/imports.s");
