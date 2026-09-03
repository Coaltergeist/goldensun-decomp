/* rom_7b2078 (overlay file 926): consolidated TU — fuchin_temple map overlay. */

#include "nonmatching.h"

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __PlaySound(int);
extern void __Func_8010560(void *, int, int);
extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelBy(int, int, int);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);

extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_926_2008314(void) {
    int r0_in;
    __Actor_SetSpriteFlags(r0_in, 0);
    return 0;
}

int OvlFunc_926_2008324(int arg0) {
    int actor = (int)__MapActor_GetActor(0);
    *(unsigned short *)(arg0 + 6) = __atan2(
        *(int *)(actor + 16) - *(int *)(arg0 + 16),
        *(int *)(actor + 8) - *(int *)(arg0 + 8));
    return 0;
}

INCLUDE_ASM("asm/maps/fuchin_temple/FuchinTemple_GetEntrances.s");

unsigned int FuchinTemple_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c8c8[];

void *FuchinTemple_GetExits(void) {
    return (void *)gOvl_0200c8c8;
}

INCLUDE_ASM("asm/maps/fuchin_temple/FuchinTemple_GetActors.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_926_2008414(void)
{
  unsigned short *base;
  int new_var;
  int a;
  unsigned short r3;
  unsigned long long t;
  unsigned short v;
  __CutsceneStart();
  new_var = 0;
  __MessageID(0x178a);
  if (__GetFlag(0x890) != new_var)
  {
    base = *((unsigned short **) iwram_3001ebc);
    v = base[0xec];
    r3 = v;
    r3 += 4;
    base[0xec] = r3;
  }
  __ShowActorMessage_NoWait(8, new_var);
  if (__Func_8091c7c(0, 0) == new_var)
  {
    t = 0x890;
    do
    {
      t = (unsigned long) t;
    }
    while (new_var);
    v = t;
    __SetFlag(v);
  }
  else
  {
    base = *((unsigned short **) iwram_3001ebc);
    r3 = base[0xec];
    r3 += 1;
    base[0xec] = r3;
  }
  t = 8;
  do
  {
    t = (unsigned long) t;
  }
  while (new_var);
  a = t;
  __ActorMessage(a, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008484.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008518.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008658.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200871c.s");

void OvlFunc_926_2008abc(void) {
    __CutsceneStart();
    __MessageID(0x17b1);
    __Func_8093054(8, 0);
    __CutsceneEnd();
}

void OvlFunc_926_2008adc(void) {
    __CutsceneStart();
    __MessageID(0x1825);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008afc.s");

void OvlFunc_926_2008bd4(void) {
    __CutsceneStart();
    __MessageID(0x182d);
    __Func_8093054(0xf, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008bf4.s");
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, int);

void OvlFunc_926_2008cd4(void)
{
    unsigned char *actor;
    unsigned int i;
    int theta;
    unsigned char *sprite;

    actor = __MapActor_GetActor(0x13);
    for (i = 8; i <= 12; i++)
    {
        sprite = *(unsigned char **)(actor + 0x50);
        theta = i << 12;
        *(unsigned short *)(sprite + 0x1e) = theta;
        __WaitFrames((12 - i) * 2);
        *(int *)(actor + 8) -= __cos(theta) * 6;
        *(int *)(actor + 0x10) -= __sin(theta) * 6;
    }
    *(int *)(actor + 0xc) = 0x120000;
    *(int *)(actor + 0x3c) = 0x120000;
    *(int *)(actor + 0x18) = 0xffff3334;
    __PlaySound(0xe3);
    OvlFunc_common0_10c(*(int *)(actor + 8) - 0xc0000, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0x80000, 0x10000, 0x3333, 0, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0x80000, 0xcccc, 0x4ccc, 0, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8) + 0xa0000, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0x80000, 0x3333, 0x6666, 0, 0, 0);
}
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008db4.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008e94.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2008f80.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200902c.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2009160.s");

extern void OvlFunc_926_2008bf4(void);
extern void OvlFunc_926_2008cd4(void);
extern void OvlFunc_926_2009160(void);
extern void OvlFunc_926_200902c(int arg0);

void OvlFunc_926_20092e0(void)
{
  int actor;

  __CutsceneStart();
  actor = __MapActor_GetActor(0);
  if (*(unsigned short *)(actor + 6) > 0x4000 &&
      (actor = __MapActor_GetActor(0), *(unsigned short *)(actor + 6) < 0xc000))
  {
    OvlFunc_926_2008bf4();
  }
  else
  {
    OvlFunc_926_2008cd4();
  }
  if (__GetFlag(0x898) != 0)
  {
    OvlFunc_926_2009160();
  }
  else
  {
    OvlFunc_926_200902c(0);
  }
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2009334.s");
extern void OvlFunc_926_2008e94(void);
extern void OvlFunc_926_2008db4(void);
extern void __Func_80933d4(int, int);
extern void __Func_8093500(int, int);
extern void __Func_8093530(void);
extern int __GetFlag(int);
extern void OvlFunc_926_2009494(void);
extern void OvlFunc_926_2009dbc(void);

void OvlFunc_926_20093b8(void)
{
    unsigned char *actor;
    unsigned short facing;

    actor = __MapActor_GetActor(0);
    __CutsceneStart();
    facing = *(unsigned short *)(actor + 6);
    if ((unsigned short)(facing - 0x2000) <= 0x3fff)
    {
        OvlFunc_926_2008e94();
    }
    else if ((unsigned short)(facing - 0x6000) <= 0x3fff)
    {
        OvlFunc_926_2008bf4();
    }
    else if ((unsigned short)(facing + 0x6000) <= 0x3fff)
    {
        OvlFunc_926_2008db4();
    }
    else
    {
        OvlFunc_926_2008cd4();
    }
    __Func_80933d4(0x10000, 0x2000);
    __Func_8093500(0x14, 1);
    __Func_8093530();
    if (*(short *)(actor + 0x12) <= 0xd1)
    {
        if (__GetFlag(0x89a) == 0 || __GetFlag(0x89b) != 0)
        {
            OvlFunc_926_200902c(0);
        }
        else
        {
            OvlFunc_926_2009160();
        }
        __CutsceneEnd();
    }
    else
    {
        if (__GetFlag(0x89b) != 0)
        {
            OvlFunc_926_200902c(2);
        }
        else
        {
            if (__GetFlag(0x89a) == 0)
            {
                OvlFunc_926_2009494();
            }
            else
            {
                OvlFunc_926_2009dbc();
            }
        }
        __CutsceneEnd();
    }
}
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2009494.s");


void OvlFunc_926_2009d50(void) {
    unsigned short *r2;
    unsigned short r3;
    unsigned short t;

    __CutsceneStart();
    __MessageID(0x186e);
    __ShowActorMessage_NoWait(0x12, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x14);
        t = 0x12;
        do { t = (unsigned short) t; } while (0);
        __ActorMessage_Wait(t, 0, 0x14);
        __SetFlag(0x898);
        __CutsceneEnd();
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        t = 0x12;
        do { t = (unsigned short) t; } while (0);
        __ActorMessage_Wait(t, 0, 0x14);
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_2009dbc.s");

void OvlFunc_926_200a464(void) {
    __CutsceneStart();
    __MessageID(0x1a58);
    __Func_8093054(0xb, 0);
    __CutsceneEnd();
}

extern void __PlaySound(int);
extern void __Func_8091e9c(int);
extern void __Func_801776c(int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern unsigned char Lm926_477a[] __asm__(".Lm926_477a");

void OvlFunc_926_200a484(void)
{
    int s1 = 0x8000;
    int s2 = 0x4000;
    int pos = 0x132;

    do { } while (s1 == 0);

    __CutsceneStart();
    if (!__GetFlag(0x89a) && !__GetFlag(0x895)) {
        __Func_801776c(0x18ad, 1);
        __CutsceneEnd();
    } else {
        __PlaySound(0x9e);
        __Func_8010560(Lm926_477a, 0x4e, 0xd);
        __MapActor_SetSpeed(0, s1, s2);
        __MapActor_TravelToAnimWait(0, pos, 0xf8);
        __MapActor_TravelToAnim(0, 0x130, 0xd8);
        __CutsceneWait(0x14);
        __Func_8091e9c(4);
        __CutsceneEnd();
    }
}
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a508.s");

void OvlFunc_926_200a54c(void)
{
  int new_var;
  int new_var2;
  __CutsceneStart();
  new_var = 0;
  __Func_80925cc(8, 2);
  __MessageID(0x17df);
 do { new_var2 = new_var; __ActorMessage(8, new_var2); } while (0);
  __CutsceneEnd();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_3c[];
extern unsigned char Lm926_4b90[] __asm__(".Lm926_4b90");
extern unsigned char Lm926_5184[] __asm__(".Lm926_5184");
extern unsigned char Lm926_4d40[] __asm__(".Lm926_4d40");

int FuchinTemple_GetEvents(void)
{
    GlobalState *p = &gState;
    if (*(short *)((char *)p + 0x1c0) == (int)_EVENT_3c) return (int)Lm926_4b90;
    if (*(short *)((char *)p + 0x1c2) == 3) return (int)Lm926_5184;
    return (int)Lm926_4d40;
}
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a5b8.s");

extern void OvlFunc_926_200a68c(int param_1, int param_2);

void OvlFunc_926_200a65c(void) {
    OvlFunc_926_200a68c(0, -0x20);
}


void OvlFunc_926_200a66c(void) {
    OvlFunc_926_200a68c(0, 0x20);
}


void OvlFunc_926_200a67c(void) {
    OvlFunc_926_200a68c(-0x20, 0);
}

void __MapActor_Jump(int, int, int);
void __MapActor_WaitMovement(int);
void OvlFunc_926_200a68c(int param_1, int param_2)
{
    int speed_x = 0x28000;
    int speed_y = 0x14000;

    do { } while (speed_x == 0);

    __CutsceneStart();
    __MapActor_SetSpeed(0, speed_x, speed_y);
    __MapActor_TravelBy(0, param_1, param_2);
    __MapActor_Jump(0, 4, 0);
    __MapActor_SetAnim(0, 7);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 6);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a6d8.s");


void OvlFunc_926_200a764(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(1);
}

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_943__0200c764[17];
extern unsigned char *iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void OvlFunc_926_200a778(void)
{
    int sp1 = 0xcccc;
    int sp2 = 0x6666;
    int dist = -0x10;
    unsigned char *actor;

    do { } while (sp1 == 0);

    __CutsceneStart();
    __PlaySound(0xbc);
    __Func_8010560(gScript_943__0200c764, 0x4d, 8);
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    __MapActor_SetSpeed(0, sp1, sp2);
    *(unsigned int *)(*(int *)iwram_3001ebc + 0x1c0) = 0x100;
    __MapActor_SetAnim(0, 2);
    __MapActor_TravelBy(0, 0, dist);
    __CutsceneWait(0x10);
    __Func_8091e9c(2);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200a7ec.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200aad0.s");
INCLUDE_ASM("asm/maps/fuchin_temple/FuchinTemple_MapInit.s");

extern unsigned char *iwram_3001f30;
extern void __SetFlag(int);
extern void __Func_8096fb0(int, int);
extern void __Func_80970f8(unsigned int, unsigned int);
extern void __Func_809728c(void);
extern void __FieldMove(int);
extern void __WaitFrames(int);

void OvlFunc_926_200c0dc(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p;

    __SetFlag(0x140);
    __Func_8096fb0(0x8d, 1);
    p = iwram_3001f30;
    __Func_80970f8(arg0, arg1);
    p[0x23] = 0;
    __Func_809728c();
    __FieldMove(1);
    __WaitFrames(1);
}

void OvlFunc_926_200c128(void)
{
	__MapActor_SetAnim(0, 1);
	__FieldMove(2);
	__Func_8097174();
}

INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200c140.s");
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200c1c4.s");
INCLUDE_ASM("asm/maps/fuchin_temple/fuchin_temple_data.s");
void __Func_8091220(int, int);
void __Func_8091200(int, int);
void __Func_8091254(int);
unsigned int __Random(void);
void __Func_8092950(int, int);

extern void OvlFunc_926_200c1c4(void);
struct Actor {
    int pad0;
    int pad4;
    int x;
    int y;
    int z;
    char pad14[0x58];
    void (*update)(void);
};

struct EffectData {
    int a;
    int b;
    int pad8;
    int padc;
    int pad10;
    int pad14;
    short f;
    short pad1a;
    int pad1c;
    int pad20;
    int pad24;
};

void OvlFunc_926_200c1ec(void)
{
    struct EffectData data;
    struct Actor *actor;
    unsigned int r7;
    int x;
    int y;
    int z_offset;

    __PlaySound(0x83);
    ((struct Actor *)__MapActor_GetActor(8))->update = OvlFunc_926_200c1c4;
    __CutsceneWait(0x28);
    __Func_8091220(0x10000, 0);
    __Func_8091200(0x205c54, 1);
    __Func_8091254(0x3c);
    __CutsceneWait(0x28);
    __PlaySound(0x83);
    ((struct Actor *)__MapActor_GetActor(2))->update = OvlFunc_926_200c1c4;
    __CutsceneWait(0x78);
    actor = (struct Actor *)__MapActor_GetActor(8);

    data.a = 1;
    data.b = 2;
    data.f = 0x11d;

    for (r7 = 0; r7 <= 0x3f; r7++) {
        if ((r7 & 3) == 0) {
            __PlaySound(0xf6);
        }
        x = actor->x + ((((__Random() * 3) << 4) >> 16) << 16) - 0xc0000;
        y = actor->y + (((__Random() << 5) >> 16) << 16) - 0x100000;
        z_offset = ((((__Random() * 4) >> 16) << 15) + 0x8000);
        OvlFunc_common0_10c(x, y, actor->z, 0, z_offset, 0, 0x130000, &data);
        __WaitFrames(2);
    }

    __PlaySound(0xdc);
    __CutsceneWait(0x1e);
    __Func_8091200(0x10000, 1);
    __Func_8091254(0x3c);
    __CutsceneWait(0x28);
    ((struct Actor *)__MapActor_GetActor(8))->update = 0;
    ((struct Actor *)__MapActor_GetActor(2))->update = 0;
    __Func_8092950(8, 0);
    __Func_8092950(2, 0);
}
