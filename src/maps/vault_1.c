/* rom_793768 (overlay file 898): consolidated TU — vault_1 map overlay. */

#include "nonmatching.h"

extern void OvlFunc_898_200973c();
extern void OvlFunc_898_200890c();
extern void __MapActor_SetAnim();
extern void __MessageID();
extern void __ActorMessage();
extern void __CutsceneWait();

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008314.s");

extern unsigned int iwram_3001e8c;
extern void OvlFunc_898_2009674(unsigned char *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);

unsigned int OvlFunc_898_20083ac(unsigned char *arg0)
{
    unsigned char *p0;
    unsigned char *p1;
    unsigned int actor;
    int iVar3;
    int iVar4;

    p0 = (unsigned char *)iwram_3001e8c;
    p1 = *(unsigned char **)((char *)&iwram_3001e8c + 0x30);
    iVar4 = 0;
    iVar3 = 0x12;
    if (*(int *)(arg0 + 0x38) == (0x80 << 24)) {
        return 0;
    }
    actor = __MapActor_GetActor(0);
    if ((*(short *)(p1 + 0x178) != 0) || (*(unsigned char *)(p0 + 0xea4) != 0)) {
        iVar3 = 0x1a;
        iVar4 = 1;
    }
    OvlFunc_898_2009674(arg0, actor, iVar3, iVar4);
    return 0;
}

extern unsigned char gOvl_02009f5c[];

unsigned int Vault1_GetEntrances(void) {
    return (unsigned int)gOvl_02009f5c;
}

unsigned int Vault1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a094[];

unsigned int Vault1_GetExits(void) {
    return (unsigned int)gOvl_0200a094;
}

extern unsigned char L227c[] __asm__(".Lm898_227c");
extern unsigned char L20cc[] __asm__(".Lm898_20cc");

unsigned char *Vault1_GetActors(void)
{
	if (__GetFlag(0x855))
		return L227c;
	return L20cc;
}

extern unsigned int __GetUnit(unsigned int);

unsigned int OvlFunc_898_2008450(void) {
    unsigned int r0;
    unsigned int r3;
    r0 = __GetUnit(2);
    r3 = 0x8c;
    r3 = r3 << 1;
    r0 = r0 + r3;
    r0 = *(unsigned char *)r0;
    return r0;
}

extern void __Func_80bf65c(void);
extern void __Func_807a498(int, int, int, int);
extern void __PlaySound(int);
extern void __CalcStats(int);

unsigned int OvlFunc_898_2008464(void) {
    unsigned char *p;
    __Func_80bf65c();
    p = __GetUnit(2);
    if (*(unsigned int *)(p + 0xf8) & 1) {
        __Func_807a498(2, 0, 0, 0);
        __PlaySound(0x7e);
        __CalcStats(0);
        __CalcStats(2);
    }
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_20084a0.s");

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_898_20085c8(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29dc, 1);
    __CutsceneEnd();
}

extern unsigned char L2630[] __asm__(".Lm898_2630");
extern unsigned char L2414[] __asm__(".Lm898_2414");

unsigned char *Vault1_GetEvents(void)
{
    if (__GetFlag(0x855))
        return L2630;
    return L2414;
}

extern unsigned char *iwram_3001ebc;

// fakematch
void OvlFunc_898_2008614(void)
{
    unsigned short *p;
    unsigned int w;

    __CutsceneStart();
    __MessageID(0x1223);
    OvlFunc_898_200973c(9, 0, 2);
    __ShowActorMessage_NoWait(9, 0);
    if (__Func_8091c7c(0, 0) != 0) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    {
        register unsigned int rq __asm__("r0") = 9;
        __asm__ volatile ("" : : "r" (rq));
        __ActorMessage(rq, 0);
    }
    w = 0xa0;
    {
        register unsigned int rq __asm__("r0") = 9;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 7;
        __Func_8092adc(rq, w, 0);
    }
    __CutsceneEnd();
}

extern unsigned char iwram_3001ebc__a1[] __asm__("iwram_3001ebc");

void OvlFunc_898_2008674(void) {
    unsigned short *p;
    unsigned long long t;
    unsigned long long t2;

    __CutsceneStart();
    __MessageID(0x1229);
    t = 0xd;
    do {
        t = (unsigned short) t;
    } while (0);
    __MapActor_SetAnim((unsigned short) t, 1);
    OvlFunc_898_200973c(0xd, 0, 2);
    __ShowActorMessage_NoWait(0xd, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(*(unsigned char **)iwram_3001ebc__a1 + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 0xd;
    do {
        t2 = (unsigned long) t2;
    } while (0);
    __ActorMessage((unsigned long) t2, 0);
    __CutsceneEnd();
}


void OvlFunc_898_20086d0(void) {
    unsigned short *p;
    unsigned long long t;
    unsigned long v;

    __CutsceneStart();
    __MessageID(0x122f);
    OvlFunc_898_200973c(0x11, 0, 2);
    __ShowActorMessage_NoWait(0x11, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    t = 0x11;
    do { t = (unsigned long) t; } while (0);
    v = t;
    __ActorMessage(v, 0);
    __CutsceneEnd();
}

extern unsigned int iwram_3001ebc__a3 __asm__("iwram_3001ebc");

void OvlFunc_898_2008724(void)
{
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    __MessageID(0x1232);
    OvlFunc_898_200973c(0x12, 0, 2);
    __ShowActorMessage_NoWait(0x12, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc__a3 + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 0x12;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}


void OvlFunc_898_2008778(void) {
    __CutsceneStart();
    __MessageID(0x1227);
    OvlFunc_898_200890c(0xb);
    __CutsceneEnd();
}


void OvlFunc_898_2008798(void) {
    __CutsceneStart();
    __MessageID(0x122e);
    OvlFunc_898_200890c(0x10);
    __CutsceneEnd();
}


void OvlFunc_898_20087b8(void)
{
  __CutsceneStart();
  __MessageID(0x1235);
  __MapActor_SetAnim(0x13, 0);
  OvlFunc_898_200973c(0x13, 0, 2);
  __ActorMessage(0x13, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_20087ec.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_200885c.s");

extern int _MSG_12c0;

void OvlFunc_898_20088cc(void) {
    __CutsceneStart();
    __MessageID((int)&_MSG_12c0);
    OvlFunc_898_200973c(0x15, 0, 2);
    __MapActor_Emote(0x15, 0x103, 0);
    __CutsceneWait(0x1e);
    __ShowActorMessage_NoWait(0x15, 0);
    __CutsceneEnd();
}


void OvlFunc_898_200890c(int arg0)
{
  __CutsceneStart();
  __MapActor_SetAnim(arg0, 1);
  OvlFunc_898_200973c(arg0, 0, 2);
  __ActorMessage(arg0, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008938.s");

extern unsigned int iwram_3001ebc__a4 __asm__("iwram_3001ebc");

void OvlFunc_898_200897c(void)
{
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    __MessageID(0x1330);
    OvlFunc_898_200973c(8, 0, 2);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc__a4 + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 8;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}


void OvlFunc_898_20089d0(void) {
    __CutsceneStart();
    __MessageID(0x1335);
    OvlFunc_898_200890c(0xb);
    __CutsceneEnd();
}

extern int __GetFlag(int);
extern unsigned int iwram_3001ebc__a5 __asm__("iwram_3001ebc");

void OvlFunc_898_20089f0(void) {
    unsigned short *p;

    __CutsceneStart();
    __MessageID(0x1336);
    if (__GetFlag(2)) {
        p = (unsigned short *)(iwram_3001ebc__a5 + (0xec << 1));
        *p = *p + 1;
    }
    OvlFunc_898_200890c(0xc);
    __CutsceneEnd();
}


void OvlFunc_898_2008a2c(void) {
    __CutsceneStart();
    __MessageID(0x1338);
    OvlFunc_898_200890c(0xd);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008a4c.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008acc.s");

extern unsigned int iwram_3001ebc__a6 __asm__("iwram_3001ebc");

void OvlFunc_898_2008b3c(void)
{
    unsigned short *p;
    unsigned short t1;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    __MessageID(0x133c);
    t1 = 0x10;
    do { t1 = (unsigned short) t1; } while (0);
    __MapActor_SetAnim(t1, 1);
    OvlFunc_898_200973c(0x10, 0, 2);
    __ShowActorMessage_NoWait(0x10, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc__a6 + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 0x10;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}

extern unsigned int iwram_3001ebc__a7 __asm__("iwram_3001ebc");

void OvlFunc_898_2008b98(void)
{
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    __MessageID(0x133f);
    OvlFunc_898_200973c(0x12, 0, 2);
    __ShowActorMessage_NoWait(0x12, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc__a7 + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 0x12;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}


void OvlFunc_898_2008bec(void)
{
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;
    unsigned short t1;
    unsigned short t2;
    unsigned long long t3;
    unsigned long v3;

    __CutsceneStart();
    __MessageID(0x1342);
    t1 = 0x13;
    do { t1 = (unsigned short) t1; } while (0);
    __MapActor_SetAnim(t1, 0);
    t3 = 2;
    do { t3 = (unsigned long) t3; } while (0);
    v3 = t3;
    OvlFunc_898_200973c(0x13, 0, v3);
    t2 = 0x13;
    do { t2 = (unsigned short) t2; } while (0);
    __ActorMessage(t2, 0);
    __MapActor_SetAnim(0x13, 1);
    r0 = __CheckPartyItem(0xe7);
    if (r0 != -1) {
        r0 = __GetFlag(0x858);
        if (r0 == 0) {
            b = iwram_3001ebc;
            addr = (unsigned short *)(b + (0xb9 << 1));
            v = 1;
            *addr = v;
        }
    }
    __CutsceneEnd();
}

extern void __MapActor_DoAnim(int a, int b);

void OvlFunc_898_2008c54(void) {
    __CutsceneStart();
    __MessageID(0x137f);
    OvlFunc_898_200973c(0x14, 0, 2);
    __MapActor_DoAnim(0x14, 3);
    __CutsceneWait(0x14);
    __ActorMessage(0x14, 0);
    __CutsceneEnd();
}

extern void OvlFunc_898_2008938(int n);

void OvlFunc_898_2008c8c(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1239);
    } else {
        __MessageID(0x1346);
    }
    OvlFunc_898_2008938(0xb);
    __CutsceneEnd();
}


void OvlFunc_898_2008cc4(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x123b);
    } else {
        __MessageID(0x1348);
    }
    OvlFunc_898_2008938(0xd);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008cfc.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008d78.s");


void OvlFunc_898_2008dd4(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x123e);
    } else {
        __MessageID(0x134c);
    }
    OvlFunc_898_2008938(0x10);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008e0c.s");


void OvlFunc_898_2008e84(void) {
    __CutsceneStart();
    __MessageID(0x12c1);
    OvlFunc_898_2008938(0x15);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008ea4.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008ecc.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008ef4.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008f3c.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2008f64.s");

extern unsigned char L2854[] __asm__(".Lm898_2854");
extern void OvlFunc_898_2008ef4(int, int, int);

void OvlFunc_898_2008f8c(void)
{
  __PlaySound(0x9e);
 do { } while (0);
  __Func_8010560(L2854, 0x2c, 0x11);
  OvlFunc_898_2008ef4(0xd8, 0x90 << 1, 7);
}

extern unsigned char L286a[] __asm__(".Lm898_286a");
extern void __Func_8010560(unsigned char *arg0, int arg1, int arg2);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_898_2008fb4(void)
{
  unsigned int actor;
  unsigned char *sprite;
  unsigned int s1;
  unsigned int s2;

  actor = __MapActor_GetActor(0);
  sprite = *(unsigned char **)(actor + 0x50);
  __PlaySound(0x9e);
  __Func_8010560(L286a, 0x36, 0xd);
  s1 = 0x17;
  s2 = 0xc;
  __Func_8010704(0x21, 0x14, 1, 3, s1, s2);
  *(unsigned char *)(actor + 0x23) &= 0xfe;
  *(sprite + 9) |= 0xc;
  OvlFunc_898_2008ef4(0xbc << 1, 0xe0, 8);
}

extern unsigned char L2880[] __asm__(".Lm898_2880");

void OvlFunc_898_2009010(void)
{
  unsigned char *actor;
  unsigned char *sprite;
  int s1;
  int s2;

  actor = (unsigned char *) __MapActor_GetActor(0);
  sprite = *(unsigned char **)(actor + 0x50);
  __PlaySound(0x9e);
  __Func_8010560(L2880, 0x31, 0xa);
  s1 = 0x12;
  s2 = 0xa;
  __Func_8010704(0x21, 0x14, 1, 3, s1, s2);
  actor += 0x23;
  *actor = *actor & 0xfe;
  sprite[9] = sprite[9] | 0xc;
  OvlFunc_898_2008ef4(0x94 << 1, 0xb0, 9);
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_200906c.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2009090.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_200913c.s");


void OvlFunc_898_2009198(void) {
    __PlaySound(0x7b);
    OvlFunc_898_2008ef4(0x98, 0x84 << 1, 0xd);
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_20091b0.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2009238.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_20092c0.s");
INCLUDE_ASM("asm/maps/vault_1/Vault1_MapInit.s");

extern int Func_8000948(int);

int OvlFunc_898_2009638(int *a, int *b)
{
  int dx;
  int dy;
  int dz;
  int mag;
  int new_var;
  int (*fp)(int);
  dx = ((*(a++)) - (*(b++))) >> 16;
  if (1)
  {
    dy = ((*(a++)) - (*(b++))) >> 16;
    dz = ((*a) - (*b)) >> 16;
    mag = ((dx * dx) + ((float) (dy * dy))) + (dz * dz);
  }
  new_var = ((dx * dx) + (dy * dy)) + (dz * dz);
  fp = Func_8000948;
  return fp(new_var);
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2009674.s");


void OvlFunc_898_2009724(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern void __MapActor_TurnToFaceActor(unsigned int arg0, unsigned int arg1, unsigned int arg2);

void OvlFunc_898_200973c(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__MapActor_TurnToFaceActor(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_2009754.s");
INCLUDE_ASM("asm/maps/vault_1/OvlFunc_898_20097ac.s");
