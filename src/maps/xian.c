// fakematch
/* rom_7b6668 (overlay file 928): consolidated TU — xian map overlay. */

#include "nonmatching.h"

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_928_2008314(void) {
    __Func_80955b0(0x16, 1, 2);
}

void OvlFunc_928_2008324(void)
{
  unsigned char *p;
  unsigned char *flags;
  int new_var;
  p = __MapActor_GetActor(0);
  if ((*((short *) (p + 0xe))) > 0x1f)
  {
    p = __MapActor_GetActor(0x14);
    flags = p + 0x23;
    new_var = (*flags) | 2;
    *flags = new_var;
  }
  else
  {
    p = __MapActor_GetActor(0x14);
    flags = p + 0x23;
    *flags = (*flags) & 0xfd;
  }
}

extern void *__MapActor_GetActor(int);

void OvlFunc_928_2008358(void)
{
    unsigned char *r0 = (unsigned char *)__MapActor_GetActor(0x13);
    unsigned short *r2 = *(unsigned short **)(r0 + 0x50);
    *(unsigned short *)((char *)r2 + 0x1e) += 0x1400;
}

INCLUDE_ASM("asm/maps/xian/ovl_314_a_a_c_c_a.s");

/* Cluster OvlFunc_928_20083cc..OvlFunc_928_20083cc extracted from goldensun/asm/overlays/rom_799abc/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_a_a_a_a.o and asm/overlays/rom_799abc/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
extern int Func_8000948(int);

int OvlFunc_928_20083cc(int *a, int *b)
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

INCLUDE_ASM("asm/maps/xian/ovl_314_a_a_c_c_c.s");

extern unsigned char gOvl_020097e8[];

unsigned int Xian_GetEntrances(void) {
    return (unsigned int)gOvl_020097e8;
}

int Xian_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098d8[];

void *Xian_GetExits(void) {
    return (void *)gOvl_020098d8;
}

extern unsigned char L1900[] __asm__(".Lm928_1900");

unsigned int * Xian_GetActors(void) {
    if (__GetFlag(0x895)) {
        L1900[0xbe] = 0;
    }
    return (unsigned int *)L1900;
}

void OvlFunc_928_20085d4(void) {
    __CutsceneStart();
    __MessageID(0x17e8);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/xian/ovl_314_c_c_a_c_c_a_a.s");

void OvlFunc_928_200894c(void) {
    unsigned char *r4;
    r4 = __MapActor_GetActor(0);
    if ((*(int *)(r4 + 0x10) >> 20) <= 0xd) {
        __Func_8092b08(0x14, 1);
    }
}

INCLUDE_ASM("asm/maps/xian/ovl_314_c_c_a_c_c_a_c.s");

void OvlFunc_928_2008cec(void) {
    __CutsceneStart();
    __MessageID(0x17f7);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/xian/ovl_314_c_c_a_c_c_c_a.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_928_2008de8(unsigned int arg0)
{
    unsigned char *actor;
    unsigned int w1, z1;
    unsigned int r3;

    actor = (unsigned char *) __MapActor_GetActor(0);
    {
        unsigned char *p;
        unsigned char v;
        p = actor + 0x55;
        v = 0;
        __asm__ volatile ("" : "+r" (p), "+r" (v));
        w1 = 0x80;
        __asm__ volatile ("" : "+r" (w1) : : "memory");
        z1 = 0x80;
        __asm__ volatile ("" : "+r" (z1) : : "memory");
        *p = v;
        w1 <<= 8;
        {
            register unsigned int rq __asm__("r0") = 0;
            __asm__ volatile ("" : : "r" (rq));
            z1 <<= 7;
            __MapActor_SetSpeed(rq, w1, z1);
        }
    }

    if (arg0 == 6) {
        {
            register int rq __asm__("r0") = 0;
            __asm__ volatile ("" : : "r" (rq));
            __MapActor_SetAnim(rq, 2);
        }
        {
            register int p0 __asm__("r0");
            register int p1 __asm__("r1");
            register int p2 __asm__("r2") = 0x10;
            __asm__ volatile ("" : "+r" (p2));
            p0 = 0;
            p1 = 0;
            __asm__ volatile ("" : "+r" (p0), "+r" (p1));
            p2 = -p2;
            __MapActor_TravelBy(p0, p1, p2);
        }
    } else {
        register int p0 __asm__("r0");
        register int p1 __asm__("r1");
        register int p2 __asm__("r2") = 0x10;
        __asm__ volatile ("" : "+r" (p2));
        p0 = 0;
        p1 = 2;
        __asm__ volatile ("" : "+r" (p0), "+r" (p1));
        p2 = -p2;
        __Func_8092208(p0, p1, p2);
    }

    r3 = *(unsigned int *)iwram_3001ebc;
    *(unsigned int *)(r3 + (0xe4 << 1)) = 0x10;
    __Func_8091e9c(arg0);
}

INCLUDE_ASM("asm/maps/xian/ovl_314_c_c_a_c_c_c_c.s");

extern unsigned char gOvl_02009ac8[];

void *Xian_GetEvents(void) {
    return (void *)gOvl_02009ac8;
}

INCLUDE_ASM("asm/maps/xian/ovl_314_c_c_c.s");
