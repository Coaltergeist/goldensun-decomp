/* rom_79b154 (overlay file 907): consolidated TU — bilibin map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/bilibin/exports.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char gOvl_020093fc[];

extern unsigned short __atan2(int, int);

int OvlFunc_907_2008030(unsigned char *actor)
{
    unsigned char *target;
    int delta;
    int facing;
    int angle;

    target = *(unsigned char **)(actor + 0x68);
    if (target != 0) {
        actor[0x5a] &= 0xfe;
        angle = __atan2(*(int *)(target + 0x10) - *(int *)(actor + 0x10),
                        *(int *)(target + 8) - *(int *)(actor + 8));
        facing = *(unsigned short *)(actor + 6);
        delta = (short)(angle - facing);
        if (delta != 0) {
            if (delta > 0x1000) {
                delta = 0x1000;
            }
            if (delta < -0x1000) {
                delta = -0x1000;
            }
            *(unsigned short *)(actor + 6) = facing + delta;
        }
    }
    return 1;
}
extern unsigned char Lconst_1e[] __asm__(".Lconst_1e");
__asm__(".equ .Lconst_1e, 0x1e");
extern unsigned char Lconst_23[] __asm__(".Lconst_23");
__asm__(".equ .Lconst_23, 0x23");
extern unsigned char Lconst_20[] __asm__(".Lconst_20");
__asm__(".equ .Lconst_20, 0x20");
extern unsigned char Lm907_11ec[] __asm__(".Lm907_11ec");
extern unsigned char Lm907_130c[] __asm__(".Lm907_130c");
extern unsigned char Lm907_136c[] __asm__(".Lm907_136c");
extern unsigned char Lm907_11d4[] __asm__(".Lm907_11d4");

void *Bilibin_GetEntrances(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_1e) return Lm907_11ec;
    if (a == (int)Lconst_23) return Lm907_130c;
    if (a == (int)Lconst_20) return Lm907_136c;
    return Lm907_11d4;
}

void *Bilibin_GetSpecialExits(void)
{
    int offset;
    short a;
    void *ret;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    ret = 0;
    if (a == (int)Lconst_20) {
        ret = gOvl_020093fc;
    }
    return ret;
}

extern unsigned char gOvl_0200942c[];

void *Bilibin_GetExits(void) {
    return (void *)gOvl_0200942c;
}

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_907_200810c(void) {
    __Func_80955b0(9, 3, 0);
}

extern unsigned char Lm907_1498[] __asm__(".Lm907_1498");
extern unsigned char Lm907_1600[] __asm__(".Lm907_1600");
extern unsigned char Lm907_16f0[] __asm__(".Lm907_16f0");
extern unsigned char gScript_944__02009480[];

void *Bilibin_GetActors(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_1e) return Lm907_1498;
    if (a == (int)Lconst_23) return Lm907_1600;
    if (a == (int)Lconst_20) return Lm907_16f0;
    return gScript_944__02009480;
}

extern void __CutsceneStart();
extern void __Func_801776c();
extern void __CutsceneEnd();

void OvlFunc_907_2008170(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29dd, 1);
    __CutsceneEnd();
}

extern unsigned char _EVENT_1e[], _EVENT_23[], _EVENT_20[];
extern unsigned char Lm907_1744[] __asm__(".Lm907_1744");
extern unsigned char Lm907_1a2c[] __asm__(".Lm907_1a2c");
extern unsigned char Lm907_1bc4[] __asm__(".Lm907_1bc4");
extern unsigned char Lm907_1738[] __asm__(".Lm907_1738");


int Bilibin_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_1e) return (int)Lm907_1744;
    if (ev == (int)_EVENT_23) return (int)Lm907_1a2c;
    if (ev == (int)_EVENT_20) return (int)Lm907_1bc4;
    return (int)Lm907_1738;
}

void OvlFunc_907_20081ec(void)
{
  int r0;
  __CutsceneStart();
 do { } while (0);
  r0 = 0x1472;
  __Func_801776c(r0, 1);
  __CutsceneEnd();
}

void OvlFunc_907_2008208(void)
{
  __CutsceneStart();
 do { __Func_801776c(0x146e, 1); } while (0);
  __CutsceneEnd();
}

void OvlFunc_907_2008224(void)
{
  int r1;
 do { __CutsceneStart(); r1 = 1; } while (0);
  __Func_801776c(0x1470, r1);
  __CutsceneEnd();
}

extern unsigned char *iwram_3001ebc;

void OvlFunc_907_2008240(void)
{
    unsigned short *p;

    __CutsceneStart();
    __MessageID(0x13ae);
    if (API_GetFlag(0x301) != 0) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    __ActorMessage(9, 0);
    API_SetFlag(0x301);
    __CutsceneEnd();
}

void OvlFunc_907_2008288(void) {
    __CutsceneStart();
    __MessageID(0x13b3);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

void OvlFunc_907_20082a8(void) {
    __CutsceneStart();
    __MessageID(0x13b7);
    __Func_8093054(0xe, 0);
    __CutsceneEnd();
}

void OvlFunc_907_20082c8(void) {
    __CutsceneStart();
    __MessageID(0x16bf);
    __Func_8093054(0x15, 0);
    __CutsceneEnd();
}

void OvlFunc_907_20082e8(void) {
    __CutsceneStart();
    __MessageID(0x16c8);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_907_2008308(void) {
    __CutsceneStart();
    __MessageID(0x16cc);
    __Func_8093054(0x12, 0);
    __CutsceneEnd();
}

extern unsigned char *iwram_3001ebc;
extern unsigned char *__MapActor_GetActor(int);
extern short Lm907_1d0c[] __asm__(".Lm907_1d0c");
extern void *Lm907_1cf0[] __asm__(".Lm907_1cf0");

void __PlaySound(int);
void __Func_8010560(void *, int, int);
void __MapActor_SetSpeed(int, int, int);
void __MapActor_SetAnim(int, int);
void __MapActor_TravelBy(int, int, int);
void __Func_8092208(int, int, int);
void __Func_8092b08(int, int);
void __CutsceneWait(int);
void __Func_8091e9c(int);
void OvlFunc_907_2008328(void)
{
    unsigned char *map;
    int iVar5;
    unsigned int uVar4;
    unsigned char *actor;

    int val;
    int arg1, arg2;

    map = iwram_3001ebc;
    __CutsceneStart();

    for (uVar4 = 8; uVar4 <= 0x41; uVar4++) {
        actor = (unsigned char *)__MapActor_GetActor(uVar4);
        if (actor != 0) {
            actor[0x55] = 0;
        }
    }

    val = *(unsigned short *)(map + 0x16c);
    iVar5 = (short)(val - 3);

    if (iVar5 == 6) {
        __PlaySound(0xbc);
    } else {
        __PlaySound(0x9e);
    }

    arg1 = Lm907_1d0c[iVar5 * 2];
    arg2 = Lm907_1d0c[iVar5 * 2 + 1];
    __Func_8010560(Lm907_1cf0[iVar5], arg1, arg2);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);

    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 0;

    *(int *)(iwram_3001ebc + 0x1c0) = 0x100;

    if (iVar5 == 6) {
        __MapActor_SetAnim(0, 2);
        API_MapActor_TravelBy(0, 0, -4);
    } else {
        API_Func_8092208(0, 3, -16);
    }

    if (iVar5 == 4) {
        __Func_8092b08(0, 3);
    } else {
        __Func_8092b08(0, 2);
    }

    __CutsceneWait(0x10);
    __Func_8091e9c(iVar5 + 3);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008404.s");

extern void __Func_8093c00(void);

void OvlFunc_907_2008578(void) {
    __Func_8093c00();
}

extern void *ActorCmd_ARRAY_907__020091c0;
extern void __Func_8093530(void);
extern void __Func_801776c(int, int);
extern void __Func_808f1c0(int, int);
extern void __Func_8091a58(int, int);
extern void __Func_8092a1c(int, int, void *);

INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008584.s");
extern void OvlFunc_907_20088f0(void);
extern void OvlFunc_907_2008ae0(void);
extern void OvlFunc_907_2008ed8(void);
extern void OvlFunc_907_2008d10(void);
extern void __StartTask(void *, int);

int Bilibin_MapInit(void)
{
    unsigned char *base;
    int offset;
    short a;

    base = iwram_3001ebc;
    offset = 0xe0;
    offset <<= 1;
    *(int *)(base + offset) = 0x80 << 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_1e) {
        OvlFunc_907_20088f0();
    } else if (a == (int)Lconst_23) {
        OvlFunc_907_2008ae0();
        __StartTask(OvlFunc_907_2008ed8, 0xc8 << 4);
    } else if (a == (int)Lconst_20) {
        OvlFunc_907_2008d10();
    }
    return 0;
}
extern void __Actor_SetSpriteFlags(void *, int);
extern void OvlFunc_907_20089cc(void);

void OvlFunc_907_20088f0(void)
{
    unsigned char *actor;
    int offset;
    short state_val;

    if (API_GetFlag(0x845) != 0) {
        API_MapActor_SetPos(9, 0, 0);
        API_Func_8092adc(0xe, 0xc0 << 6, 0);
        API_Func_8092adc(0xf, 0xa0 << 7, 0);
    } else {
        __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
        API_MapActor_SetPos(0x15, 0, 0);
    }
    actor = (unsigned char *)__MapActor_GetActor(8);
    *(int *)(actor + 0x1c) = 0xc0 << 9;
    offset = 0xe1;
    offset <<= 1;
    state_val = *(short *)((char *)&gState + offset);
    if (state_val == 10) {
        API_MapActor_SetPos(8, 0, 0);
    } else if (state_val == 9) {
        API_ClearFlag(0x12f);
    }
    if (API_GetFlag(0x109) == 0) {
        offset = 0xe1;
        offset <<= 1;
        if (*(short *)((char *)&gState + offset) == 11) {
            API_MapActor_SetPos(0x14, 0xf8 << 16, 0xd8 << 16);
        }
    }
    OvlFunc_907_20089cc();
    if (API_GetFlag(0x84a) != 0 && API_GetFlag(0x84b) == 0) {
        API_SetFlag(0xc1 << 2);
    }
}


extern void __Func_8010704(int, int, int, int, int, int);

INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_20089cc.s");
extern void __CopyMapTiles();
extern void OvlFunc_907_2008cb4(void);

INCLUDE_ASM("asm/maps/bilibin/OvlFunc_907_2008ae0.s");
extern unsigned char Lm907_1d28[] __asm__(".Lm907_1d28");

void OvlFunc_907_2008cb4(void)
{
    unsigned char *actor;
    int x;
    int z;
    unsigned char *ptr;
    unsigned int i;
    int b, a;

    actor = (unsigned char *)__MapActor_GetActor(8);
    x = *(int *)(actor + 8) >> 20;
    z = *(int *)(actor + 0x10) >> 20;
    ptr = Lm907_1d28;
    for (i = 0; i < 20; i += 2) {
        a = ptr[0];
        b = ptr[1];
        __Func_8010704(1, 0, 1, 1, a, b);
        ptr += 2;
    }
    __Func_8010704(0, 0, 1, 1, x, z);
}

extern void OvlFunc_907_2008fa0(void);
extern int __GetFlag(int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int);

void OvlFunc_907_2008d10(void)
{
    unsigned char *actor;
    unsigned int off;
    unsigned int field;
    unsigned int bound;
    unsigned int y;

    *(int *)((unsigned char *)iwram_3001ebc + 0x1c0) = 0x204;
    OvlFunc_907_2008fa0();

    off = 0xe1;
    off <<= 1;
    field = *(unsigned short *)((char *)&gState + off);
    bound = 0x80;
    field -= 3;
    field <<= 16;
    bound <<= 9;

    if (field <= bound) {
        if (__GetFlag(0x109) == 0) {
            actor = (unsigned char *)__MapActor_GetActor(0);
            __CutsceneStart();
            y = 0x80;
            y <<= 13;
            *(int *)(actor + 0xc) = y;
            __Func_80933f8(*(int *)(actor + 8), y, *(int *)(actor + 0x10), 0);
            __Func_800fe9c();
            __CutsceneEnd();
            __WaitFrames(1);
        }
    }
}

extern unsigned int iwram_3001ebc__a1 __asm__("iwram_3001ebc");

unsigned int OvlFunc_907_2008d80(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned char *r2;
    unsigned int i;

    base = (unsigned int *)iwram_3001ebc__a1;
    i = 8;
    r2 = (unsigned char *)base + 0x34;
    for (; i <= 0x41; i++) {
        unsigned int *p = *(unsigned int **)r2;
        r2 += 4;
        if (arg0 == ((int)*(unsigned int *)((char *)p + 8) >> 20) &&
            arg1 == ((int)*(unsigned int *)((char *)p + 0x10) >> 20))
            return (unsigned int)p;
    }
    return 0;
}

extern unsigned int gOvl_02009d3c[];
extern int __TestCollision(void *, void *);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_TravelTo(void *, int, int, int);
extern void __Actor_WaitMovement(void *);

void OvlFunc_907_2008db4(void)
{
    unsigned char *isaac;
    unsigned char *obj;
    unsigned int idx;
    int stk[3];
    int col;
    int zero;
    int x, y;
    int offset;
    short state;

    isaac = (unsigned char *)__MapActor_GetActor(0);
    idx = (*(unsigned short *)(isaac + 6)) >> 12;
    x = (*(short *)(isaac + 0xa) + ((int)(gOvl_02009d3c[idx]) >> 16)) >> 4;
    y = (*(short *)(isaac + 0x12) + (short)(gOvl_02009d3c[idx])) >> 4;
    obj = (unsigned char *)OvlFunc_907_2008d80(x, y);
    if (obj != 0) {
        zero = 0;
        *(obj + 0x22) = 2;
        stk[0] = *(int *)(obj + 8) + (gOvl_02009d3c[idx] & 0xffff0000);
        stk[1] = *(int *)(obj + 0xc);
        stk[2] = *(int *)(obj + 0x10) + (gOvl_02009d3c[idx] << 16);
        col = __TestCollision(obj, stk);
        if (col <= 0) {
            __Actor_SetAnim(isaac, 8);
            __WaitFrames(15);
            __PlaySound(0xb9);
            *(int *)(obj + 0x30) = 0x3333;
            *(int *)(obj + 0x34) = 0x3333;
            __Actor_TravelTo(obj, stk[0], stk[1], stk[2]);
            *(int *)(isaac + 0x30) = 0x3333;
            *(int *)(isaac + 0x34) = 0x3333;
            __Actor_TravelTo(isaac, stk[0], stk[1], stk[2]);
            __Actor_WaitMovement(obj);
            *(int *)(obj + 8) = stk[0];
            *(int *)(obj + 0x10) = stk[2];
            *(int *)(obj + 0x24) = zero;
            *(int *)(obj + 0x2c) = zero;
            __Actor_SetAnim(isaac, 1);
            offset = 0xe0;
            offset <<= 1;
            state = *(short *)((char *)&gState + offset);
            if (state == (int)Lconst_23) {
                OvlFunc_907_2008cb4();
            } else if (state == (int)Lconst_1e) {
                OvlFunc_907_20089cc();
            } else if (state == (int)Lconst_20) {
                OvlFunc_907_2008fa0();
            }
        }
    }
}
extern unsigned short Lm907_1d88[] __asm__(".Lm907_1d88");
extern void OvlFunc_907_2008f3c(unsigned char *);

void OvlFunc_907_2008ed8(void)
{
    unsigned int off;
    unsigned int lim_x;
    unsigned int lim_y;
    unsigned char *actor;
    short *ps;
    unsigned short *pu;
    int val;
    int limit;

    off = 0xfa;
    off <<= 1;
    actor = (unsigned char *)__MapActor_GetActor(*(int *)((char *)&gState + off));
    lim_x = 0x8e;
    lim_x <<= 16;
    if (*(int *)(actor + 8) < (int)lim_x) {
        lim_y = 0x80;
        lim_y <<= 12;
        if (*(int *)(actor + 0xc) < (int)lim_y) {
            ps = (short *)Lm907_1d88;
            pu = Lm907_1d88;
            val = *pu;
            if (*ps == 0) {
                OvlFunc_907_2008f3c(actor);
                val = *pu;
            }
            *pu = val + 1;
            if ((unsigned short)(val + 1) == 30) {
                *pu = 0;
            }
        } else {
            *(unsigned short *)Lm907_1d88 = 0;
        }
    }
}
extern unsigned char gScript_907__02009d7c[];
extern void *__CreateActor(int, int, int, int);
extern void __Actor_SetScript(void *, void *);
extern void __Sprite_SetAnim(void *, int);

void OvlFunc_907_2008f3c(unsigned char *actor)
{
    unsigned char *new_actor;
    unsigned char *sprite;
    int mask;

    new_actor = (unsigned char *)__CreateActor(0x18, *(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10));
    if (new_actor != 0) {
        sprite = *(unsigned char **)(new_actor + 0x50);
        __Actor_SetScript(new_actor, gScript_907__02009d7c);
        new_actor[0x55] = 0;
        new_actor[0x22] = 1;
        new_actor[0x23] = 2;
        if (sprite != 0) {
            __Sprite_SetAnim(sprite, 2);
            sprite[0x26] = 0;
            mask = 0xd;
            mask = -mask;
            sprite[5] = (sprite[5] & mask) | 4;
            sprite[9] |= 0xc;
        }
    }
}
void OvlFunc_907_2008fa0(void)
{
    unsigned char *actor;
    int z1;
    int b1, a1;
    int z2;
    int b2, a2;

    actor = (unsigned char *)__MapActor_GetActor(8);
    if (actor != 0) {
        z1 = *(int *)(actor + 0x10) >> 20;
        if (z1 == 6) {
            __Func_8010704(2, 0, 1, 1, 14, z1);
        } else {
            a1 = 14;
            b1 = 6;
            __Func_8010704(0, 0, 1, 1, a1, b1);
        }
        z2 = *(int *)(actor + 0x10) >> 20;
        if (z2 == 9) {
            __Func_8010704(2, 0, 1, 1, 14, z2);
        } else {
            a2 = 14;
            b2 = 9;
            __Func_8010704(1, 0, 1, 1, a2, b2);
        }
    }
}
INCLUDE_ASM("asm/maps/bilibin/bilibin_data.s");

INCLUDE_ASM("asm/maps/bilibin/imports.s");
