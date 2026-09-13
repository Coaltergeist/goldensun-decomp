/* rom_7ca63c (overlay file 944): consolidated TU — tolbi_bound_ship_top map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/exports.s");

/* __Random unsigned so `(__Random(..) << 6) >> 16` is a logical shift (empty
 * parens: fragments call it with 0 and 1 args). */
extern unsigned int __Random();




extern int *iwram_3001e70;
extern int Lm944_1938[] __asm__(".Lm944_1938");
extern int Lm944_1930[] __asm__(".Lm944_1930");

unsigned int OvlFunc_944_2008030(int *p)
{
    int *src;
    int r1;
    int r2;
    unsigned char *r2_obj;

    src = *iwram_3001e70;
    r1 = *src++;
    r2 = *src;

    *(int *)((char *)p + 8) = Lm944_1930[0] + (r1 - Lm944_1938[0]);
    *(int *)((char *)p + 0xc) = Lm944_1930[1] + (r2 - Lm944_1938[1]) / 2;

    r2_obj = *(unsigned char **)((char *)p + 0x50);
    *(short *)(r2_obj + 0x1e) += 0x600;

    return 0;
}


unsigned int OvlFunc_944_200807c(unsigned char *arg0)
{
    unsigned int v;
    unsigned int t;

    v = (__Random((unsigned int)arg0) << 6) >> 16;
    if (v == 6) {
        t = 0xd0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    } else if (v == 9) {
        t = 0xb0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    }
    return 1;
}

void OvlFunc_944_20080a4(int *p)
{
    int v;

    v = *(int *)((char *)p + 0x18);
    if (v < 0x10000) {
        *(int *)((char *)p + 0x18) = v + 0xa0;
        *(int *)((char *)p + 0x1c) = *(int *)((char *)p + 0x1c) + 0xa0;
    }
}

unsigned int OvlFunc_944_20080c0(int *p)
{
    short *ptr;
    int s;
    int r2;

    ptr = (short *)((char *)p + 0x64);
    if (*ptr == 9) {
        *(int *)((char *)p + 0x4c) = 0;
    } else if (*ptr != 0) {
        *(int *)((char *)p + 0x4c) -= (__Random() << 11) >> 16;
        if (*(int *)((char *)p + 0x4c) < (int)0xffff4000) {
            s = 0;
            goto set_s64;
        }
    } else {
        *(int *)((char *)p + 0x4c) += (__Random() << 11) >> 16;
        if (*(int *)((char *)p + 0x4c) > (0xc0 << 8)) {
            s = 1;
        set_s64:
            *ptr = s;
        }
    }

    r2 = *(int *)((char *)p + 8);
    if ((unsigned int)(r2 + 0xffd7ffff) <= 0x117fffe) {
        *(int *)((char *)p + 8) = r2 + *(int *)((char *)p + 0x4c);
    }

    ptr = (short *)((char *)p + 0x66);
    if (*ptr == 9) {
        *(int *)((char *)p + 0xc) = 0;
    } else if (*ptr != 0) {
        *(int *)((char *)p + 0xc) -= ((__Random() * 3) << 14) >> 16;
        if (*(int *)((char *)p + 0xc) < 0) {
            s = 0;
            goto set_s66;
        }
    } else {
        *(int *)((char *)p + 0xc) += ((__Random() * 3) << 14) >> 16;
        if (*(int *)((char *)p + 0xc) > (0x80 << 13)) {
            s = 1;
        set_s66:
            *ptr = s;
        }
    }

    return 1;
}

unsigned int OvlFunc_944_2008180(int *p)
{
	unsigned char *r1;
	unsigned char v3;
	int r3;

	r1 = *(unsigned char **)((char *)p + 0x50);
	v3 = *(r1 + 9);
	v3 |= 0xc;
	*(r1 + 9) = v3;

	{
		int v = 0x80;
		v <<= 10;
		*(int *)((char *)p + 0x30) = v;
	}
	{
		int v = 0x80;
		v <<= 9;
		*(int *)((char *)p + 0x34) = v;
	}

	r3 = *(int *)((char *)p + 0x18);
	if (r3 > (0x80 << 5)) {
		r3 += 0xfffffc00;
		*(int *)((char *)p + 0x18) = r3;
		*(int *)((char *)p + 0x1c) += 0xfffffc00;
	} else {
		*(int *)((char *)p + 8) = 0;
		*(int *)((char *)p + 0xc) = 0;
		*(int *)((char *)p + 0x10) = 0;
		*(int *)((char *)p + 0x24) = 0;
		*(int *)((char *)p + 0x28) = 0;
		*(int *)((char *)p + 0x2c) = 0;
	}

	return 1;
}

extern unsigned char gOvl_020095c0[];

void *TolbiBoundShipTop_GetEntrances(void) {
    return (void *)gOvl_020095c0;
}
extern unsigned char gOvl_02009680[];

void *TolbiBoundShipTop_GetSpecialExits(void) {
    return (void *)gOvl_02009680;
}
extern unsigned char gScript_928__020096a0[];

void *TolbiBoundShipTop_GetExits(void) {
    return (void *)gScript_928__020096a0;
}
extern unsigned char gOvl_020096c4[];

void *TolbiBoundShipTop_GetActors(void) {
    return (void *)gOvl_020096c4;
}
extern unsigned char gOvl_0200988c[];

void *TolbiBoundShipTop_GetEvents(void) {
    return (void *)gOvl_0200988c;
}

extern void __Func_8093e28(void);

void OvlFunc_944_20081f0(void) {
    __Func_8093e28();
}

void OvlFunc_944_20081fc(void)
{
  if ((__GetFlag(0x923) != 0) || (__GetFlag(0x922) != 0))
  {
    __CutsceneStart();
 do { __Func_808f1c0(0xe8, 3); __Func_8091a58(0xe8, 0); __SetFlag(0x924); } while (0);
    __CutsceneEnd();
  }
}

extern void OvlFunc_944_200840c(void);
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char iwram_3001ebc[];
extern short gState[];

extern unsigned char Lm944_1940[] __asm__(".Lm944_1940");
extern unsigned char Lm944_1928[] __asm__(".Lm944_1928");

extern unsigned char Lconst_6f[] __asm__(".Lconst_6f");
__asm__(".equ .Lconst_6f, 0x6f");

extern void OvlFunc_944_20090a0(void);
extern void OvlFunc_944_2008468(void);
extern void OvlFunc_944_2008564(void);
extern void OvlFunc_944_20087b0(void);
extern void OvlFunc_944_2008af8(void);
extern void OvlFunc_944_2008e78(void);
extern unsigned int OvlFunc_944_2009130(void);

void __SetFlag(int);
int __GetFlag(int);
void __StartTask(void *, int);
void __MapActor_SetPos(int, int, int);
void *__MapActor_GetActor(int);
void __CutsceneStart(void);
void __Func_8093fa0(void);
void __Func_80933f8(int, int, int, int);
void __WaitFrames(int);
void __SetCameraTarget(int, int);
void __Func_800fe9c(void);
void __CutsceneEnd(void);
void __ActorMessage_Wait(int, int, int);
void __MapTransitionOut(void);
void __WaitMapTransition(void);
void __Func_8091e9c(int);
void __MapTransitionIn(void);
void __PlaySound(int);
void __Func_8092b08(int, int);
void __Func_8092950(int, int);
void __Actor_SetSpriteFlags(void *, int);
void __MapActor_SetBehavior(int, void *);
void __Actor_WaitMovement(void *);
void __Actor_TravelTo(void *, int, int, int);

static inline void MapActor_SetPos(int actor, int x, int y) {
    __MapActor_SetPos(actor, x << 16, y << 17);
}

static inline void Func_80933f8(int a, int b, int c, int d) {
    __Func_80933f8(-a, -b, -c, d);
}

static inline short get_state(int off) {
    return *(short *)((char *)gState + (off << 1));
}

unsigned int TolbiBoundShipTop_MapInit(void)
{
    void *actor;
    unsigned int *rnd_ptr;
    int a;
    unsigned int off;
    short v;

    __SetFlag(0x144);
    *(int *)((char *)*(void **)iwram_3001ebc + (0xe0 << 1)) = 0x209;

    if (__GetFlag(0x927) != 0 || __GetFlag(0x928) != 0) {
        if (__GetFlag(0x93e) == 0 && __GetFlag(0x8a0) == 0) {
            rnd_ptr = (unsigned int *)Lm944_1940;
            *rnd_ptr = (unsigned short)__Random();
            rnd_ptr = (unsigned int *)Lm944_1928;
            *rnd_ptr = (unsigned short)__Random();
            __StartTask(OvlFunc_944_20090a0, 0xc8 << 4);
        }
    }

    if (__GetFlag(0x925) != 0 && __GetFlag(0x93e) == 0) {
        MapActor_SetPos(8, 0xa4, 0xa4);
    }

    switch (get_state(0xe1)) {
    case 1:
        if (__GetFlag(0x109) == 0) {
            actor = (void *)__MapActor_GetActor(0);
            __CutsceneStart();
            __Func_8093fa0();
            *(int *)((char *)actor + 0xc) = 0xe0 << 14;
            Func_80933f8(1, 1, 1, 0);
            __WaitFrames(1);
            __SetCameraTarget(0, 0);
            __Func_800fe9c();
            __WaitFrames(1);
            __CutsceneEnd();
        }
        break;
    case 10:
        if (__GetFlag(0x928) != 0) {
            OvlFunc_944_2008468();
        } else {
            OvlFunc_944_200840c();
        }
        break;
    case 11:
        gState[0xe2] = (int)Lconst_6f;
        gState[0xe3] = 0x1e;
        OvlFunc_944_2008564();
        break;
    case 12:
        gState[0xe2] = (int)Lconst_6f;
        gState[0xe3] = 0x1e;
        OvlFunc_944_20087b0();
        break;
    case 13:
        gState[0xe2] = (int)Lconst_6f;
        gState[0xe3] = 0x1e;
        OvlFunc_944_2008af8();
        break;
    case 14:
        OvlFunc_944_2008e78();
        break;
    }

    return 0;
}

extern void OvlFunc_944_20084b0(void);

void OvlFunc_944_200840c(void)
{
  unsigned int a;
  unsigned int b;
  unsigned int h;
  unsigned int z;
  int ret;

  __CutsceneStart();

  Func_80933f8(1, 1, 1, 0);

  __WaitFrames(1);

  ret = __Func_8093554();

  z = 0;
  *(unsigned char *)(ret + 0x55) = z;

  a = 0x80;
  b = 0xa4;
  a <<= 15;
  h = 0x1410000;
  b <<= 16;
  API_Func_80933f8(b, a, h, z);

  __Func_800fe9c();

  __WaitFrames(1);

  API_MapActor_SetPos(0, 0, 0);

  OvlFunc_944_20084b0();

  __CutsceneEnd();
}

void OvlFunc_944_2008468(void)
{
    __CutsceneStart();
    API_MapActor_SetPos(0, 0xa40000, 0x1410000);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __WaitFrames(1);
    __Func_800fe9c();
    __WaitFrames(1);
    OvlFunc_944_20084b0();
    __CutsceneEnd();
}
void OvlFunc_944_20084b0(void)
{
    int actor = 8;
    *(int *)((char *)*(void **)iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) + 0x42;

    __MapTransitionIn();
    __WaitMapTransition();
    API_CutsceneWait(0x14);

    API_MapActor_SetSpeed(actor, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(actor, 0xa4, 0x141);

    API_Func_8092adc(actor, 0xd000, 0x28);
    API_Func_8092adc(actor, 0xb000, 0x28);
    API_Func_8092adc(actor, 0xd000, 0x28);
    API_Func_8092adc(actor, 0x3000, 10);

    API_MapActor_TravelToAnimWait(actor, 0xa4, 0x14e);
    API_MapActor_Jump(actor, 4, 0x28);
    API_Func_809259c(actor, 2);

    __MessageID(0x1e3a);
    __ActorMessage_Wait(actor, 0, 0x14);

    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(10);
}
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd ActorCmd_ARRAY_944__02009314[];
extern ActorCmd gScript_944__0200939c[];
extern unsigned char Lm944_16f4[] __asm__(".Lm944_16f4");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/OvlFunc_944_2008564.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/OvlFunc_944_20087b0.s");

extern ActorCmd gScript_944__020093a4[2];

void OvlFunc_944_2008a84(unsigned int arg0)
{
    unsigned char *r6;

    r6 = (unsigned char *)__MapActor_GetActor(arg0);
    __Func_8092b08(arg0, 1);
    r6[0x55] = 0;

    *(unsigned short *)(r6 + 0x64) = (unsigned int)__Random() >> 15;
    *(unsigned short *)(r6 + 0x66) = (unsigned int)__Random() >> 15;

    *(unsigned int *)(r6 + 0xc) = (((unsigned int)__Random() << 2) >> 16 << 16) + 0x60000;

    *(unsigned int *)(r6 + 0x4c) = (((unsigned int)__Random() * 0x6000) >> 16) - 0x3000;

    *(unsigned int *)(r6 + 0x18) = 0x14000;
    *(unsigned int *)(r6 + 0x1c) = 0x14000;

    __MapActor_SetBehavior(arg0, gScript_944__020093a4);
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/OvlFunc_944_2008af8.s");
extern unsigned char gOvl_0200976c[];
extern ActorCmd gScript_944__0200939c[];
extern ActorCmd gScript_944__02009450[];
extern ActorCmd gScript_944__02009480[];
extern ActorCmd gScript_944__020094b0[];
extern ActorCmd gScript_944__020094e0[];
extern ActorCmd gScript_944__02009510[];
extern ActorCmd gScript_944__02009540[];
extern ActorCmd gScript_944__02009570[];

void OvlFunc_944_2008e78(void)
{
    int off;

    __CutsceneStart();
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __LoadFieldActors(gOvl_0200976c);
    __WaitFrames(1);

    OvlFunc_944_2008a84(9);
    OvlFunc_944_2008a84(10);
    OvlFunc_944_2008a84(11);
    OvlFunc_944_2008a84(12);
    OvlFunc_944_2008a84(13);
    OvlFunc_944_2008a84(14);
    OvlFunc_944_2008a84(15);

    __MapActor_SetBehavior(8, gScript_944__0200939c);

    off = 0xe0 << 1;
    *(int *)((char *)*(void **)iwram_3001ebc + off) = 0x203;

    __MapTransitionIn();
    __WaitMapTransition();
    API_CutsceneWait(0xc8 << 1);

    __MapActor_SetIdle(9);
    __MapActor_SetIdle(10);
    __MapActor_SetIdle(11);
    __MapActor_SetIdle(12);
    __MapActor_SetIdle(13);
    __MapActor_SetIdle(14);
    __MapActor_SetIdle(15);

    API_MapActor_SetSpeed(9, 0x30000, 0x18000);
    API_MapActor_SetSpeed(10, 0x30000, 0x18000);
    API_MapActor_SetSpeed(11, 0x30000, 0x18000);
    API_MapActor_SetSpeed(12, 0x30000, 0x18000);
    API_MapActor_SetSpeed(13, 0x30000, 0x18000);
    API_MapActor_SetSpeed(14, 0x30000, 0x18000);
    API_MapActor_SetSpeed(15, 0x30000, 0x18000);

    __MapActor_SetBehavior(9, gScript_944__02009450);
    __MapActor_SetBehavior(10, gScript_944__02009480);
    __MapActor_SetBehavior(11, gScript_944__020094b0);
    __MapActor_SetBehavior(12, gScript_944__020094e0);
    __MapActor_SetBehavior(13, gScript_944__02009510);
    __MapActor_SetBehavior(14, gScript_944__02009540);
    __MapActor_SetBehavior(15, gScript_944__02009570);

    API_CutsceneWait(0x28);
    API_Func_809259c(8, 3);
    API_MapActor_Surprise(8, 0x81 << 1);
    API_CutsceneWait(0x78);
    API_Func_809259c(8, 1);
    API_MapActor_Emote(8, 0x80 << 1, 0x3c);

    API_MapActor_SetSpeed(8, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(8, 0xa4, 0x158);

    API_MapActor_Jump(8, 4, 10);
    API_MapActor_Jump(8, 6, 0x14);

    __MessageID(0x1ee4);
    __ActorMessage_Wait(8, 0, 0x14);

    *(int *)((char *)*(void **)iwram_3001ebc + off) = 0x202;

    __MapTransitionOut();
    __WaitMapTransition();

    gState[0xe2] = (int)Lconst_6f;
    gState[0xe3] = 2;

    if (OvlFunc_944_2009130() == 0xb) {
        __Func_8091e9c(0xf);
    } else {
        __Func_8091e9c(0xe);
    }

    __CutsceneEnd();
}
extern int __cos(int);
extern int __sin(int);
extern int Lm944_1924[] __asm__(".Lm944_1924");
extern int Lm944_1920[] __asm__(".Lm944_1920");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/OvlFunc_944_20090a0.s");

extern unsigned int OvlFunc_944_200915c(unsigned int);

unsigned int OvlFunc_944_2009130(void)
{
    unsigned int r6;
    unsigned int r5;

    r6 = OvlFunc_944_200915c(0);
    r6 += OvlFunc_944_200915c(2);
    r5 = OvlFunc_944_200915c(1);
    r5 += OvlFunc_944_200915c(3);
    return r6 - r5;
}

extern unsigned int Lm944_18f8[] __asm__(".Lm944_18f8");

unsigned int OvlFunc_944_200915c(unsigned int arg0)
{
    unsigned int r6 = 0;
    unsigned int r5;

    switch (arg0) {
    case 0:
        r6 = 0x92c;
        break;
    case 1:
        r6 = 0x935;
        break;
    case 2:
        r6 = 0x917;
        break;
    case 3:
        r6 = 0x990;
        break;
    }

    for (r5 = 0; r5 <= 8; r5++) {
        if (__GetFlag(r6 + r5) != 0) {
            return Lm944_18f8[r5];
        }
    }

    return 0;
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/tolbi_bound_ship_top_data.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/imports.s");
