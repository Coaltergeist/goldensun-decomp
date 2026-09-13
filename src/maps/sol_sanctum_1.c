// fakematch
/* rom_78b2ac (overlay file 890): consolidated TU — sol_sanctum_1 map overlay. */

#include "nonmatching.h"
#include "api.h"

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
    if (OvlFunc_890_200a5b0()) {
        if (!API_GetFlag(0x201)) {
            __CutsceneStart();
            __Func_8091200(0x2051cc, 1);
            __Func_8091254(0x14);
            API_SetFlag(0x201);
            API_ClearFlag(0x200);
            API_ClearFlag(0x202);
            if (!API_GetFlag(0x80a)) {
                OvlFunc_890_20089f4();
            }
            if (OvlFunc_890_200a5b0() && !API_GetFlag(0x811)) {
                OvlFunc_890_2009be8();
            }
            __CutsceneEnd();
        }
    } else {
        if (!API_GetFlag(0x200)) {
            __CutsceneStart();
            __Func_8091200(0x10000, 1);
            __Func_8091254(0x14);
            API_SetFlag(0x200);
            API_ClearFlag(0x201);
            API_ClearFlag(0x202);
            __CutsceneEnd();
        }
    }
}
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008108.s");
void OvlFunc_890_2008150(void)
{
    if (OvlFunc_890_200a5b0()) {
        if (!API_GetFlag(0x200)) {
            __CutsceneStart();
            __Func_8091200(0x10000, 1);
            __Func_8091254(0x14);
            API_SetFlag(0x200);
            API_ClearFlag(0x201);
            API_ClearFlag(0x202);
            __CutsceneEnd();
        }
    } else {
        if (!API_GetFlag(0x201)) {
            __CutsceneStart();
            __Func_8091200(0x2051cc, 1);
            __Func_8091254(0x14);
            API_SetFlag(0x201);
            API_ClearFlag(0x200);
            API_ClearFlag(0x202);
            if (!API_GetFlag(0x80a)) {
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

static inline int *ApplySanctumEffectPhase(int *phase)
{
    if (*phase == 2) {
        API_Func_8012330(0x10000, 0x10000, 0x10000);
    } else if (*phase == 1) {
        API_Func_8012330(-1, -1, 0xe666);
    }
    return phase;
}

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
            ctr = ApplySanctumEffectPhase(ctr);
            *ctr = *ctr - 1;
        }
    }
}
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

    API_Func_80933f8(-1, -1, -1, 0);
    __CopyMapTiles(0x1e, 0x2b, 0x20, 0x28, 8, 3);
    __CopyMapTiles(0x1e, 0x2b, 0x21, 0x27, 8, 1);
    __CopyMapTiles(0x1e, 0x2b, 0x24, 0x26, 3, 3);
    __CopyMapTiles(0xe, 0x29, 0x20, 0x29, 8, 4);
    API_Func_80933f8(0x23e0000, -1, 0x9e << 16, 0);
    __Func_800fe9c();
    API_MapActor_SetPos(0x10, 0x23e0000, 0xf0 << 15);
    API_MapActor_SetPos(0, 0, 0);
    __WaitFrames(1);
    API_Func_8091200(0x2051cc, 1);
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
    API_Func_8091200(0x10005, 1);
    __Func_8091254(8);
    __CutsceneWait(0x20);
    API_Func_8091200(0x2051cc, 1);
    __Func_8091254(0x18);
}
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009380.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009510.s");
extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __MessageID(int a);
extern void __Func_8092adc(int a, int b, int c);
extern void OvlFunc_890_200a5fc(unsigned int arg0, unsigned int arg1);
extern unsigned char iwram_3001ebc_arr[] __asm__("iwram_3001ebc");

void __MapActor_Jump(int, int, int);
void __Func_8093530(void);
void OvlFunc_890_20082cc(void);
void OvlFunc_890_20083f4(void);
void __MapActor_DoAnim(int, int);
void __MapTransitionOut(void);
void __Func_8091e9c(int);

void OvlFunc_890_2009790(void)
{
    int i;
    int r3;
    int r2;
    int msg;
    unsigned char *base;

    __CutsceneStart();

    if (API_GetFlag(0x80b) && API_GetFlag(0x826)) {
        API_ClearFlag(0x826);
        r3 = 2;
        r2 = 1;
        __CopyMapTiles(0x2d, 0x1c, 0x22, 0xa, r3, r2);
    } else if (API_GetFlag(0x80b) && !API_GetFlag(0x826)) {
        API_SetFlag(0x826);
    }

    if (API_GetFlag(0x80c) && API_GetFlag(0x827)) {
        API_ClearFlag(0x827);
        r3 = 2;
        r2 = 1;
        __CopyMapTiles(0x2f, 0x1c, 0x24, 0xa, r3, r2);
    } else if (API_GetFlag(0x80c) && !API_GetFlag(0x827)) {
        API_SetFlag(0x827);
    }

    if (API_GetFlag(0x80d) && API_GetFlag(0x828)) {
        API_ClearFlag(0x828);
        r3 = 2;
        r2 = 1;
        __CopyMapTiles(0x2d, 0x1d, 0x22, 0xb, r3, r2);
    } else if (API_GetFlag(0x80d) && !API_GetFlag(0x828)) {
        API_SetFlag(0x828);
    }

    if (API_GetFlag(0x80e) && API_GetFlag(0x829)) {
        API_ClearFlag(0x829);
        r3 = 2;
        r2 = 1;
        __CopyMapTiles(0x2f, 0x1d, 0x24, 0xb, r3, r2);
    } else if (API_GetFlag(0x80e) && !API_GetFlag(0x829)) {
        API_SetFlag(0x829);
    }

    OvlFunc_890_2009264();
    API_Func_8092adc(0x10, 0x4000, 0x14);
    __MapActor_Jump(0x10, 6, 0x1e);
    __Func_80933f8(0x23e0000, -1, 0xae0000, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(12);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(12);
    } while (i != 4);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(8);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(8);
    } while (i != 6);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(6);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(6);
    } while (i != 8);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(4);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(4);
    } while (i != 10);

    i = 0;
    do {
        __PlaySound(0xf6);
        OvlFunc_890_20082cc();
        __CutsceneWait(2);
        __PlaySound(0xf6);
        i++;
        OvlFunc_890_20083f4();
        __CutsceneWait(2);
    } while (i != 12);

    __PlaySound(0xf6);
    OvlFunc_890_20082cc();
    __CutsceneWait(6);

    if (API_GetFlag(0x822) == 0) {
        msg = 0x8010;
        __MessageID(0x1025);
        OvlFunc_890_200a5fc(msg, 6);
        __MapActor_DoAnim(0x10, 3);
        OvlFunc_890_200a5fc(msg, 6);
    }

    base = *(unsigned char **)iwram_3001ebc_arr;
    *(int *)(base + 0x1c0) = 0x100;
    *(int *)(base + 0x1c8) = 0x20;

    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(5);
}
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009a58.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009be8.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009ca8.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/SolSanctum1_MapInit.s");


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

extern void __ActorMessage_Wait(volatile unsigned long a, int b, int c);
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

INCLUDE_ASM("asm/maps/sol_sanctum_1/sol_sanctum_1_data.s");

INCLUDE_ASM("asm/maps/sol_sanctum_1/imports.s");
