/* rom_7f2f14 (overlay file 968): consolidated TU — venus_lighthouse map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/venus_lighthouse/exports.s");

/* auto void-veneer protos (add_void_protos.py) */
extern void __Actor_SetSpriteFlags();
extern void __CutsceneEnd();
extern void __CutsceneStart();
extern void __CutsceneWait();
extern void __Func_8010704();
extern void __Func_801776c();
extern void __Func_80929d8();
extern void __Func_8092b08();
extern void __MapActor_SetAnim();






extern void OvlFunc_968_200999c();
extern void OvlFunc_968_20099c0();
extern void OvlFunc_968_200894c();

void OvlFunc_968_2008030(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    *(unsigned char *)(r5 + 0x55) = 0;
    *(unsigned char *)(r5 + 0x59) = 8;
    r6 = arg1;
    __Actor_SetSpriteFlags(r5, 0);
    __Func_80929d8(r5, r6);
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008058.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008098.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20080e0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008118.s");

extern int Func_8000948(int);

int OvlFunc_968_20082f0(int *a, int *b)
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

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200832c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008374.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20084f4.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008558.s");
extern void __Func_80929d8(unsigned int actor, int x);

unsigned int OvlFunc_968_2008594(unsigned int arg0) {
    __Func_80929d8(arg0, *(unsigned short *)(arg0 + 0x64) & 0xf);
    return 0;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20085ac.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20085e4.s");

extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_968_2008690(void) {
    int x;
    __Actor_SetSpriteFlags(x, 0);
    return 0;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20086a0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008754.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20087d8.s");

extern unsigned int __MapActor_GetActor(int id);
extern unsigned int *iwram_3001ee0;

void OvlFunc_968_20088a0(void) {
    unsigned int v;

    v = __MapActor_GetActor(0);
    iwram_3001ee0[6] = v;
}

extern unsigned int iwram_3001ee0__a1 __asm__("iwram_3001ee0");

void OvlFunc_968_20088b8(void) {
    unsigned int *ptr;

    ptr = (unsigned int *)iwram_3001ee0__a1;
    ptr[6] = 0;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20088c8.s");

extern void __WaitFrames(unsigned int a);

void OvlFunc_968_2008910(unsigned int arg0, unsigned int arg1)
{
  int new_var;
  int *r6;
  int *r0p;
  int tmp;
  r6 = (int *) __MapActor_GetActor(arg0);
  r0p = (int *) __MapActor_GetActor(arg1);
  if (r6[4] <= r0p[4])
  {
    ;
    {
      int t2 = r6[2];
      r6[2] = r0p[2];
      r0p[2] = t2;
    }
    tmp = r0p[3];
    {
      int t2 = r6[3];
      r6[3] = tmp;
      r0p[3] = t2;
    }
    new_var = r0p[4];
    tmp = new_var;
    {
      int t2 = r6[4];
      r6[4] = tmp;
      r0p[4] = t2;
    }
    __WaitFrames(1);
  }
}

void OvlFunc_968_200894c(arg0) unsigned int * arg0;
{
    int r5;
    r5 = 0x3c;
    while (r5 != 0) {
        __WaitFrames(1);
        if (*(unsigned int *)((char *)arg0 + 0x28) == 0)
            break;
        r5--;
    }
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200896c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20089c8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008b08.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008b98.s");

extern void __Actor_SetAnim(struct Actor *actor, int anim);
extern void __Actor_SetScript(struct Actor *actor, void *script);
extern void OvlFunc_968_2008b98(void);

struct Actor *OvlFunc_968_2008c5c(unsigned int param_1, unsigned int param_2, void *param_3) {
    struct Actor *actor;
    unsigned int y;

    y = param_2 << 16;
    actor = __CreateActor(0x11c, param_1 << 16, 0, y);
    if (actor == 0) {
        return 0;
    }
    actor->speed = 0x10000;
    actor->accel = 0x10000;
    __Actor_SetSpriteFlags(actor, 0);
    __Actor_SetAnim(actor, 7);
    actor->__unk55 = 0;
    actor->pos.y = 0;
    actor->__unk59 = 0;
    actor->flags = 2;
    actor->update = (void *)OvlFunc_968_2008b98;
    actor->__unk63 = 0;
    __Actor_SetScript(actor, param_3);
    return actor;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008cc8.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_b5[], _EVENT_b7[], _EVENT_b8[], _EVENT_b9[], _EVENT_ba[];
extern unsigned char Lm968_5d68[] __asm__(".Lm968_5d68");
extern unsigned char Lm968_6020[] __asm__(".Lm968_6020");
extern unsigned char Lm968_6230[] __asm__(".Lm968_6230");
extern unsigned char Lm968_6350[] __asm__(".Lm968_6350");
extern unsigned char Lm968_6548[] __asm__(".Lm968_6548");
extern unsigned char Lm968_5dc8[] __asm__(".Lm968_5dc8");

void *VenusLighthouse_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b5) return Lm968_5d68;
    if (ev == (int)_EVENT_b7) return Lm968_6020;
    if (ev == (int)_EVENT_b8) return Lm968_6230;
    if (ev == (int)_EVENT_b9) return Lm968_6350;
    if (ev == (int)_EVENT_ba) return Lm968_6548;
    return Lm968_5dc8;
}


int VenusLighthouse_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200e740[];

unsigned int VenusLighthouse_GetExits(void) {
    return (unsigned int)gOvl_0200e740;
}

extern unsigned char _EVENT_b6[];
extern unsigned char gScript_945__0200e904[];
extern unsigned char Lm968_69c4[] __asm__(".Lm968_69c4");
extern unsigned char Lm968_6b74[] __asm__(".Lm968_6b74");
extern unsigned char Lm968_6c04[] __asm__(".Lm968_6c04");
extern unsigned char Lm968_6c64[] __asm__(".Lm968_6c64");
extern unsigned char Lm968_6cf4[] __asm__(".Lm968_6cf4");
extern unsigned char Lm968_68ec[] __asm__(".Lm968_68ec");
extern void __Func_808b868(void *);

void *VenusLighthouse_GetActors(void)
{
    void *a;
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b5) {
        return gScript_945__0200e904;
    } else if (ev == (int)_EVENT_b6) {
        a = Lm968_69c4;
        __Func_808b868(a);
        return a;
    } else if (ev == (int)_EVENT_b7) {
        a = Lm968_6b74;
        __Func_808b868(a);
        return a;
    } else if (ev == (int)_EVENT_b8) {
        a = Lm968_6c04;
        __Func_808b868(a);
        return a;
    } else if (ev == (int)_EVENT_b9) {
        a = Lm968_6c64;
        __Func_808b868(a);
        return a;
    } else if (ev == (int)_EVENT_ba) {
        a = Lm968_6cf4;
        __Func_808b868(a);
        return a;
    } else {
        return Lm968_68ec;
    }
}

void OvlFunc_968_2008f1c(void)
{
  int new_var;
  __CutsceneStart();
  new_var = 1;
 do { __Func_801776c(0x953, new_var); } while (0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008f38.s");
extern void __MessageID(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __Func_80925cc(int, int);
extern void __ActorMessage(int, int);

void OvlFunc_968_2008fbc(void)
{
    __CutsceneStart();
    __MessageID(0x2670);
    __ActorMessage_Wait(0xb, 0, 0x14);
    __Func_80925cc(0xb, 2);
    __ActorMessage(0xb, 0);
    __CutsceneEnd();
}

extern void __CutsceneStart(void);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);

void OvlFunc_968_2008ff0(void)
{
    int r5;
    r5 = __MapActor_GetActor(0xc);
    __CutsceneStart();
    if ((*(int *)((char *)r5 + 8) >> 20) == 0x36 ||
        (*(int *)((char *)r5 + 0x10) >> 20) == 6)
        __SetFlag(0x987);
    __CutsceneEnd();
}

void OvlFunc_968_2009024(void)
{
	__CutsceneStart();
	{
		unsigned int rq = 0;
		__MapActor_SetAnim(rq, 1);
	}
	{
		unsigned int rm = 0x2682;
		__Func_801776c(rm, 1);
	}
	__CutsceneEnd();
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009048.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20090cc.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009150.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009218.s");

void OvlFunc_968_20094f4(void) {
    struct Actor *a;

    API_CutsceneStart();
    a = (struct Actor *)__MapActor_GetActor(0xc);
    if ((a->pos.x >> 20) == 0x35 && API_GetFlag(0x986) == 0) {
        API_SetFlag(0x986);
        a = (struct Actor *)__MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_SetPos(1, a->pos.x, a->pos.z);
        }
        API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(1, 0xce << 2, 0x58);
        API_MapActor_TravelToAnimWait(1, 0xce << 2, 0x68);
        API_MapActor_TurnToFaceActor(1, 0, 0);
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(1, 4);
        API_CutsceneWait(0x14);
        API_MessageID(0x2691);
        API_ActorMessage_Wait(1, 0, 0x14);
        API_Func_8092adc(1, 0, 0xa);
        API_MapActor_Emote(1, 0x80 << 1, 0x3c);
        API_MapActor_Face(1, 0, 0);
        API_CutsceneWait(0x14);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(0x14);
        API_ActorMessage_Wait(1, 0, 0x14);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(0x1e);
        API_MapActor_TravelToAnimWait(1, 0xce << 2, 0x58);
        API_MapActor_SetAnim(1, 2);
        a = (struct Actor *)__MapActor_GetActor(0);
        if (a != 0) {
            API_MapActor_TravelTo(1, ((short *)&a->pos.x)[1], ((short *)&a->pos.z)[1]);
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
        API_CutsceneEnd();
    }
}

extern void OvlFunc_968_2008374(void);
extern void OvlFunc_968_20094f4(void);

void OvlFunc_968_2009628(void)
{
	__CutsceneStart();
	OvlFunc_968_2008374();
	__CutsceneWait(0x14);
	__CutsceneEnd();
	OvlFunc_968_20094f4();
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009644.s");
void OvlFunc_968_20096a4(void) {
    struct Actor *a;
    short x;
    short z;

    a = (struct Actor *)__MapActor_GetActor(0);
    x = ((short *)&a->pos.x)[1];
    z = ((short *)&a->pos.z)[1];
    if ((unsigned int)(x - 0x2a4) > 7 || z < 0xc5 << 2 || z >= 0xc7 << 2) {
        API_CopyMapTiles(0x35, 0x32, 0x2a, 0x31, 1, 1);
        API_CopyMapTiles(0x37, 0x75, 0x29, 0x75, 3, 5);
        API_ClearFlag(0x201);
        a->__unk55 |= 1;
        a->floorPos = 0;
        a->pos.y = 0;
    } else if (API_GetFlag(0x201) == 0) {
        API_CutsceneStart();
        API_CutsceneWait(5);
        API_CopyMapTiles(0x34, 0x32, 0x2a, 0x31, 1, 1);
        API_CopyMapTiles(0x34, 0x75, 0x29, 0x75, 3, 5);
        API_SetFlag(0x201);
        API_PlaySound(0xa1);
        a->__unk55 &= 0xfe;
        a->floorPos = 0xfffe0000;
        a->pos.y = 0xfffe0000;
        API_CutsceneEnd();
    }
}
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009780.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009808.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20098f8.s");

extern void OvlFunc_968_20098f8(void);

void OvlFunc_968_200996c(void)
{
  __CutsceneStart();
  {
    unsigned int t1 = 0xc;
    unsigned int t2 = 0x2c;
    __Func_8010704(0x13, 0x2c, 4, 1, t1, t2);
  }
  OvlFunc_968_2008374();
  OvlFunc_968_20098f8();
  __CutsceneEnd();
}

extern void __Func_8012078(int a, unsigned int b, unsigned int c, int d);

void OvlFunc_968_200999c(void) {
    unsigned int i;
    unsigned char *p;

    i = 0;
    do {
        p = __MapActor_GetActor(i + 11);
        i++;
        __Func_8012078(0, *(unsigned int *)(p + 8), *(unsigned int *)(p + 0x10), 0x2d);
    } while (i <= 1);
}


void OvlFunc_968_20099c0(void) {
    unsigned int i;
    unsigned char *p;

    i = 0;
    do {
        p = __MapActor_GetActor(i + 11);
        if (*(int *)(p + 0xc) > (int)0xfff00000) {
            __Func_8012078(0, *(unsigned int *)(p + 8), *(unsigned int *)(p + 0x10), 0xff);
        }
        i++;
    } while (i <= 1);
}

extern int OvlFunc_968_2008cc8(void);

void OvlFunc_968_20099f0(void)
{
    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        OvlFunc_968_200999c();
        OvlFunc_968_2008374();
        OvlFunc_968_20099c0();
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009a14.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009a50.s");

extern void OvlFunc_968_2009a14(int);
extern void OvlFunc_968_2009a50(int);

void OvlFunc_968_2009a9c(void) {
    int r5;
    __CutsceneStart();
    r5 = __MapActor_GetActor(0xb);
    if (((*(int *)((char *)r5 + 8)) >> 20) == 8) {
        OvlFunc_968_200894c();
        OvlFunc_968_2009a14(r5);
    } else {
        OvlFunc_968_2009a50(r5);
    }
    r5 = __MapActor_GetActor(0xc);
    if (((*(int *)((char *)r5 + 8)) >> 20) == 7) {
        OvlFunc_968_200894c();
        OvlFunc_968_2009a14(r5);
    } else {
        OvlFunc_968_2009a50(r5);
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009af0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009d48.s");

void OvlFunc_968_2009f28(void){
    int a;
    int b;
    __CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0)    {
        a = 0x2d;
        b = 0x2b;
        API_Func_8010704(0x6d, 0x2b, 7, 5, a, b);
        OvlFunc_968_2008374();
    }

    __CutsceneEnd();
	OvlFunc_968_2009d48();
}



INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009f60.s");

void OvlFunc_968_200a26c(void) {
    int a;
    int b;
    API_CutsceneStart();
    if (OvlFunc_968_2008cc8() == 0) {
        a = 0x2c;
        b = 0x27;
        __Func_8010704(0x6c, 0x27, 0xd, 7, a, b);
        OvlFunc_968_2008374();
    }
    API_CutsceneEnd();
    OvlFunc_968_2009f60();
}


unsigned int OvlFunc_968_200a2a4(unsigned int arg0) {
    unsigned int v0;
    unsigned int v3;
    unsigned int v2;

    v0 = __MapActor_GetActor(*(short *)((char *)arg0 + 0x64));
    v3 = *(unsigned int *)((char *)v0 + 0xc);
    v2 = 0x80;
    v2 <<= 13;
    v3 += v2;
    *(unsigned int *)((char *)arg0 + 0xc) = v3;
    return 0;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200a2c8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200a3d4.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200a47c.s");


void OvlFunc_968_200a6e4(void) {
    __CutsceneStart();
    OvlFunc_968_2008374();
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200a6f8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200a90c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200ab14.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200aee4.s");

extern void __Func_8092708(int, int, int);
extern void __Func_8091e9c(int);

void OvlFunc_968_200af30(void)
{
    __CutsceneStart();
	API_MapActor_SetSpeed(0, 0x80 << 8, 0x80 << 7);
	API_MapActor_TravelToAnimWait(0, 0x82 << 2, 0xb2 << 2)	;
	API_Func_8092adc(0, 0x80 << 7, 0xa);
	OvlFunc_968_2008058(0x82 << 18, 0, 0xc4 << 18, 0xdf);
    __Func_8092708(0, 6, 0);
    API_CutsceneWait(0x3c);
	__Func_8091e9c(0x14);
	__CutsceneEnd();
}

extern unsigned char _EVENT_b5[], _EVENT_b6[], _EVENT_b7[], _EVENT_b8[], _EVENT_b9[], _EVENT_ba[];
extern unsigned char Lm968_6e44[] __asm__(".Lm968_6e44");
extern unsigned char Lm968_6f1c[] __asm__(".Lm968_6f1c");
extern unsigned char Lm968_7120[] __asm__(".Lm968_7120");
extern unsigned char Lm968_7300[] __asm__(".Lm968_7300");
extern unsigned char Lm968_73b4[] __asm__(".Lm968_73b4");
extern unsigned char Lm968_74f8[] __asm__(".Lm968_74f8");

int VenusLighthouse_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b5) return (int)Lm968_6e44;
    if (ev == (int)_EVENT_b6) return (int)Lm968_6f1c;
    if (ev == (int)_EVENT_b7) return (int)Lm968_7120;
    if (ev == (int)_EVENT_b8) return (int)Lm968_7300;
    if (ev == (int)_EVENT_b9) return (int)Lm968_73b4;
    if (ev == (int)_EVENT_ba) return (int)Lm968_74f8;
    return (int)Lm968_6f1c;
}

void OvlFunc_968_200b00c(unsigned int arg0)
{
  unsigned char *p;
  int new_var;
  p = __MapActor_GetActor(arg0);
  p[0x55] = 0;
  p[0x59] = p[0x59] & 0xfc;
  __Actor_SetSpriteFlags(p, 0);
  __Actor_SetAnim(p, 5);
  __Func_8092b08(arg0, 3);
  new_var = p[0x23] | 2;
  p[0x23] = new_var;
}


void OvlFunc_968_200b050(void) {
    unsigned int i;

    i = 0xf;
    do {
        __MapActor_GetActor(i);
        i++;
    } while (i <= 0x12);
}

INCLUDE_ASM("asm/maps/venus_lighthouse/VenusLighthouse_MapInit.s");

extern void OvlFunc_968_200c048(unsigned int);

void OvlFunc_968_200bfe4(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = 0;
	stack_buf[2] = (unsigned int)-1;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}


void OvlFunc_968_200bffc(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = 0;
	stack_buf[2] = 1;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}


void OvlFunc_968_200c014(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = (unsigned int)-1;
	stack_buf[2] = 0;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}


void OvlFunc_968_200c030(void)
{
	unsigned int stack_buf[3];

	stack_buf[0] = 1;
	stack_buf[2] = 0;
	OvlFunc_968_200c048((unsigned int)stack_buf);
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c048.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c2bc.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c520.s");

extern void OvlFunc_968_200c520(int a, int b);

void OvlFunc_968_200c5f0(void) {
    OvlFunc_968_200c520(0xd8 << 1, 0x20);
}


void OvlFunc_968_200c600(void) {
    OvlFunc_968_200c520(0x8c << 2, 0x2c);
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c610.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c7c0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200c968.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200ca2c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200cbd8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/venus_lighthouse_data.s");

INCLUDE_ASM("asm/maps/venus_lighthouse/imports.s");
