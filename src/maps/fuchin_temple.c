/* rom_7b2078 (overlay file 926): consolidated TU — fuchin_temple map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

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

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char gScript_943__0200c7a8[];
extern unsigned char Lm926_4838[] __asm__(".Lm926_4838");
extern unsigned char Lconst_3c[] __asm__(".Lconst_3c");
__asm__(".equ .Lconst_3c, 0x3c");

unsigned int *FuchinTemple_GetEntrances(void)
{
    unsigned int r3;
    unsigned int r1;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    if (*(short *)((char *)r3 + r1) == (int)Lconst_3c) {
        return (unsigned int *)gScript_943__0200c7a8;
    }
    return (unsigned int *)Lm926_4838;
}

unsigned int FuchinTemple_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c8c8[];

void *FuchinTemple_GetExits(void) {
    return (void *)gOvl_0200c8c8;
}

extern unsigned char Lm926_48f0[] __asm__(".Lm926_48f0");
extern unsigned char Lm926_4ae8[] __asm__(".Lm926_4ae8");
extern unsigned char Lm926_4998[] __asm__(".Lm926_4998");
extern void __Func_808b868(void *);

void *FuchinTemple_GetActors(void)
{
    GlobalState *p = &gState;

    if (*(short *)((char *)p + 0x1c0) == (int)Lconst_3c) {
        return Lm926_48f0;
    }
    if (*(short *)((char *)p + 0x1c2) == 3) {
        return Lm926_4ae8;
    }
    if (API_GetFlag(0x895)) {
        unsigned char *base = Lm926_4998;
        int flag = 0x895;

        *(unsigned short *)(base + 0x7a) = flag;
        *(unsigned short *)(base + 0xaa) = flag;
        *(int *)(base + 0xc8) = 0x90 << 17;
        *(int *)(base + 0xd0) = 0xf8 << 16;
        *(unsigned short *)(base + 0x10a) = flag;
        *(unsigned short *)(base + 0x122) = flag;
    }
    __Func_808b868(Lm926_4998);
    return Lm926_4998;
}

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

void OvlFunc_926_2008484(void)
{
    extern int __Func_8093054(int, int);
    API_CutsceneStart();
    if (API_GetFlag(0x88f)) {
        API_MessageID(0x17d6);
        __Func_8093054(0xc, 0);
        API_CutsceneEnd();
        return;
    }
    API_MessageID(0x1794);
    API_ShowActorMessage_NoWait(0xc, 0);
    if (API_Func_8091c7c(0, 0) == 1) {
        (*(unsigned short *)(*(unsigned char **)iwram_3001ebc + (0xec << 1)))++;
        API_ShowActorMessage_NoWait(0xc, 0);
        if (API_Func_8091c7c(0, 0) == 1)
            (*(unsigned short *)(*(unsigned char **)iwram_3001ebc + (0xec << 1)))++;
    }
    API_ActorMessage(0xc, 0);
    API_CutsceneEnd();
}

struct FuchinEffectDataView {
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

// Target ABI checks for the production compiler.
typedef char FuchinEffectDataViewSizeCheck[(sizeof(struct FuchinEffectDataView) == 40) ? 1 : -1];
typedef char FuchinEffectDataViewAlignmentCheck[(__alignof__(struct FuchinEffectDataView) == 4) ? 1 : -1];
typedef char FuchinEffectDataViewFieldWidthsCheck[
    (sizeof(((struct FuchinEffectDataView *)0)->a) == 4 &&
     sizeof(((struct FuchinEffectDataView *)0)->b) == 4 &&
     sizeof(((struct FuchinEffectDataView *)0)->pad8) == 4 &&
     sizeof(((struct FuchinEffectDataView *)0)->padc) == 4 &&
     sizeof(((struct FuchinEffectDataView *)0)->pad10) == 4 &&
     sizeof(((struct FuchinEffectDataView *)0)->pad14) == 4 &&
     sizeof(((struct FuchinEffectDataView *)0)->f) == 2 &&
     sizeof(((struct FuchinEffectDataView *)0)->pad1a) == 2 &&
     sizeof(((struct FuchinEffectDataView *)0)->pad1c) == 4 &&
     sizeof(((struct FuchinEffectDataView *)0)->pad20) == 4 &&
     sizeof(((struct FuchinEffectDataView *)0)->pad24) == 4) ? 1 : -1];
typedef char FuchinEffectDataViewOffsetsCheck[
    ((unsigned long)&((struct FuchinEffectDataView *)0)->a == 0 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->b == 4 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->pad8 == 8 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->padc == 12 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->pad10 == 16 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->pad14 == 20 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->f == 24 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->pad1a == 26 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->pad1c == 28 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->pad20 == 32 &&
     (unsigned long)&((struct FuchinEffectDataView *)0)->pad24 == 36) ? 1 : -1];

extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

void OvlFunc_926_2008518(void) {
    struct Actor *a;
    struct FuchinEffectDataView data;

    a = (struct Actor *)__MapActor_GetActor(9);
    API_CutsceneStart();
    API_MessageID(0x17b4);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_MapActor_TravelToAnimWait(0, 0xa8, 0xc4 << 1);
    API_Func_8092adc(0, 0xc0 << 8, 0x14);
    API_PlaySound(0x84);
    ((struct Actor *)__MapActor_GetActor(9))->motion.y = 0xa0 << 13;
    ((struct Actor *)__MapActor_GetActor(9))->gravity = 0x80 << 11;
    API_MapActor_SetSpeed(9, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_TravelTo(9, 0x98, 0xc4 << 1);
    API_MapActor_WaitMovement(9);
    ((struct Actor *)__MapActor_GetActor(9))->gravity = 0x80 << 9;
    API_Func_8092adc(9, 0, 0);
    API_PlaySound(0x84);
    data.b = 7;
    OvlFunc_common0_10c(a->pos.x, a->pos.y, a->pos.z + (0x80 << 11), 0x80 << 8, 0, 0, 0x80 << 9, &data);
    OvlFunc_common0_10c(a->pos.x, a->pos.y, a->pos.z + (0x80 << 11), 0, 0, 0, 0x80 << 9, &data);
    OvlFunc_common0_10c(a->pos.x, a->pos.y, a->pos.z + (0x80 << 11), -0x8000, 0, 0, 0x80 << 9, &data);
    API_CutsceneWait(0x1e);
    API_MapActor_PlayPendingSound();
    API_Func_8010704(0xa, 0x18, 1, 1, 0xa, 0x16);
    API_SetFlag(0x892);
    API_CutsceneEnd();
}

void OvlFunc_926_2008658(void) {
    extern void __Func_8093054(int, int);

    API_CutsceneStart();
    API_SetFlag(0x894);
    API_MapActor_Face(9, 0, 0);
    API_CutsceneWait(0xa);
    API_MessageID(0x17b7);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0, 0x80 << 8, 0x14);
    __Func_8093054(9, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(9, 0x80 << 1, 0x50);
    API_Func_8092adc(9, 0xd0 << 8, 0x14);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_Func_8092adc(9, 0, 0x14);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_Func_8010704(0xa, 0x1a, 1, 1, 0xa, 0x18);
    API_CutsceneEnd();
}

static inline void FuchinStopByte(unsigned char *field, int value) { *field = value; }

void OvlFunc_926_200871c(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern void OvlFunc_926_200c0dc(unsigned int, unsigned int);
    extern void OvlFunc_926_200c128(void);
    extern void OvlFunc_926_200c140(void);
    extern int __ShowActorMessage_NoWait(int, int);
    int flagValue1;
    int choice2;
    int choice3;
    int choice4;
    unsigned char *actor;

    API_CutsceneStart();
    flagValue1 = API_GetFlag(0x300);
    if (flagValue1 != 0) {
        API_MapActor_TravelToAnimWait(0, 0xa8, 0x1f8);
        API_CutsceneWait(5);
        API_Func_8092adc(0, 0xc000, 20);
        actor = (unsigned char *)((int)__MapActor_GetActor(8));
        actor += 0x5b;
        FuchinStopByte(actor, 0);
        API_PlaySound(0x98);
        actor = (unsigned char *)((int)__MapActor_GetActor(8));
        *(int *)(actor + 0x28) = 0x80000;
        API_MapActor_SetAnim(8, 1);
        API_CutsceneWait(30);
        API_MessageID(0x17ac);
    } else {
        API_MessageID(0x179f);
        OvlFunc_926_200c0dc(0, 8);
        API_CutsceneWait(30);
        API_ActorMessage(8, 0);
        OvlFunc_926_200c128();
        API_CutsceneWait(20);
        API_MapActor_TravelToAnimWait(0, 0xa8, 0x1f8);
        API_CutsceneWait(5);
        API_Func_8092adc(0, 0xc000, 20);
        API_PlaySound(0x98);
        actor = (unsigned char *)((int)__MapActor_GetActor(8));
        actor += 0x5b;
        FuchinStopByte(actor, flagValue1);
        actor = (unsigned char *)((int)__MapActor_GetActor(8));
        *(int *)(actor + 0x28) = 0x80000;
        API_MapActor_SetAnim(8, 1);
        API_CutsceneWait(30);
        __ShowActorMessage_NoWait(8, 0);
        choice2 = __Func_8091c7c(0, 0);
        if (choice2 == 1) {
            API_Func_80925cc(8, 2);
            API_CutsceneWait(20);
            API_ActorMessage(8, 0);
            API_CutsceneWait(20);
            OvlFunc_926_200c0dc(8, 0);
            API_CutsceneWait(30);
            API_Func_80925cc(0, 2);
            API_CutsceneWait(0x32);
            OvlFunc_926_200c128();
            API_CutsceneWait(30);
            API_MapActor_DoAnim(8, 3);
            API_ActorMessage(8, 0);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 2);
            API_ActorMessage(8, 0);
        }
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(30);
        API_MapActor_Emote(8, 0x100, 0x3c);
        API_MessageID(0x17a4);
        __ShowActorMessage_NoWait(8, 0);
        choice3 = __Func_8091c7c(0, 0);
        if (choice3 == 1) {
            API_MapActor_Emote(8, 0x105, 0x3c);
            OvlFunc_926_200c0dc(8, 0);
            API_CutsceneWait(30);
            API_Func_80925cc(0, 2);
            API_CutsceneWait(0x32);
            OvlFunc_926_200c128();
            API_CutsceneWait(30);
            API_ActorMessage(8, 0);
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
            API_CutsceneWait(20);
            API_MapActor_DoAnim(8, 3);
            API_CutsceneWait(20);
            API_ActorMessage(8, 0);
        }
        API_CutsceneWait(20);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_Func_80925cc(0, 2);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(8, 0xc000, 20);
        API_MapActor_SetSpeed(8, 0x4ccc, 0x2666);
        API_MapActor_TravelToAnimWait(8, 0xa8, 0x1d0);
        API_CutsceneWait(0x3c);
        API_Func_8092adc(8, 0x4000, 0x28);
        API_ActorMessage_Wait(8, 0, 10);
        API_MapActor_Emote(0, 0x102, 0x3c);
        API_MapActor_TravelToAnimWait(8, 0xa8, 0x1d8);
    }
    __ShowActorMessage_NoWait(8, 0);
    choice4 = __Func_8091c7c(0, 0);
    if (choice4 == 1) {
        API_MessageID(0x17ab);
        API_ActorMessage(8, 0);
        API_SetFlag(0x300);
    } else {
        API_MessageID(0x17ad);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(20);
        API_Func_80933d4(0x8000, 0x1000);
        API_Func_8093500(8, 1);
        API_Func_8091220(0x10000, 0);
        API_Func_8091200(0x10003, 1);
        API_Func_8091254(30);
        API_WaitMapTransition();
        API_Func_8093530();
        OvlFunc_926_200c140();
        API_Func_8091200(0x10000, 0);
        API_Func_8091254(30);
        API_ActorMessage(8, 0);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_Func_809259c(0, 1);
        API_MapActor_Surprise(0, 0x102);
        API_CutsceneWait(0x3c);
        API_ActorMessage_Wait(8, 0, 10);
        API_SetFlag(0x891);
    }
    API_MapActor_SetAnim(8, 5);
    API_CutsceneEnd();
}

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

extern unsigned char gScript_926__0200c638[];

void OvlFunc_926_2008afc(void)
{
    __CutsceneStart();
    ((struct Actor *)__MapActor_GetActor(12))->stop = 0;
    while (((struct Actor *)__MapActor_GetActor(12))->pos.y > 0) {
        __WaitFrames(1);
    }
    ((struct Actor *)__MapActor_GetActor(12))->pos.y = 0;
    ((struct Actor *)__MapActor_GetActor(12))->prevPos.y = 0x80 << 24;
    ((struct Actor *)__MapActor_GetActor(12))->motion.y = 0;
    ((struct Actor *)__MapActor_GetActor(12))->stop = 1;
    API_MapActor_Face(12, 0, 0);
    if (__GetFlag(0x895)) {
        API_MessageID(0x1a5b);
    } else if (__GetFlag(0x89b)) {
        API_MessageID(0x189e);
    } else {
        API_MessageID(0x182a);
    }
    API_ActorMessage(12, 0);
    ((struct Actor *)__MapActor_GetActor(12))->facing = 0x80 << 7;
    ((struct Actor *)__MapActor_GetActor(12))->stop = 0;
    API_MapActor_SetBehavior(12, (int)gScript_926__0200c638);
    __CutsceneEnd();
}

void OvlFunc_926_2008bd4(void) {
    __CutsceneStart();
    __MessageID(0x182d);
    __Func_8093054(0xf, 0);
    __CutsceneEnd();
}

void OvlFunc_926_2008bf4(void)
{
    unsigned char *actor;
    unsigned int i;
    int theta;
    unsigned char *sprite;

    actor = __MapActor_GetActor(0x13);
    for (i = 8; i >= 4; i--)
    {
        sprite = *(unsigned char **)(actor + 0x50);
        theta = i << 12;
        *(unsigned short *)(sprite + 0x1e) = theta;
        __WaitFrames((i - 4) * 2);
        *(int *)(actor + 8) += __cos(theta) * 6;
        *(int *)(actor + 0x10) += __sin(theta) * 6;
    }
    *(int *)(actor + 0xc) = 0x120000;
    *(int *)(actor + 0x3c) = 0x120000;
    __PlaySound(0xe3);
    OvlFunc_common0_10c(*(int *)(actor + 8) - 0xc0000, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0x80000, -0x3333, 0x6666, 0, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0x80000, -0xcccc, 0x4ccc, 0, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8) + 0xa0000, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0x80000, -0x10000, 0x3333, 0, 0, 0);
}

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
void OvlFunc_926_2008db4(void)
{
    unsigned char *actor;
    unsigned int i;
    unsigned char *sprite;
    int zero;

    actor = __MapActor_GetActor(0x13);
    for (i = 0; i <= 3; i++)
    {
        __WaitFrames((4 - i) * 2);
        *(int *)(actor + 0x10) -= 0x10000;
        *(int *)(actor + 0x40) = 0x80 << 24;
    }
    sprite = *(unsigned char **)(actor + 0x50);
    zero = 0;
    *(unsigned short *)(sprite + 0x1e) = zero;
    __PlaySound(0xe3);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) - 0x80000, 0xffff3334, zero, 0xffffcccd, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) - 0x80000, 0xcccc, zero, 0xffffcccd, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8) - 0x60000, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0xa0000, 0x3333, zero, 0xffff0000, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8) + 0x60000, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0xa0000, 0x3333, zero, 0xffff0000, zero, zero);
}
void OvlFunc_926_2008e94(void)
{
    unsigned char *actor;
    unsigned int i;
    int zero;
    unsigned char *sprite;

    actor = __MapActor_GetActor(0x13);
    for (i = 0; i <= 3; i++)
    {
        __WaitFrames((4 - i) * 2);
        *(int *)(actor + 0x10) += 0x80 << 9;
        *(int *)(actor + 0x40) = 0x80 << 24;
    }
    sprite = *(unsigned char **)(actor + 0x50);
    zero = 0;
    *(unsigned short *)(sprite + 0x1e) = zero;
    *(int *)(actor + 0x10) += 0xc0 << 13;
    *(int *)(actor + 0x40) = 0x80 << 24;
    __PlaySound(0xe3);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) + (0xc0 << 12), 0xffff3334, zero, 0x3333, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) + (0xc0 << 12), 0xcccc, zero, 0x3333, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8) - (0xc0 << 11), *(int *)(actor + 0xc), *(int *)(actor + 0x10) - 0x80000, 0x3333, zero, 0x80 << 9, zero, zero);
    OvlFunc_common0_10c(*(int *)(actor + 8) + (0xc0 << 11), *(int *)(actor + 0xc), *(int *)(actor + 0x10) - 0x80000, 0x3333, zero, 0x80 << 9, zero, zero);
}
void OvlFunc_926_2008f80(void)
{
    unsigned char *actor;
    unsigned short facing;

    actor = __MapActor_GetActor(0);
    facing = *(unsigned short *)(actor + 6);
    if ((unsigned short)(facing - 0x2000) <= 0x3fff)
    {
        API_MapActor_TravelToAnimWait(0xf, 0xd8, 0xa8);
        API_MapActor_TravelToAnimWait(0xf, 0xe0, 0xa8);
        API_Func_8092adc(0xf, 0x80 << 6, 0x14);
    }
    else if ((unsigned short)(facing - 0x6000) <= 0x3fff)
    {
        API_MapActor_TravelToAnimWait(0xf, 0xe8, 0xa0);
        API_Func_8092adc(0xf, 0xa0 << 7, 0x14);
    }
    else if ((unsigned short)(facing + 0x6000) <= 0x3fff)
    {
        API_MapActor_TravelToAnimWait(0xf, 0xd8, 0xa8);
        API_MapActor_TravelToAnimWait(0xf, 0xe0, 0xac);
        API_Func_8092adc(0xf, 0xe0 << 8, 0x14);
    }
    else
    {
        API_MapActor_TravelToAnimWait(0xf, 0xe8, 0xa0);
        API_Func_8092adc(0xf, 0x80 << 6, 0x14);
    }
}
INCLUDE_ASM("asm/maps/fuchin_temple/OvlFunc_926_200902c.s");

extern void OvlFunc_926_2008f80(void);

void OvlFunc_926_2009160(void) {
    API_MapActor_Face(0xd, 0x13, 0);
    API_MapActor_Face(0xe, 0x13, 0);
    API_MapActor_Face(0xf, 0x13, 0);
    API_MapActor_Face(0x10, 0x13, 0);
    API_MapActor_Face(0x12, 0x13, 0);
    API_CutsceneWait(0x14);
    API_Func_80925cc(0xf, 2);
    API_CutsceneWait(0x14);
    API_MessageID(0x187a);
    API_ActorMessage_Wait(0xf, 0, 0x14);
    API_ActorMessage_Wait(0x10, 0, 0x14);
    API_MapActor_Emote(0x12, 0x105, 0x3c);
    API_MapActor_Emote(0x10, 0x101, 0x3c);
    API_ActorMessage_Wait(0x10, 0, 0x14);
    API_MapActor_DoAnim(0x12, 4);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0x12, 0, 0x14);
    API_MapActor_Emote(0x10, 0x81 << 1, 0x3c);
    API_ActorMessage_Wait(0x10, 0, 0x14);
    API_MapActor_TurnToFaceActor(0xf, 0x12, 0);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(0x12, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(0xf, 3);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(0xf, 0xcccc, 0x6666);
    OvlFunc_926_2008f80();
    API_Func_80925cc(0xf, 3);
    API_MapActor_SetPos(0x13, 0xe8 << 16, 0xa8 << 16);
    API_MapActor_SetPos(0x14, 0xe8 << 16, 0xa8 << 16);
    ((struct Actor *)__MapActor_GetActor(0x13))->pos.y = 0xc0 << 12;
    ((struct Actor *)__MapActor_GetActor(0x13))->prevPos.y = 0x80 << 24;
    ((struct Actor *)__MapActor_GetActor(0x13))->scale.x = 0xcccc;
    ((struct Actor *)__MapActor_GetActor(0x13))->sprite->rotation = 0x80 << 8;
    API_PlaySound(0x7c);
    API_CutsceneWait(0x28);
    API_MapActor_TravelToAnimWait(0xf, 0xd8, 0x98);
    API_Func_8092adc(0xf, 0x80 << 7, 0x1e);
    API_SetFlag(0x301);
}

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

extern void OvlFunc_926_2008e94(void);
extern void OvlFunc_926_2008db4(void);

void OvlFunc_926_2009334(void)
{
    unsigned char *actor;
    unsigned short facing;

    actor = __MapActor_GetActor(0);
    __CutsceneStart();
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(0x14);
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
    __MapActor_SetAnim(0, 1);
    OvlFunc_926_200902c(1);
    __CutsceneEnd();
}
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

static inline void FuchinByte(unsigned char *p, int value) { *p = value; }
static inline void FuchinHalf(unsigned short *p, int value) { *p = value; }

void OvlFunc_926_2009494(void)
{
    extern unsigned char CS_926_477a[] __asm__(".Lm926_477a");
    extern unsigned char CS_926_4790[] __asm__(".Lm926_4790");
    extern unsigned char gScript_926__0200c638[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __DeleteFieldActor(int);
    extern void __Func_8010560(void *, int, int);
    extern int __Func_8091c7c(int, int);
    extern int __Func_8093054(int, int);
    extern unsigned char * __MapActor_GetActor(int);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    int choice2;
    unsigned char *actor;

    API_SetFlag(0x89a);
    API_CutsceneWait(30);
    API_MapActor_Face(13, 0, 0);
    API_MapActor_Face(15, 0, 0);
    API_MapActor_Face(16, 0, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(13, 0x100, 0);
    API_MapActor_Emote(15, 0x100, 0);
    API_MapActor_Emote(16, 0x100, 0);
    API_CutsceneWait(0x3c);
    API_MessageID(0x183b);
    API_ActorMessage_Wait(13, 0, 20);
    API_MapActor_Face(0, 13, 0);
    API_Func_80925cc(15, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(15, 0, 20);
    API_MapActor_Face(0, 15, 0);
    API_Func_80925cc(16, 2);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 16, 0);
    __Func_8093054(16, 0);
    API_CutsceneWait(0x32);
    API_SetCameraTarget(16, 1);
    API_MapActor_SetSpeed(16, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(16, 0xb0, 0xf8);
    API_MapActor_TravelToAnimWait(16, 0x134, 0xf8);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(16, 0xc000, 20);
    API_PlaySound(0x9e);
    __Func_8010560(CS_926_477a, 0x4e, 13);
    API_Func_80925cc(16, 2);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(16, 0x18000, 0xc000);
    actor = __MapActor_GetActor(16);
    actor += 0x5a;
    FuchinByte(actor, 0xfe & *actor);
    API_MapActor_TravelToAnimWait(16, 0x134, 0x110);
    API_CutsceneWait(1);
    actor = __MapActor_GetActor(16);
    actor += 0x5a;
    FuchinByte(actor, 1 | *actor);
    API_ActorMessage_Wait(16, 0, 0x32);
    API_MapActor_SetPos(17, 0x1300000, 0xd80000);
    API_MapActor_TravelToAnimWait(17, 0x130, 0xf8);
    API_MapActor_Face(9, 17, 0);
    API_MapActor_Face(10, 17, 0);
    API_MapActor_Face(11, 17, 0);
    API_MapActor_Face(12, 17, 0);
    API_MapActor_Face(13, 17, 0);
    API_MapActor_Face(14, 17, 0);
    API_MapActor_Face(15, 17, 0);
    API_MapActor_Face(16, 17, 0);
    API_MapActor_Face(0, 17, 0);
    API_CutsceneWait(10);
    API_Func_809259c(9, 2);
    API_Func_809259c(10, 2);
    API_Func_809259c(11, 2);
    API_Func_809259c(12, 2);
    API_Func_809259c(13, 2);
    API_Func_809259c(14, 2);
    API_Func_809259c(15, 2);
    API_Func_80925cc(16, 2);
    API_MapActor_Emote(17, 0x103, 0x3c);
    API_MapActor_SetPos(18, 0x1300000, 0xd80000);
    API_MapActor_TravelToAnim(18, 0x130, 0xf8);
    API_MapActor_TravelToAnim(17, 0x118, 0x108);
    API_MapActor_WaitMovement(18);
    API_Func_8092adc(18, 0x5000, 0);
    API_MapActor_WaitMovement(17);
    API_PlaySound(0x9f);
    __Func_8010560(CS_926_4790, 0x4e, 13);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_Face(9, 17, 0);
    API_MapActor_Face(10, 17, 0);
    API_MapActor_Face(11, 17, 0);
    API_MapActor_Face(12, 17, 0);
    API_MapActor_Face(13, 17, 0);
    API_MapActor_Face(14, 17, 0);
    API_MapActor_Face(15, 17, 0);
    API_MapActor_Face(16, 17, 0);
    API_MapActor_Face(0, 17, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(17, 2);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(18, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_DoAnim(17, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(18, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_Func_8092adc(17, 0xd000, 20);
    API_ActorMessage_Wait(17, 0, 20);
    API_MapActor_Emote(18, 0x102, 0x3c);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_DoAnim(17, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(17, 0, 20);
    API_MapActor_DoAnim(18, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_DoAnim(17, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(18, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_Func_80925cc(17, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(17, 0, 20);
    API_ActorMessage_Wait(17, 0, 20);
    API_Func_8092adc(16, 0x8000, 20);
    API_MapActor_DoAnim(16, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(17, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(17, 0, 20);
    API_MapActor_DoAnim(16, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(16, 0, 20);
    API_Func_8092adc(17, 0x8000, 20);
    API_ActorMessage_Wait(17, 0, 20);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(9, 0, 20);
    API_Func_8092adc(17, 0xd000, 20);
    API_Func_80925cc(17, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(17, 0, 20);
    API_MapActor_Emote(18, 0x102, 0x3c);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_Emote(17, 0x101, 0x3c);
    API_ActorMessage_Wait(17, 0, 20);
    API_MapActor_DoAnim(18, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_Emote(17, 0x100, 0x3c);
    API_ActorMessage_Wait(17, 0, 20);
    API_MapActor_DoAnim(18, 4);
    API_CutsceneWait(20);
    API_MapActor_Emote(17, 0x103, 0x3c);
    API_ActorMessage_Wait(17, 0, 20);
    API_MapActor_Emote(18, 0x100, 0x3c);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_DoAnim(17, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(17, 0, 20);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_Func_80925cc(17, 2);
    API_CutsceneWait(10);
    API_MapActor_TravelToAnimWait(17, 0x100, 0x118);
    API_Func_8092adc(17, 0x4000, 20);
    API_MapActor_SetPos(17, 0, 0);
    __DeleteFieldActor(17);
    API_CutsceneWait(30);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(9, 0, 20);
    API_Func_80925cc(15, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(15, 0, 20);
    API_MapActor_Face(16, 18, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(16, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(16, 0, 20);
    API_MapActor_Face(18, 16, 0);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_DoAnim(18, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_DoAnim(18, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_SetSpeed(18, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(18, 0x100, 0xf8);
    API_Func_8092adc(18, 0xc000, 20);
    API_Func_809259c(18, 1);
    API_MapActor_Emote(18, 0x100, 0x3c);
    API_MapActor_TravelToAnimWait(18, 0xf0, 0xb8);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(20);
    API_MapActor_SetPos(19, 0xe80000, 0xa80000);
    API_MapActor_SetPos(20, 0xe80000, 0xa80000);
    actor = __MapActor_GetActor(19);
    *(int *)(actor + 0xc) = 0xc0000;
    actor = __MapActor_GetActor(19);
    *(int *)(actor + 0x3c) = 0x80000000;
    actor = __MapActor_GetActor(19);
    *(int *)(actor + 0x18) = 0xcccc;
    actor = __MapActor_GetActor(19);
    FuchinHalf((unsigned short *)(*(unsigned char **)(actor + 0x50) + 30), 0x8000);
    API_PlaySound(0x7c);
    API_ActorMessage_Wait(18, 0, 20);
    API_Func_8092adc(0, 0xc000, 20);
    API_MapActor_TravelToAnimWait(16, 0x100, 0xf0);
    API_Func_8092adc(16, 0xb000, 20);
    API_Func_80925cc(16, 1);
    API_ActorMessage_Wait(16, 0, 20);
    API_MapActor_Face(9, 0, 0);
    API_MapActor_Face(10, 0, 0);
    API_MapActor_Face(11, 0, 0);
    API_MapActor_Face(12, 0, 0);
    API_MapActor_Face(13, 0, 0);
    API_MapActor_Face(14, 0, 0);
    API_MapActor_Face(15, 0, 0);
    API_MapActor_Face(16, 0, 0);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(18, 0x5000, 20);
    API_MapActor_TravelToAnimWait(18, 0xf8, 0xd0);
    API_Func_8092adc(18, 0x5000, 20);
    __ShowActorMessage_NoWait(18, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_Func_80925cc(16, 1);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(16, 0, 20);
        API_SetFlag(0x898);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_CutsceneWait(20);
        API_MapActor_Emote(18, 0x105, 0x3c);
        API_Func_8092adc(18, 0x4000, 20);
        API_Func_80925cc(16, 2);
        API_CutsceneWait(20);
        __ShowActorMessage_NoWait(16, 0);
        choice2 = __Func_8091c7c(0, 0);
        if (choice2 == 0) {
            API_MapActor_DoAnim(16, 3);
            API_CutsceneWait(20);
            API_Func_8092adc(18, 0xb000, 20);
            API_ActorMessage_Wait(18, 0, 20);
            API_SetFlag(0x898);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
            API_CutsceneWait(20);
            API_MapActor_DoAnim(18, 4);
            API_CutsceneWait(20);
            API_ActorMessage_Wait(18, 0, 20);
            API_SetFlag(0x899);
        }
    }
    API_Func_8092adc(10, 0x8000, 0);
    API_Func_8092adc(11, 0x8000, 20);
    API_MapActor_SetAnim(10, 5);
    API_MapActor_SetAnim(11, 5);
    API_MapActor_SetBehavior(12, (int)gScript_926__0200c638);
}


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


static inline void FuchinDepartureHalf(unsigned short *p, int value) { *p = value; }

void OvlFunc_926_2009dbc(void)
{
    extern unsigned char gScript_926__0200c638[];
    extern int __Func_8093054(int, int);
    extern unsigned char * __MapActor_GetActor(int);
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(18);
    *(int *)((char *)actor + 0x6c) = 0;
    actor = (struct Actor *)__MapActor_GetActor(13);
    *(int *)((char *)actor + 0x6c) = 0;
    actor = (struct Actor *)__MapActor_GetActor(14);
    *(int *)((char *)actor + 0x6c) = 0;
    actor = (struct Actor *)__MapActor_GetActor(15);
    *(int *)((char *)actor + 0x6c) = 0;
    actor = (struct Actor *)__MapActor_GetActor(16);
    *(int *)((char *)actor + 0x6c) = 0;
    API_MapActor_SetAnim(11, 1);
    API_Func_80933d4(0x8000, 0x1000);
    API_Func_80933f8(0xe80000, -1, 0xc80000, 1);
    API_Func_8093530();
    API_MessageID(0x1883);
    API_MapActor_SetSpeed(10, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(12, 0xcccc, 0x6666);
    API_MapActor_TravelToAnim(10, 0x98, 0xc8);
    API_MapActor_TravelToAnimWait(12, 0x90, 0xf8);
    API_MapActor_WaitMovement(10);
    API_MapActor_Face(9, 19, 0);
    API_MapActor_Face(11, 19, 0);
    API_MapActor_Face(13, 19, 0);
    API_MapActor_Face(14, 19, 0);
    API_MapActor_Face(15, 19, 0);
    API_MapActor_Face(16, 19, 0);
    API_MapActor_Face(18, 19, 0);
    API_MapActor_SetSpeed(10, 0x18000, 0xc000);
    API_MapActor_SetSpeed(12, 0x20000, 0x10000);
    API_MapActor_TravelToAnim(10, 0x98, 0xc8);
    API_MapActor_TravelToAnimWait(12, 0x90, 0xf8);
    API_MapActor_Face(12, 19, 0);
    API_MapActor_WaitMovement(10);
    API_MapActor_Face(10, 19, 0);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 0x28);
    API_MapActor_Face(9, 18, 0);
    API_MapActor_Face(10, 18, 0);
    API_Func_8092adc(11, 0x3000, 0);
    API_MapActor_Face(12, 18, 0);
    API_Func_8092adc(13, 0x3000, 0);
    API_MapActor_Face(14, 18, 0);
    API_MapActor_Face(15, 18, 0);
    API_MapActor_Face(16, 18, 0);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(16, 0, 20);
    API_MapActor_DoAnim(18, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(16, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(16, 0, 20);
    API_MapActor_Emote(18, 0x105, 0x3c);
    API_MapActor_Emote(16, 0x101, 0x3c);
    API_ActorMessage_Wait(16, 0, 20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_Emote(16, 0x102, 0x3c);
    API_MapActor_Emote(15, 0x101, 0x3c);
    API_MapActor_SetSpeed(15, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(15, 0xd8, 0xb0);
    API_Func_8092adc(15, 0x3000, 20);
    API_ActorMessage_Wait(15, 0, 20);
    API_Func_8092adc(18, 0xb000, 20);
    API_MapActor_DoAnim(18, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_Func_809259c(9, 2);
    API_Func_809259c(10, 2);
    API_Func_809259c(11, 2);
    API_Func_809259c(12, 2);
    API_Func_809259c(13, 2);
    API_Func_809259c(14, 2);
    API_Func_809259c(15, 2);
    API_Func_809259c(16, 2);
    API_CutsceneWait(0x28);
    API_Func_80925cc(13, 2);
    API_ActorMessage_Wait(13, 0, 20);
    API_MapActor_DoAnim(18, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_Func_8092adc(0, 0xe000, 20);
    API_Func_8092adc(18, 0x5000, 20);
    __Func_8093054(18, 0);
    API_MapActor_Emote(9, 0x101, 0);
    API_CutsceneWait(5);
    API_MapActor_Emote(10, 0x101, 0);
    API_CutsceneWait(5);
    API_MapActor_Emote(11, 0x101, 0);
    API_CutsceneWait(5);
    API_MapActor_Emote(12, 0x101, 0);
    API_CutsceneWait(5);
    API_MapActor_Emote(13, 0x101, 0);
    API_CutsceneWait(5);
    API_MapActor_Emote(14, 0x101, 0);
    API_CutsceneWait(5);
    API_MapActor_Emote(15, 0x101, 0);
    API_CutsceneWait(5);
    API_MapActor_Emote(16, 0x101, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(16, 2);
    API_ActorMessage_Wait(16, 0, 20);
    API_MapActor_DoAnim(18, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_Emote(15, 0x101, 0x3c);
    API_ActorMessage_Wait(15, 0, 20);
    API_MapActor_Face(18, 15, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(18, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 0x28);
    API_MapActor_TurnToFaceActor(11, 10, 0);
    API_MapActor_TurnToFaceActor(12, 14, 0);
    API_MapActor_TurnToFaceActor(13, 15, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Face(10, 18, 0);
    API_MapActor_Face(11, 18, 0);
    API_MapActor_Face(12, 18, 0);
    API_MapActor_Face(13, 18, 0);
    API_MapActor_Face(14, 18, 0);
    API_MapActor_Face(15, 18, 0);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_SetAnim(10, 3);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(13, 3);
    API_MapActor_SetAnim(14, 3);
    API_MapActor_SetAnim(15, 3);
    API_MapActor_DoAnim(16, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(18, 0x5000, 20);
    __Func_8093054(18, 0);
    API_MapActor_DoAnim(18, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_SetAnim(10, 3);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(13, 3);
    API_MapActor_SetAnim(14, 3);
    API_MapActor_SetAnim(15, 3);
    API_MapActor_DoAnim(16, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(18, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(18, 0x8000, 20);
    API_Func_80925cc(18, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(18, 0, 20);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_SetAnim(10, 3);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(13, 3);
    API_MapActor_SetAnim(14, 3);
    API_MapActor_SetAnim(15, 3);
    API_MapActor_DoAnim(16, 3);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnim(10, 0x78, 0xc8);
    API_MapActor_TravelToAnim(12, 0x78, 0xf8);
    API_MapActor_WaitMovement(10);
    API_Func_8092adc(11, 0x8000, 20);
    API_MapActor_SetAnim(10, 5);
    API_MapActor_SetAnim(11, 5);
    API_MapActor_WaitMovement(12);
    API_MapActor_SetBehavior(12, (int)gScript_926__0200c638);
    API_MapActor_SetSpeed(15, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(15, 0xd8, 0xa8);
    API_MapActor_TravelToAnimWait(15, 0xe8, 0xa8);
    API_Func_8092adc(15, 0xc000, 20);
    API_Func_80925cc(15, 3);
    API_MapActor_SetPos(19, 0xe80000, 0xa80000);
    actor = (struct Actor *)__MapActor_GetActor(19);
    actor->pos.y = 0xc0000;
    actor = (struct Actor *)__MapActor_GetActor(19);
    actor->prevPos.y = 0x80000000;
    actor = (struct Actor *)__MapActor_GetActor(19);
    FuchinDepartureHalf((unsigned short *)(*(int *)((char *)actor + 0x50) + 30), 0x8000);
    API_PlaySound(0x7c);
    API_CutsceneWait(0x28);
    API_MapActor_TravelToAnimWait(15, 0xd8, 0x98);
    API_Func_8092adc(15, 0x4000, 30);
    API_ClearFlag(0x898);
    API_SetFlag(0x89b);
}

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
    __CutsceneStart();
    if (!__GetFlag(0x89a) && !__GetFlag(0x895)) {
        __Func_801776c(0x18ad, 1);
        __CutsceneEnd();
    } else {
        __PlaySound(0x9e);
        __Func_8010560(Lm926_477a, 0x4e, 0xd);
        API_MapActor_SetSpeed(0, 0x8000, 0x4000);
        API_MapActor_TravelToAnimWait(0, 0x132, 0xf8);
        __MapActor_TravelToAnim(0, 0x130, 0xd8);
        __CutsceneWait(0x14);
        __Func_8091e9c(4);
        __CutsceneEnd();
    }
}
extern void __UI_Sanctum(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);

void OvlFunc_926_200a508(void)
{
    unsigned char *p;
    unsigned int facing;

    p = __MapActor_GetActor(0);
    facing = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((unsigned int)(facing - 0xa001) <= 0x3ffe) {
        __UI_Sanctum(0xd);
    } else {
        __MessageID(0x1a1c);
        __ActorMessage(0xd, 0);
    }
    __CutsceneEnd();
}

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

extern unsigned char Lm926_4b90[] __asm__(".Lm926_4b90");
extern unsigned char Lm926_5184[] __asm__(".Lm926_5184");
extern unsigned char Lm926_4d40[] __asm__(".Lm926_4d40");
extern unsigned char _EVENT_3c[];

int FuchinTemple_GetEvents(void)
{
    GlobalState *p = &gState;
    if (*(short *)((char *)p + 0x1c0) == (int)_EVENT_3c) return (int)Lm926_4b90;
    if (*(short *)((char *)p + 0x1c2) == 3) return (int)Lm926_5184;
    return (int)Lm926_4d40;
}
extern unsigned int iwram_3001e40;
extern unsigned int __Random(void);
extern void __Func_8092950(int, int);

void OvlFunc_926_200a5b8(void)
{
    struct Actor *actor;
    struct FuchinEffectDataView data;

    actor = (struct Actor *)__MapActor_GetActor(0);
    data.b = 7;
    if ((((__Random() * 7) >> 16) & 7) == 0) {
        data.b = 5;
    }
    data.pad8 = 0xb333;
    data.padc = 0xcccc;
    OvlFunc_common0_10c(
        actor->pos.x + ((8 - (iwram_3001e40 & 0xf)) << 16),
        actor->pos.y + (0xc0 << 13),
        actor->pos.z,
        0,
        -(((__Random() * 8) >> 16) * 0x3333),
        0,
        0x90 << 12,
        &data);
    if (iwram_3001e40 & 1) {
        __Func_8092950(0, 0xf);
    } else {
        __Func_8092950(0, 1);
    }
}

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
    __CutsceneStart();
    API_MapActor_SetSpeed(0, 0x28000, 0x14000);
    __MapActor_TravelBy(0, param_1, param_2);
    __MapActor_Jump(0, 4, 0);
    __MapActor_SetAnim(0, 7);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 6);
    __CutsceneEnd();
}

extern void OvlFunc_926_200a5b8(void);
extern void __Func_8092950(int, int);

void OvlFunc_926_200a6d8(void) {
    void *actor;

    API_CutsceneStart();
    API_StartTask(OvlFunc_926_200a5b8, 0xc8 << 4);
    API_MapActor_SetSpeed(0, 0x3333, 0x1999);
    *(int *)(*(int *)iwram_3001ebc + (0xe4 << 1)) = 0x3c;
    API_MapTransitionOut();
    API_PlaySound(0x9a);
    API_MapActor_SetAnim(0, 2);
    API_MapActor_TravelBy(0, 0, -6);
    API_MapActor_WaitMovement(0);
    __Func_8092950(0, 0xf);
    actor = __MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    API_StopTask(OvlFunc_926_200a5b8);
    API_WaitMapTransition();
    API_Func_8091e9c(3);
    API_CutsceneEnd();
}


void OvlFunc_926_200a764(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(1);
}

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_943__0200c764[17];
extern unsigned char *iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void OvlFunc_926_200a778(void)
{
    unsigned char *actor;

    __CutsceneStart();
    __PlaySound(0xbc);
    __Func_8010560(gScript_943__0200c764, 0x4d, 8);
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    *(unsigned int *)(*(int *)iwram_3001ebc + 0x1c0) = 0x100;
    __MapActor_SetAnim(0, 2);
    API_MapActor_TravelBy(0, 0, -16);
    __CutsceneWait(0x10);
    __Func_8091e9c(2);
    __CutsceneEnd();
}


void OvlFunc_926_200a7ec(void)
{
    extern unsigned char _MSG_17e0[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern unsigned char *__MapActor_GetActor(int);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    int choice2;
    int choice4;
    unsigned char *actor;

    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    API_MapActor_TravelToAnim(0, 0xa8, 0x1f8);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x100;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_MapActor_WaitMovement(0);
    API_CutsceneWait(20);
    API_Func_809259c(8, 2);
    API_MapActor_Surprise(8, 0x102);
    API_CutsceneWait(0x3c);
    actor = __MapActor_GetActor(8);
    actor += 0x5b;
    *actor = 0;
    API_PlaySound(0x98);
    actor = __MapActor_GetActor(8);
    *(int *)(actor + 0x28) = 0x80000;
    API_MapActor_SetAnim(8, 1);
    API_MessageID(0x17be);
    API_ActorMessage_Wait(8, 0, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(0, 0x101, 0x3c);
    __ShowActorMessage_NoWait(8, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(8, 0, 20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 2);
    } else {
        API_CutsceneWait(10);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage_Wait(8, 0, 20);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(8, 0, 20);
    }
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(0, 0x101, 0x3c);
    __ShowActorMessage_NoWait(8, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 1) {
        API_CutsceneWait(10);
        API_MapActor_Emote(8, 0x102, 0x3c);
        API_MessageID(0x17c8);
        __ShowActorMessage_NoWait(8, 0);
        do {
            if (__Func_8091c7c(0, 0) != 1)
                break;
            API_CutsceneWait(10);
            API_MapActor_Emote(8, 0x102, 0x3c);
            API_MessageID((int)_MSG_17e0);
            __ShowActorMessage_NoWait(8, 0);
        } while (1);
    }
    API_MessageID(0x17c9);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(8, 0);
    choice4 = __Func_8091c7c(0, 0);
    if (choice4 == 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(8, 0, 20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(10);
        API_Func_80925cc(8, 2);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage_Wait(8, 0, 20);
    }
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(8, 5);
    API_SetFlag(0x893);
    API_CutsceneEnd();
}

static inline void FuchinWriteFlags(unsigned char *address, int value)
{
    *address = value;
}

void OvlFunc_926_200aad0(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    /* The callee returns its saved dialogue choice in r0. */
    extern int __Func_8093054(int, int);
    extern void __LearnInnateMove(unsigned int, unsigned int);
    extern unsigned char * __MapActor_GetActor(int);
    extern void OvlFunc_926_200c1ec(void);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    unsigned char *actor;

    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    API_MapActor_TravelToAnim(0, 0x1d8, 0x218);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_MapActor_WaitMovement(0);
    API_Func_8092adc(9, 0, 20);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_MessageID(0x1969);
    API_ActorMessage_Wait(9, 0, 20);
    API_Func_8092adc(0, 0x8000, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(30);
    API_Func_8092adc(8, 0x4000, 30);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_8092adc(0, 0xc000, 20);
    API_Func_80925cc(0, 1);
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0xd000, 0);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(3, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    API_MapActor_SetSpeed(1, 0x8000, 0x4000);
    API_MapActor_SetSpeed(2, 0x8000, 0x4000);
    API_MapActor_SetSpeed(3, 0x8000, 0x4000);
    API_MapActor_TravelToAnim(0, 0x1d0, 0x1f8);
    API_MapActor_TravelToAnim(2, 0x1e0, 0x1f8);
    API_MapActor_TravelToAnim(1, 0x1f0, 0x1f0);
    API_MapActor_TravelToAnim(3, 0x1c0, 0x1f0);
    API_MapActor_WaitMovement(0);
    API_MapActor_WaitMovement(2);
    API_MapActor_WaitMovement(3);
    API_Func_8092adc(3, 0xe000, 0);
    API_MapActor_WaitMovement(1);
    API_Func_8092adc(1, 0xa000, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_Func_8092adc(1, 0x5000, 20);
    __Func_8093054(1, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_8092adc(1, 0xa000, 20);
    API_MapActor_Emote(3, 0x100, 0x3c);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(2, 0x100, 0x3c);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_Func_8092adc(8, 0x3000, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(3, 0x2000, 0);
    API_Func_809259c(2, 2);
    API_MapActor_Surprise(2, 0x102);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xa000, 0);
    API_Func_8092adc(3, 0xe000, 0);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_TurnToFaceActor(0, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 30);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(8, 0x5000, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_8092adc(0, 0xe000, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_CutsceneWait(30);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xa000, 20);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_MapActor_Face(8, 2, 0);
    API_CutsceneWait(10);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Face(0, 2, 0);
    API_MapActor_Face(1, 2, 0);
    API_MapActor_Face(3, 2, 0);
    API_MapActor_Emote(2, 0x102, 0x3c);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    API_Func_809259c(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_Emote(8, 0x100, 0x3c);
    API_MapActor_Face(8, 1, 0);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(2, 0x100, 0x3c);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_Face(8, 1, 0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xa000, 0);
    API_Func_8092adc(3, 0xe000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_809259c(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(8, 0x5000, 20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(2, 2);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(1, 0x103, 0);
    API_Func_809259c(1, 2);
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0x3c);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_Emote(8, 0x102, 0);
    API_Func_809259c(8, 1);
    API_CutsceneWait(0x3c);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_Func_809259c(2, 1);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(1, 0x101, 0x3c);
    API_Func_8092adc(1, 0x5000, 20);
    __Func_8093054(1, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(2, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_Func_8092adc(1, 0xa000, 20);
    API_Func_8092adc(8, 0xc000, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(8, 0x4000, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(2, 2);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_MapActor_Surprise(2, 0x102);
    API_MapActor_Surprise(3, 0x102);
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(8, 0x5000, 20);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_Face(0, 1, 0);
    API_MapActor_Face(2, 1, 0);
    API_MapActor_Face(3, 1, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xd000, 0);
    API_CutsceneWait(20);
    __Func_8093054(8, 0);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_MapActor_Emote(2, 0x102, 0);
    API_MapActor_Emote(3, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(1, 0x6000, 20);
    __Func_8093054(1, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(3, 0x2000, 20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(1, 0xa000, 0);
    API_Func_8092adc(3, 0xe000, 30);
    API_Func_8092adc(8, 0, 20);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_ActorMessage_Wait(2, 0, 20);
    API_Func_8092adc(8, 0xc000, 20);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(2, 0x8000, 0);
    API_Func_8092adc(3, 0x2000, 0);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xa000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xe000, 0);
    API_CutsceneWait(30);
    API_Func_8092adc(8, 0x4000, 20);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetPos(10, 0x1d80000, 0x2600000);
    API_ActorMessage_Wait(10, 0, 20);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_Emote(2, 0x100, 0);
    API_MapActor_Emote(3, 0x100, 0);
    API_MapActor_Emote(8, 0x100, 0);
    API_MapActor_Emote(9, 0x100, 0);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(2, 0x4000, 0);
    API_Func_8092adc(3, 0x4000, 0);
    API_Func_8092adc(9, 0, 0);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(10, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(10, 0x1d8, 0x218);
    API_MapActor_Emote(8, 0x101, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_8092adc(2, 0xc000, 0x28);
    API_MapActor_TravelToAnimWait(2, 0x1e8, 0x200);
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0x6000, 20);
    API_Func_8092adc(0, 0, 30);
    API_MapActor_TravelToAnimWait(0, 0x1c8, 0x200);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x2000, 20);
    API_Func_80925cc(10, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(10, 0, 20);
    API_MapActor_Emote(8, 0x101, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_809259c(10, 2);
    API_MapActor_Surprise(10, 0x102);
    API_CutsceneWait(0x3c);
    API_ActorMessage_Wait(10, 0, 20);
    API_MapActor_Emote(8, 0x101, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(10, 0x100, 0x3c);
    API_ActorMessage_Wait(10, 0, 20);
    API_Func_809259c(8, 1);
    API_MapActor_Emote(8, 0x100, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_8092adc(0, 0xe000, 0);
    API_Func_8092adc(1, 0xa000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_Func_8092adc(3, 0xe000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(10, 0, 20);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(8, 0x101, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_809259c(17, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(10, 0, 20);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_Emote(8, 0x100, 30);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_CutsceneWait(2);
    API_MapActor_SetAnim(2, 3);
    API_CutsceneWait(1);
    API_MapActor_SetAnim(3, 3);
    API_CutsceneWait(5);
    API_MapActor_DoAnim(1, 3);
    API_MapActor_Face(8, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetSpeed(10, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(10, 0x1d8, 0x1f8);
    API_CutsceneWait(20);
    API_Func_809259c(10, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(10, 0, 20);
    API_MapActor_Face(8, 10, 0);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(2, 0x6000, 0);
    API_Func_8092adc(3, 0x2000, 0);
    API_MapActor_WaitMovement(8);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_TravelToAnim(10, 0x1d8, 0x238);
    API_MapActor_TravelToAnimWait(8, 0x1d8, 0x218);
    API_Func_80925cc(1, 2);
    API_MapActor_WaitMovement(10);
    API_ActorMessage_Wait(1, 0, 20);
    API_Func_809259c(8, 2);
    API_MapActor_Emote(8, 0x102, 0x3c);
    API_Func_8092adc(10, 0xd000, 0);
    API_Func_8092adc(8, 0xd000, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(2, 2);
    API_Func_80925cc(3, 2);
    API_MapActor_TravelToAnimWait(8, 0x1d8, 0x200);
    API_Func_8092adc(8, 0, 0);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(2, 0x8000, 0);
    API_Func_8092adc(9, 0xd000, 20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(20);
    actor = __MapActor_GetActor(0);
    /* Update the movement flag on the freshly fetched player actor. */
    actor += 0x5a;
    *actor = (0xfe & *actor);
    API_MapActor_TravelToAnimWait(0, 0x1c0, 0x200);
    API_CutsceneWait(1);
    actor = __MapActor_GetActor(0);
    /* Update the movement flag on the freshly fetched player actor. */
    actor += 0x5a;
    FuchinWriteFlags(actor, 1 | *actor);
    API_CutsceneWait(20);
    OvlFunc_926_200c1ec();
    API_CutsceneWait(0x3c);
    __LearnInnateMove(2, 0x90);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(2, 0x6000, 0);
    API_Func_8092adc(3, 0x2000, 0);
    API_Func_8092adc(9, 0x3000, 0);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnimWait(8, 0x1d8, 0x228);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(8, 0xd000, 20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetSpeed(8, 0x8000, 0x4000);
    API_MapActor_TravelToAnimWait(8, 0x1e0, 0x21c);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    API_MapActor_TravelToAnim(8, 0x1d8, 0x260);
    API_MapActor_TravelToAnim(9, 0x1d8, 0x220);
    API_MapActor_TravelToAnimWait(10, 0x1d8, 0x260);
    API_MapActor_WaitMovement(9);
    API_MapActor_TravelToAnim(9, 0x1d8, 0x260);
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_WaitMovement(8);
    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_WaitMovement(9);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_TravelToAnimWait(2, 0x1e8, 0x208);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(20);
    API_Func_8092adc(3, 0x2000, 20);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(2, 0xa000, 20);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_Emote(3, 0x105, 0x3c);
    API_Func_80925cc(1, 1);
    API_Func_8092adc(1, 0x6000, 20);
    __Func_8093054(1, 0);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0x8000, 0);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0x3c);
    API_MapActor_DoAnim(3, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0x3c);
    __ShowActorMessage_NoWait(3, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(1, 0, 20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(20);
        API_ActorMessage_Wait(3, 0, 20);
    }
    API_Func_80925cc(1, 1);
    API_ActorMessage_Wait(1, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnim(1, 0x1c0, 0x200);
    API_MapActor_TravelToAnimWait(3, 0x1c0, 0x200);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 2, 20);
    API_CutsceneWait(30);
    API_MapActor_Face(2, 0, 20);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_Emote(0, 0x102, 0x3c);
    API_Func_809259c(2, 2);
    API_MapActor_Surprise(2, 0x102);
    API_CutsceneWait(0x3c);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(2, 0, 20);
    API_MapActor_TravelToAnimWait(2, 0x1c0, 0x200);
    API_MapActor_SetPos(2, 0, 0);
    API_CutsceneEnd();
    API_SetFlag(0x895);
}
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

extern unsigned char L51d8[] __asm__(".Lm926_51d8");

struct Effect926Data
{
  int flag;
  char pad0[12];
  int a;
  int b;
  short c;
  void *d;
  char pad1[8];
};

void OvlFunc_926_200c140(void)
{
  struct Actor *actor;
  unsigned int i;
  struct Effect926Data data;

  actor = (struct Actor *)__MapActor_GetActor(8);
  data.flag = 1;
  data.c = 0x119;
  data.d = L51d8;
  data.a = 0x38000;
  data.b = 0x18000;
  i = 0;
  do
  {
    __CutsceneWait(10);
    if ((i & 1) != 0)
    {
      __PlaySound(0x82);
    }
    i = i + 1;
    OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z - 0x180000, 0,
                         0x9999, 0, 0x360001, &data);
  } while (i < 8);
  __CutsceneWait(0x3c);
}

extern unsigned int iwram_3001e40;
extern void __Func_80929d8(struct Actor *actor, int val);

void OvlFunc_926_200c1c4(struct Actor *actor) {
    unsigned int v = (iwram_3001e40 >> 1) & 1;

    if (v) {
        __Func_80929d8(actor, 0xa);
    } else {
        __Func_80929d8(actor, 9);
    }
}

INCLUDE_ASM("asm/maps/fuchin_temple/fuchin_temple_data.s");
void __Func_8091220(int, int);
void __Func_8091200(int, int);
void __Func_8091254(int);
unsigned int __Random(void);
void __Func_8092950(int, int);

void OvlFunc_926_200c1ec(void)
{
    struct FuchinEffectDataView data;
    struct Actor *actor;
    unsigned int r7;
    int x;
    int y;
    int z_offset;

    __PlaySound(0x83);
    ((struct Actor *)__MapActor_GetActor(8))->update = (actorfun_t *)OvlFunc_926_200c1c4;
    __CutsceneWait(0x28);
    __Func_8091220(0x10000, 0);
    __Func_8091200(0x205c54, 1);
    __Func_8091254(0x3c);
    __CutsceneWait(0x28);
    __PlaySound(0x83);
    ((struct Actor *)__MapActor_GetActor(2))->update = (actorfun_t *)OvlFunc_926_200c1c4;
    __CutsceneWait(0x78);
    actor = (struct Actor *)__MapActor_GetActor(8);

    data.a = 1;
    data.b = 2;
    data.f = 0x11d;

    for (r7 = 0; r7 <= 0x3f; r7++) {
        if ((r7 & 3) == 0) {
            __PlaySound(0xf6);
        }
        x = actor->pos.x + ((((__Random() * 3) << 4) >> 16) << 16) - 0xc0000;
        y = actor->pos.y + (((__Random() << 5) >> 16) << 16) - 0x100000;
        z_offset = ((((__Random() * 4) >> 16) << 15) + 0x8000);
        OvlFunc_common0_10c(x, y, actor->pos.z, 0, z_offset, 0, 0x130000, &data);
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
