/* rom_7f2f14 (overlay file 968): consolidated TU — venus_lighthouse map overlay. */

#include "nonmatching.h"

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
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008594.s");
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

struct Actor {
unsigned char pad0[0xc];
int posY;
unsigned char pad1[0x13];
unsigned char flags;
unsigned char pad2[0xc];
unsigned int speed;
unsigned int accel;
unsigned char pad3[0x1d];
unsigned char unk55;
unsigned char pad4[3];
unsigned char unk59;
unsigned char pad5[9];
unsigned char unk63;
unsigned char pad6[8];
void *update;
};
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
    actor->unk55 = 0;
    actor->posY = 0;
    actor->unk59 = 0;
    actor->flags = 2;
    actor->update = (void *)OvlFunc_968_2008b98;
    actor->unk63 = 0;
    __Actor_SetScript(actor, param_3);
    return actor;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008cc8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/VenusLighthouse_GetEntrances.s");

int VenusLighthouse_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200e740[];

unsigned int VenusLighthouse_GetExits(void) {
    return (unsigned int)gOvl_0200e740;
}

INCLUDE_ASM("asm/maps/venus_lighthouse/VenusLighthouse_GetActors.s");

void OvlFunc_968_2008f1c(void)
{
  int new_var;
  __CutsceneStart();
  new_var = 1;
 do { __Func_801776c(0x953, new_var); } while (0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008f38.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2008fbc.s");

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
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20094f4.s");

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
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_20096a4.s");
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
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009f28.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_2009f60.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200a26c.s");


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
INCLUDE_ASM("asm/maps/venus_lighthouse/OvlFunc_968_200af30.s");
INCLUDE_ASM("asm/maps/venus_lighthouse/VenusLighthouse_GetEvents.s");

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

INCLUDE_ASM("asm/maps/venus_lighthouse/imports.s");
