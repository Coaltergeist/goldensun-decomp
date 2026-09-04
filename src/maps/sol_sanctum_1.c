/* rom_78b2ac (overlay file 890): consolidated TU — sol_sanctum_1 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol_sanctum_1/exports.s");

extern unsigned char gOvl_0200aafc[];

unsigned int SolSanctum1_GetEntrances(void) {
    return (unsigned int)gOvl_0200aafc;
}

unsigned int SolSanctum1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200abec[];

void *SolSanctum1_GetExits(void) {
    return (void *)gOvl_0200abec;
}
extern unsigned char gScript_884__0200ac14[];

void *SolSanctum1_GetActors(void) {
    return (void *)gScript_884__0200ac14;
}
extern unsigned char gOvl_0200ad34[];

void *SolSanctum1_GetEvents(void) {
    return (void *)gOvl_0200ad34;
}

void OvlFunc_890_2008054(void)
{
    int f201 = 0x201;
    int f200 = 0x200;

    do { } while (f201 == 0);

    if (OvlFunc_890_200a5b0()) {
        if (!__GetFlag(f201)) {
            __CutsceneStart();
            __Func_8091200(0x2051cc, 1);
            __Func_8091254(0x14);
            __SetFlag(f201);
            __ClearFlag(f200);
            __ClearFlag(0x202);
            if (!__GetFlag(0x80a)) {
                OvlFunc_890_20089f4();
            }
            if (OvlFunc_890_200a5b0() && !__GetFlag(0x811)) {
                OvlFunc_890_2009be8();
            }
            __CutsceneEnd();
        }
    } else {
        if (!__GetFlag(f200)) {
            __CutsceneStart();
            __Func_8091200(0x10000, 1);
            __Func_8091254(0x14);
            __SetFlag(f200);
            __ClearFlag(f201);
            __ClearFlag(0x202);
            __CutsceneEnd();
        }
    }
}
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008108.s");
void OvlFunc_890_2008150(void)
{
    int flag1 = 0x200;
    int flag2 = 0x201;

    do { } while (flag1 == 0);

    if (OvlFunc_890_200a5b0()) {
        if (!__GetFlag(flag1)) {
            __CutsceneStart();
            __Func_8091200(0x10000, 1);
            __Func_8091254(0x14);
            __SetFlag(flag1);
            __ClearFlag(flag2);
            __ClearFlag(0x202);
            __CutsceneEnd();
        }
    } else {
        if (!__GetFlag(flag2)) {
            __CutsceneStart();
            __Func_8091200(0x2051cc, 1);
            __Func_8091254(0x14);
            __SetFlag(flag2);
            __ClearFlag(flag1);
            __ClearFlag(0x202);
            if (!__GetFlag(0x80a)) {
                OvlFunc_890_20089f4();
            }
            __CutsceneEnd();
        }
    }
}
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20081ec.s");

/* OvlFunc_890_200822c; *(vu16*)0x05000000 = 0.
 * Address (0xa0<<19) and value (0) both synthesized. Value var FIRST -> r2,
 * address pointer -> r3 (matching strh r2,[r3]). */

void OvlFunc_890_200822c(void) {
    unsigned short v = 0;
    volatile unsigned short *p = (volatile unsigned short *)0x05000000;
    *p = v;
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008238.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20082cc.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008360.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20083f4.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008488.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20089f4.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008c00.s");
extern unsigned char Lm890_2de8[] __asm__(".Lm890_2de8");
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);
void __Func_8012330(int a, int b, int c);

extern unsigned char Lm890_2de4[] __asm__(".Lm890_2de4");
void OvlFunc_890_2008d9c(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        goto eaa;
    }

    p = (unsigned short *)Lm890_2de4;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x21, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x21, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x22, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x22, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x23, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x23, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x24, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x1e, 0x25, v, five);
        goto end;
    case 0x50:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x2e, 0x31, 0x1e, 0x21, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 90) {
        *p = 0;
    }

eaa:
    {
        int *ctr = (int *)Lm890_2de8;
        if (*ctr != 0) {
            if (*ctr == 2) {
                register unsigned int a __asm__("r0");
                register unsigned int b __asm__("r1");
                register unsigned int c __asm__("r2");
                a = 0x80;
                b = 0x80;
                c = 0x80;
                a <<= 9;
                __asm__ volatile ("" : "+r" (a));
                b <<= 9;
                __asm__ volatile ("" : "+r" (b));
                c <<= 9;
                __Func_8012330(a, b, c);
            } else if (*ctr == 1) {
                register int d __asm__("r0");
                register int e __asm__("r1");
                register unsigned int f __asm__("r2");
                d = 1;
                e = 1;
                __asm__ volatile ("" : "+r" (d), "+r" (e));
                d = -d;
                e = -e;
                f = 0xe666;
                __asm__ volatile ("" : "+r" (f));
                __Func_8012330(d, e, f);
            }
            __asm__ volatile ("" ::: "memory");
            *ctr = *ctr - 1;
        }
    }
}
/* PROBE: 2008ef8 best near-miss (base_14.c, diff=8) + COMPLETE prototypes.
   Tests §2.4/§2.5-caveat: whole-function arg-order should collapse the
   4-site r0-position residual once every callee has a full prototype.
   Body is base_14.c verbatim; only the three prototypes are added. */
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2ddc[] __asm__(".Lm890_2ddc");

void OvlFunc_890_2008ef8(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2ddc;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x21, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x21, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x22, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x22, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x23, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x23, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x24, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x25, v, five);
        goto end;
    case 0x5a:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x2f, 0x31, 0x2a, 0x21, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 100) {
        *p = 0;
    }
}
/* Twin of 2008ef8, constants adapted from OvlFunc_890_200901c.s.
   global .Lm890_2de0, r0=0x30 r1=0x3b r2=0x1f, r3 base 0x24, special 0x5f,
   threshold 105 (0x69). Complete prototypes per §2.4/§2.5. */
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2de0[] __asm__(".Lm890_2de0");
void OvlFunc_890_200901c(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2de0;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x30, 0x3b, 0x1f, 0x24, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x25, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x25, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x26, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x26, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x27, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x27, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x28, v, five);
        goto end;
    case 0x5f:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x30, 0x31, 0x1f, 0x24, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 105) {
        *p = 0;
    }
}
/* Twin of 2008ef8, constants adapted from OvlFunc_890_2009140.s.
   global .Lm890_2dec, r0=0x2e r1=0x3b r2=0x29, r3 base 0x24, special 0x55,
   threshold 95 (0x5f). Complete prototypes per §2.4/§2.5. */
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2dec[] __asm__(".Lm890_2dec");
void OvlFunc_890_2009140(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2dec;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x2e, 0x3b, 0x29, 0x24, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x25, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x25, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x26, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x26, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x27, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x27, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x28, v, five);
        goto end;
    case 0x55:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x2e, 0x31, 0x29, 0x24, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 95) {
        *p = 0;
    }
}
extern void __CutsceneWait(unsigned int arg0);
typedef struct {
    unsigned char _pad0[0x1c0];
    int transition;
    unsigned char _pad1[4];
    int transitionSpeed;
} MapState;

extern MapState *iwram_3001ebc;

void __Func_80933f8(int, int, int, int);
void __Func_800fe9c(void);
void __MapActor_SetPos(int, int, int);
void __WaitFrames(int);
void __Func_8091200(int, int);
void __Func_8091254(int);
void __SetFlag(int);
void __ClearFlag(int);
void __MapTransitionIn(void);
void __WaitMapTransition(void);
void OvlFunc_890_2009264(void)
{
    MapState *map;
    int neg1 = -1;
    int c_23e = 0x23e0000;
    int c_9e = 0x9e << 16;
    int c_f0 = 0xf0 << 15;
    int c_2051cc = 0x2051cc;

    while (c_23e == 0) {}

    __Func_80933f8(neg1, neg1, neg1, 0);
    __CopyMapTiles(0x1e, 0x2b, 0x20, 0x28, 8, 3);
    __CopyMapTiles(0x1e, 0x2b, 0x21, 0x27, 8, 1);
    __CopyMapTiles(0x1e, 0x2b, 0x24, 0x26, 3, 3);
    __CopyMapTiles(0xe, 0x29, 0x20, 0x29, 8, 4);
    __Func_80933f8(c_23e, neg1, c_9e, 0);
    __Func_800fe9c();
    __MapActor_SetPos(0x10, c_23e, c_f0);
    __MapActor_SetPos(0, 0, 0);
    __WaitFrames(1);
    __Func_8091200(c_2051cc, 1);
    __Func_8091254(0x14);
    __SetFlag(0x201);
    __ClearFlag(0x200);
    __ClearFlag(0x202);
    map = iwram_3001ebc;
    map->transition = 0x100;
    map->transitionSpeed = 0x20;
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(0x28);
    __PlaySound(0xab);
    __Func_8091200(0x10005, 1);
    __Func_8091254(8);
    __CutsceneWait(0x20);
    __Func_8091200(c_2051cc, 1);
    __Func_8091254(0x18);
}
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009380.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009510.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009790.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009a58.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009be8.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009ca8.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/SolSanctum1_MapInit.s");

extern int __GetFlag(int);

unsigned int OvlFunc_890_200a5b0(void) {
    unsigned int r5 = 1;
    if (!__GetFlag(0x80b))
        r5 = 0;
    if (!__GetFlag(0x80c))
        r5 = 0;
    if (!__GetFlag(0x80d))
        r5 = 0;
    if (!__GetFlag(0x80e))
        r5 = 0;
    return r5;
}

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);

void OvlFunc_890_200a5fc(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_200a614.s");

extern void __CutsceneStart(void);
extern void __MessageID(int a);
extern void __ActorMessage_Wait(volatile unsigned long a, int b, int c);
extern void __Func_8092adc(int a, int b, int c);
extern void __CutsceneEnd(void);

void OvlFunc_890_200a924(void)
{
  int new_var;
  __CutsceneStart();
  new_var = 0xc0 << 8;
  if (__GetFlag(0x896))
  {
    __MessageID(0xffd);
  }
  else
  {
    __MessageID(0xfff);
  }
  __ActorMessage_Wait(0x10, 0, 0xa);
  __Func_8092adc(0x10, new_var, 0xa);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/ovl_30_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/sol_sanctum_1/imports.s");
