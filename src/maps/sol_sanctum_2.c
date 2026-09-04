/* rom_78c76c (overlay file 891): consolidated TU — sol_sanctum_2 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol_sanctum_2/exports.s");

extern unsigned char gOvl_0200a5c0[];

unsigned int SolSanctum2_GetEntrances(void) {
    return (unsigned int)gOvl_0200a5c0;
}

unsigned int SolSanctum2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a698[];

void *SolSanctum2_GetExits(void) {
    return (void *)gOvl_0200a698;
}
extern unsigned char gOvl_0200a6bc[];

void *SolSanctum2_GetActors(void) {
    return (void *)gOvl_0200a6bc;
}
extern unsigned char gOvl_0200a80c[];

void *SolSanctum2_GetEvents(void) {
    return (void *)gOvl_0200a80c;
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008054.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008098.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008150.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008614.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008c8c.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008eb0.s");

void OvlFunc_891_2008fe4(void) {
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == (0xc0 << 8)) {
        __Func_8093c00();
    }
}

void OvlFunc_891_2009000(void) {
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == (0x80 << 7)) {
        __Func_8093c00();
    }
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_200901c.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/SolSanctum2_MapInit.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_20094b8.s");

extern void OvlFunc_891_2009c14(void);

void OvlFunc_891_2009574(void)
{
    int r0;
    r0 = OvlFunc_891_2009be8(9, 0x1f, 9);
    if (r0 != 0) {
        OvlFunc_891_2009c14();
    }
}

extern void OvlFunc_891_2009d14(void);

void OvlFunc_891_200958c(void)
{
    int r0;

    r0 = OvlFunc_891_2009be8(0xb, 0x28, 9);
    if (r0 != 0) {
        OvlFunc_891_2009d14();
    }
}

extern void OvlFunc_891_2009e10(void);

void OvlFunc_891_20095a4(void)
{
    if (OvlFunc_891_2009be8(0xd, 0x1f, 0xc) != 0) {
        OvlFunc_891_2009e10();
    }
}

extern void OvlFunc_891_2009f0c(void);

void OvlFunc_891_20095bc(void)
{
    int r0;
    r0 = OvlFunc_891_2009be8(0xf, 0x28, 0xc);
    if (r0 != 0) {
        OvlFunc_891_2009f0c();
    }
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_20095d4.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_20095fc.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009624.s");


void OvlFunc_891_200966c(void)
{
  void *p;
  unsigned int x;
  int new_var2;
  int new_var;
  p = __MapActor_GetActor(0);
  x = (*((int *) (((char *) p) + 8))) >> 20;
  p = __MapActor_GetActor(0);
  new_var = 0xd0 << 16;
  if (((*((int *) (((char *) p) + 0x10))) >> 20) == 7)
  {
    new_var2 = 0xe0 << 15;
    if (((unsigned int) (x - 0xd)) <= 1)
    {
      __Func_8012078(2, new_var, new_var2, 0xff);
    }
  }
}


void OvlFunc_891_20096a4(void)
{
  void *p;
  long new_var2;
  int x;
  int new_var;
  p = __MapActor_GetActor(0);
  x = (*((int *) (((char *) p) + 8))) >> 20;
  p = __MapActor_GetActor(0);
  new_var = 0xb0 << 17;
  if (((*((int *) (((char *) p) + 0x10))) >> 20) == 7)
  {
 new_var2 = 0xe0 << 15; do { if (((unsigned int) (x - 0x15)) <= 1) { __Func_8012078(2, new_var, new_var2, 0xff); } } while (0);
  }
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_20096dc.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_200995c.s");

extern void OvlFunc_891_2009b44(int, int, int, int, int);

void OvlFunc_891_20099e4(void)
{
    OvlFunc_891_2009b44(9, 31, 9, 30, 9);
    OvlFunc_891_2009c14();
}


void OvlFunc_891_2009a04(void)
{
    OvlFunc_891_2009b44(11, 40, 9, 41, 9);
    OvlFunc_891_2009d14();
}


void OvlFunc_891_2009a24(void)
{
    OvlFunc_891_2009b44(13, 31, 12, 30, 12);
    OvlFunc_891_2009e10();
}


void OvlFunc_891_2009a44(void)
{
    OvlFunc_891_2009b44(15, 40, 12, 41, 12);
    OvlFunc_891_2009f0c();
}

extern void OvlFunc_891_200a244(void);

void OvlFunc_891_2009a64(void)
{
    OvlFunc_891_2009b44(10, 14, 7, 13, 7);
    OvlFunc_891_200a244();
}


void OvlFunc_891_2009a84(void) {
    int res;
    int v;

    res = __MapActor_GetActor(0xa);
    if (res != 0) {
        v = *(int *)((char *)res + 0x10) >> 20;
        OvlFunc_891_2009b44(0xa, 0xd, v + 1, 0xd, v);
    }
}
void OvlFunc_891_2009aac(void) {
    unsigned char *p;
    int v;

    p = (unsigned char *)__MapActor_GetActor(0xa);
    if (p != (unsigned char *)0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xa, 0xd, v - 1, 0xd, v);
    }
}

extern void OvlFunc_891_200a2f4(void);

void OvlFunc_891_2009ad4(void)
{
    OvlFunc_891_2009b44(12, 21, 7, 22, 7);
    OvlFunc_891_200a2f4();
}


void OvlFunc_891_2009af4(void) {
    unsigned char *p;
    int v;

    p = __MapActor_GetActor(0xc);
    if (p != (unsigned char *)0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xc, 0x16, v + 1, 0x16, v);
    }
}
void OvlFunc_891_2009b1c(void) {
    unsigned char *p;
    int v;

    p = __MapActor_GetActor(0xc);
    if (p != 0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xc, 0x16, v - 1, 0x16, v);
    }
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009b44.s");


unsigned int OvlFunc_891_2009be8(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    void *p;
    p = __MapActor_GetActor();
    if (p == (void *)0)
        return 0;
    if ((*(int *)((char *)p + 8) >> 20) != (int)arg1)
        return 0;
    if ((*(int *)((char *)p + 0x10) >> 20) != (int)arg2)
        return 0;
    return 1;
}

extern int Lm891_2980[] __asm__(".Lm891_2980");
extern void OvlFunc_891_2009ff4(void);

void OvlFunc_891_2009c14(void)
{
    Lm891_2980[0] = 0;
    Lm891_2980[1] = 0x37;
    Lm891_2980[2] = 0x20;
    Lm891_2980[3] = 0x28;
    Lm891_2980[4] = 4;
    Lm891_2980[5] = 3;
    Lm891_2980[6] = 2;
    Lm891_2980[7] = 0x1e;
    Lm891_2980[8] = 0x22;
    Lm891_2980[9] = 10;
    Lm891_2980[10] = 2;
    Lm891_2980[11] = 1;
    Lm891_2980[12] = 2;
    Lm891_2980[13] = 0x1c;
    Lm891_2980[14] = 0x22;
    Lm891_2980[15] = 10;
    Lm891_2980[16] = 2;
    Lm891_2980[17] = 1;
    Lm891_2980[18] = 2;
    Lm891_2980[19] = 0x1e;
    Lm891_2980[20] = 0x10;
    Lm891_2980[21] = 10;
    Lm891_2980[22] = 2;
    Lm891_2980[23] = 1;
    Lm891_2980[24] = 0x80b;
    Lm891_2980[25] = 0x4000;
    Lm891_2980[26] = 500;
    Lm891_2980[27] = 0x84;
    Lm891_2980[28] = 8;
    Lm891_2980[29] = 0x37;
    Lm891_2980[30] = 0x20;
    Lm891_2980[31] = 0x28;
    Lm891_2980[32] = 4;
    Lm891_2980[33] = 3;
    Lm891_2980[34] = 2;
    Lm891_2980[35] = 0x1e;
    Lm891_2980[36] = 0x22;
    Lm891_2980[37] = 10;
    Lm891_2980[38] = 2;
    Lm891_2980[39] = 1;
    Lm891_2980[40] = 2;
    Lm891_2980[41] = 0x1c;
    Lm891_2980[42] = 0x10;
    Lm891_2980[43] = 10;
    Lm891_2980[44] = 2;
    Lm891_2980[45] = 1;
    Lm891_2980[46] = 9;
    Lm891_2980[47] = 0x1e8;
    Lm891_2980[48] = 0x98;

    OvlFunc_891_2009ff4();
}
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009d14.s");
void OvlFunc_891_2009e10(void)
{
    Lm891_2980[0] = 0;
    Lm891_2980[1] = 0x3a;
    Lm891_2980[2] = 0x20;
    Lm891_2980[3] = 0x2b;
    Lm891_2980[4] = 4;
    Lm891_2980[5] = 1;
    Lm891_2980[6] = 2;
    Lm891_2980[7] = 0x1f;
    Lm891_2980[8] = 0x22;
    Lm891_2980[9] = 0xb;
    Lm891_2980[10] = 2;
    Lm891_2980[11] = 1;
    Lm891_2980[12] = 2;
    Lm891_2980[13] = 0x1d;
    Lm891_2980[14] = 0x22;
    Lm891_2980[15] = 0xb;
    Lm891_2980[16] = 2;
    Lm891_2980[17] = 1;
    Lm891_2980[18] = 2;
    Lm891_2980[19] = 0x1f;
    Lm891_2980[20] = 0x10;
    Lm891_2980[21] = 0xb;
    Lm891_2980[22] = 2;
    Lm891_2980[23] = 1;
    Lm891_2980[24] = 0x80d;
    Lm891_2980[25] = 0xc000;
    Lm891_2980[26] = 500;
    Lm891_2980[27] = 0xd8;
    Lm891_2980[28] = 8;
    Lm891_2980[29] = 0x3a;
    Lm891_2980[30] = 0x20;
    Lm891_2980[31] = 0x2b;
    Lm891_2980[32] = 4;
    Lm891_2980[33] = 1;
    Lm891_2980[34] = 2;
    Lm891_2980[35] = 0x1f;
    Lm891_2980[36] = 0x22;
    Lm891_2980[37] = 0xb;
    Lm891_2980[38] = 2;
    Lm891_2980[39] = 1;
    Lm891_2980[40] = 2;
    Lm891_2980[41] = 0x1d;
    Lm891_2980[42] = 0x10;
    Lm891_2980[43] = 0xb;
    Lm891_2980[44] = 2;
    Lm891_2980[45] = 1;
    Lm891_2980[46] = 0xd;
    Lm891_2980[47] = 488;
    Lm891_2980[48] = 200;
    OvlFunc_891_2009ff4();
}
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009f0c.s");
extern void __CutsceneWait(unsigned int arg0);
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);
extern void __PlaySound(int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __SetFlag(int);
extern int OvlFunc_891_2008054(void);
extern void __SetCameraTarget(int, int);
extern void *__MapActor_GetActor(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_Jump(int, int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_TravelToWait(int, int, int);
extern void __ClearFlag(int);
extern void OvlFunc_891_2008c8c(void);
extern void __Func_8091e9c(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __CutsceneEnd(void);

static inline void MapActor_SetSpeed(int actor, int x, int y)
{
    __MapActor_SetSpeed(actor, x << 10, y << 10);
}

static inline void CopyMapTiles(int x1, int y1, int x2, int y2, int w, int h)
{
    __CopyMapTiles(x1, y1, x2, y2, w, h);
}

void OvlFunc_891_2009ff4(void)
{
    int flag_80f = 0x80f;
    int transition;
    int i;
    int one;
    unsigned char *actor;

    do { } while (flag_80f == 0);

    transition = 0;
    __CutsceneStart();
    if (!__GetFlag(flag_80f)) {
        __Func_80933d4(0x80 << 10, 0x80 << 7);
        __Func_80933f8(0x90 << 18, -1, 0xac << 16, 1);
        __Func_8093530();
        __PlaySound(0xba);
        CopyMapTiles(Lm891_2980[0], Lm891_2980[1], Lm891_2980[2], Lm891_2980[3], Lm891_2980[4], Lm891_2980[5]);
        i = 0;
        do {
            __PlaySound(0xf6);
            CopyMapTiles(Lm891_2980[6], Lm891_2980[7], Lm891_2980[8], Lm891_2980[9], Lm891_2980[10], Lm891_2980[11]);
            __CutsceneWait(4);
            __PlaySound(0xf6);
            i++;
            CopyMapTiles(Lm891_2980[12], Lm891_2980[13], Lm891_2980[14], Lm891_2980[15], Lm891_2980[16], Lm891_2980[17]);
            __CutsceneWait(4);
        } while (i != 20);
        CopyMapTiles(Lm891_2980[18], Lm891_2980[19], Lm891_2980[20], Lm891_2980[21], Lm891_2980[22], Lm891_2980[23]);
        __SetFlag(Lm891_2980[24]);
        transition = OvlFunc_891_2008054();
        if (transition == -1) {
            if (!__GetFlag(0x818)) {
                __SetCameraTarget(0, 1);
                actor = (unsigned char *)__MapActor_GetActor(0);
                *(unsigned short *)(actor + 6) = Lm891_2980[25];
                MapActor_SetSpeed(0, 0x80, 0x80);
                actor = (unsigned char *)__MapActor_GetActor(0) + 0x5a;
                *actor &= 0xfe;
                __MapActor_Jump(0, 4, 0);
                __MapActor_TravelTo(0, Lm891_2980[26], Lm891_2980[27]);
                CopyMapTiles(Lm891_2980[28], Lm891_2980[29], Lm891_2980[30], Lm891_2980[31], Lm891_2980[32], Lm891_2980[33]);
                CopyMapTiles(Lm891_2980[34], Lm891_2980[35], Lm891_2980[36], Lm891_2980[37], Lm891_2980[38], Lm891_2980[39]);
                CopyMapTiles(Lm891_2980[40], Lm891_2980[41], Lm891_2980[42], Lm891_2980[43], Lm891_2980[44], Lm891_2980[45]);
                actor = (unsigned char *)__MapActor_GetActor(Lm891_2980[46]) + 0x5a;
                *actor &= 0xfe;
                __MapActor_TravelToWait(Lm891_2980[46], Lm891_2980[47], Lm891_2980[48]);
                actor = (unsigned char *)__MapActor_GetActor(0) + 0x5a;
                one = 1;
                one |= *actor;
                *actor = one;
                __ClearFlag(Lm891_2980[24]);
            }
        } else if (transition == 0) {
            if (__GetFlag(0x818)) {
                if (__GetFlag(0x80b) && __GetFlag(0x80d) && __GetFlag(0x80e)) {
                    if (!__GetFlag(flag_80f)) {
                        __SetFlag(flag_80f);
                        OvlFunc_891_2008c8c();
                    }
                } else if (__GetFlag(0x812)) {
                    __Func_8091e9c(5);
                    transition = 1;
                }
            }
        }
    }
    if (transition == 1) {
        __MapTransitionOut();
        __WaitMapTransition();
    }
    __CutsceneEnd();
}
extern void __Func_8092adc(int, int, int);
extern void OvlFunc_891_2008098(void);
void OvlFunc_891_200a244(void)
{
    int f816 = 0x816;
    int f817 = 0x817;
    int r3;
    int r2;

    do { } while (f816 == 0);

    __CutsceneStart();
    if (__GetFlag(0x818) == 0 && __GetFlag(f816) == 0) {
        __Func_80933d4(0x20000, 0x4000);
        __Func_80933f8(0x11e0000, -1, 0x920000, 1);
        __Func_8093530();
        __PlaySound(0xba);
        r3 = 4;
        r2 = 3;
        __CopyMapTiles(0, 0x3b, 0xf, 0x26, r3, r2);
        if (__GetFlag(f817) != 0) {
            __CopyMapTiles(8, 0x3c, 0x11, 0x27, 2, 2);
        }
        __Func_8092adc(0, 0, 0);
        __CutsceneWait(0x1e);
        __SetFlag(f816);
        if (__GetFlag(f817) != 0) {
            OvlFunc_891_2008098();
        }
    }
    __CutsceneEnd();
}
void OvlFunc_891_200a2f4(void)
{
    extern void OvlFunc_891_2008098(void);

    int f817 = 0x817;
    int f816 = 0x816;

    do { } while (f817 == 0);

    __CutsceneStart();
    if (__GetFlag(0x818) == 0 && __GetFlag(f817) == 0) {
        __Func_80933d4(0x80 << 10, 0x80 << 7);
        __Func_80933f8(0x11e0000, -1, 0x920000, 1);
        __Func_8093530();
        __PlaySound(0xba);
        {
            unsigned short t1 = 4;
            unsigned short t2 = 3;
            __CopyMapTiles(4, 0x3b, 0x11, 0x26, t1, t2);
        }
        if (__GetFlag(f816) != 0) {
            unsigned short t1 = 2;
            __CopyMapTiles(8, 0x3c, 0x11, 0x27, t1, t1);
        }
        __Func_8092adc(0, 0x8000, 0);
        __CutsceneWait(0x1e);
        __SetFlag(f817);
        if (__GetFlag(f816) != 0) {
            OvlFunc_891_2008098();
        }
    }
    __CutsceneEnd();
}

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);

void OvlFunc_891_200a3a4(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/ovl_30_c_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/sol_sanctum_2/imports.s");
