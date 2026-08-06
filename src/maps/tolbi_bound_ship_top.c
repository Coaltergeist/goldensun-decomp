// fakematch
/* rom_7ca63c (overlay file 944): consolidated TU — tolbi_bound_ship_top map overlay. */

#include "nonmatching.h"

/* __Random unsigned so `(__Random(..) << 6) >> 16` is a logical shift (empty
 * parens: fragments call it with 0 and 1 args). */
extern unsigned int __Random();




INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/ovl_30_a_a_a.s");


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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/ovl_30_a_c_a.s");

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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/ovl_30_c_c_a_c_a.s");

extern void OvlFunc_944_20084b0(void);

void OvlFunc_944_200840c(void)
{
  int d;
  int e;
  int f;
  unsigned int g;
  unsigned int a;
  unsigned int b;
  unsigned int h;
  unsigned int z;
  unsigned int x;
  int ret;

  __CutsceneStart();

  d = 1;
  __asm__ volatile ("" : "+r" (d));
  e = 1;
  __asm__ volatile ("" : "+r" (e));
  f = 1;
  __asm__ volatile ("" : "+r" (f));
  e = -e;
  f = -f;
  g = 0;
  d = -d;
  __Func_80933f8(d, e, f, g);

  __WaitFrames(1);

  ret = __Func_8093554();

  z = 0;
  do { z = (unsigned short) z; } while (0);
  *(unsigned char *)(ret + 0x55) = z;

  a = 0x80;
  b = 0xa4;
  a <<= 15;
  h = 0x1410000;
  b <<= 16;
  __Func_80933f8(b, a, h, z);

  __Func_800fe9c();

  __WaitFrames(1);

  x = 0;
  do { x = (unsigned short) x; } while (0);
  __MapActor_SetPos(x, 0, 0);

  OvlFunc_944_20084b0();

  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/ovl_30_c_c_a_c_c_a.s");

typedef struct { unsigned char _bytes[4]; } ActorCmd;
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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/ovl_30_c_c_a_c_c_c.s");

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

INCLUDE_ASM("asm/maps/tolbi_bound_ship_top/ovl_30_c_c_c.s");
