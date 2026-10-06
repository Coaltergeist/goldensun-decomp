/* rom_78dee8 (overlay file 895): consolidated TU — sol map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/overlays/rom_78dee8/sol/exports.s");

typedef struct { unsigned char _bytes[704]; } GlobalState__entr;
extern GlobalState__entr gState__entr __asm__("gState");
extern unsigned char _EVENT_13[], _EVENT_10[];
extern unsigned char Lm895_1d04[] __asm__(".Lm895_1d04");
extern unsigned char Lm895_1d64[] __asm__(".Lm895_1d64");
extern unsigned char MapEntrance_ARRAY_895__02009cd4[];

void *Sol_GetEntrances(void)
{
    GlobalState__entr *p = &gState__entr;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_13) return Lm895_1d04;
    if (ev == (int)_EVENT_10) return Lm895_1d64;
    return MapEntrance_ARRAY_895__02009cd4;
}

int Sol_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009f14[];

void *Sol_GetExits(void) {
    return (void *)gOvl_02009f14;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_13[], _EVENT_10[];
extern unsigned char Lm895_21b8[] __asm__(".Lm895_21b8");
extern unsigned char Lm895_2050[] __asm__(".Lm895_2050");
extern unsigned char Lm895_1fd8[] __asm__(".Lm895_1fd8");
extern unsigned char Lm895_22a8[] __asm__(".Lm895_22a8");
extern unsigned char Lm895_1fc0[] __asm__(".Lm895_1fc0");

int Sol_GetActors(void)
{
    GlobalState *p = &gState;
    int type = *(short *)((char *)p + 0x1c0);

    if (type == (int)_EVENT_10) {
        int sub = *(short *)((char *)p + 0x1c2);
        switch (sub) {
        case 0xb: case 0xc: case 0xd:
            return (int)Lm895_2050;
        case 0xe: case 0xf: case 0x10:
            return (int)Lm895_21b8;
        default:
            __Func_808b868(Lm895_1fd8);
            return (int)Lm895_1fd8;
        }
    }
    if (type == (int)_EVENT_13)
        return (int)Lm895_22a8;
    return (int)Lm895_1fc0;
}
extern unsigned char Lm895_22e4[] __asm__(".Lm895_22e4");
extern unsigned char Lm895_241c[] __asm__(".Lm895_241c");
extern unsigned char Lm895_2524[] __asm__(".Lm895_2524");
extern unsigned char Lm895_232c[] __asm__(".Lm895_232c");
extern unsigned char Lm895_22d8[] __asm__(".Lm895_22d8");

int Sol_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_13)
        return (int)Lm895_22e4;
    if (ev == (int)_EVENT_10) {
        int f1 = *(short *)((char *)p + 0x1c2);
        switch (f1) {
        case 0xb: case 0xc: case 0xd:
            return (int)Lm895_241c;
        case 0xe: case 0xf: case 0x10:
            return (int)Lm895_2524;
        default:
            return (int)Lm895_232c;
        }
    }
    return (int)Lm895_22d8;
}
void OvlFunc_895_2008154(void)
{
    API_CutsceneStart();
    API_PlaySound(0xb5);
    API_CopyMapTiles(0x10, 0x1c, 0x15, 3, 3, 2);
    API_WaitFrames(10);
    API_CopyMapTiles(0x10, 0x1e, 0x15, 3, 3, 2);
    API_WaitFrames(10);
    API_CopyMapTiles(0x10, 0x20, 0x15, 3, 3, 2);
    API_WaitFrames(10);
    API_Func_8092b08(0, 2);
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0, 0x78, 0x62);
    API_MapActor_SetAnim(0, 2);
    API_MapActor_TravelBy(0, 0, -8);
    API_CutsceneWait(10);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(2);
    API_CutsceneEnd();
}

extern unsigned char *iwram_3001ebc;

void OvlFunc_895_2008200(void)
{
    unsigned char *b;
    unsigned short *p;
    unsigned short v;

    __CutsceneStart();
    if (__GetFlag(0x81a)) {
        __Func_801776c(0x1034, 1);
    } else {
        __Func_801776c(0x1031, 1);
        if (__GetFlag(0xf01)) {
            b = iwram_3001ebc;
            p = (unsigned short *)(b + (0xb9 << 1));
            v = 1;
            *p = v;
        }
    }
    __CutsceneEnd();
}
INCLUDE_ASM("asm/overlays/rom_78dee8/sol/OvlFunc_895_2008258.s");


void OvlFunc_895_20083bc(void)
{
    unsigned char *b;
    unsigned short *p;
    unsigned short v;

    __CutsceneStart();
    if (__GetFlag(0x821)) {
        __Func_801776c(0x1034, 1);
    } else if (__GetFlag(0xf02)) {
        b = iwram_3001ebc;
        __Func_801776c(0x1031, 1);
        p = (unsigned short *)(b + (0xb9 << 1));
        v = 1;
        *p = v;
    } else {
        __Func_801776c(0x1031, 1);
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/overlays/rom_78dee8/sol/OvlFunc_895_2008420.s");

extern int __MapActor_GetActor(int);

void OvlFunc_895_200856c(void)
{
    unsigned char *actor = (unsigned char *)__MapActor_GetActor(9);
    int gridX;

    if (actor != 0) {
        gridX = *(int *)(actor + 8) >> 20;
        API_ClearFlag(0x302);
        API_ClearFlag(0x303);
        if (gridX == 0x5d) {
            API_SetFlag(0x303);
        } else if (gridX == 0x5f) {
            API_SetFlag(0x302);
        }
    }
}

void OvlFunc_895_20085ac(void)
{
    unsigned char *actor = (unsigned char *)__MapActor_GetActor(0xa);
    int gridX;

    if (actor != 0) {
        gridX = *(int *)(actor + 8) >> 20;
        API_ClearFlag(0x300);
        API_ClearFlag(0x301);
        if (gridX == 0x73) {
            API_SetFlag(0x300);
        } else if (gridX == 0x71) {
            API_SetFlag(0x301);
        }
    }
}

extern void OvlFunc_895_20097c0(int);

void OvlFunc_895_20085ec(void)
{
    unsigned char *actor = (unsigned char *)__MapActor_GetActor(9);
    int gridX;

    if (actor != 0) {
        gridX = *(int *)(actor + 8) >> 20;
        API_ClearFlag(0x310);
        API_ClearFlag(0x311);
        if (gridX == 0x63) {
            API_SetFlag(0x311);
        } else if (gridX == 0x65) {
            API_SetFlag(0x310);
        }
        OvlFunc_895_20097c0(0);
    }
}

extern void OvlFunc_895_20097c0(int);

void OvlFunc_895_2008634(void)
{
    unsigned char *actor = (unsigned char *)__MapActor_GetActor(0xa);
    int gridX;

    if (actor != 0) {
        gridX = *(int *)(actor + 8) >> 20;
        API_ClearFlag(0x312);
        API_ClearFlag(0x313);
        if (gridX == 0x67) {
            API_SetFlag(0x313);
        } else if (gridX == 0x69) {
            API_SetFlag(0x312);
        }
        OvlFunc_895_20097c0(0);
    }
}

void OvlFunc_895_200867c(void)
{
    unsigned char *actor = (unsigned char *)__MapActor_GetActor(0xb);
    int gridX;

    if (actor != 0) {
        gridX = *(int *)(actor + 8) >> 20;
        API_ClearFlag(0x314);
        API_ClearFlag(0x315);
        if (gridX == 0x6b) {
            API_SetFlag(0x315);
        } else if (gridX == 0x6d) {
            API_SetFlag(0x314);
        }
        OvlFunc_895_20097c0(0);
    }
}

void OvlFunc_895_20086c4(void)
{
    unsigned char *actor = (unsigned char *)__MapActor_GetActor(0xc);
    int gridX;

    if (actor != 0) {
        gridX = *(int *)(actor + 8) >> 20;
        API_ClearFlag(0x316);
        API_ClearFlag(0x317);
        if (gridX == 0x6f) {
            API_SetFlag(0x317);
        } else if (gridX == 0x71) {
            API_SetFlag(0x316);
        }
        OvlFunc_895_20097c0(0);
    }
}

void OvlFunc_895_200870c(void)
{
    unsigned char *actor = (unsigned char *)__MapActor_GetActor(0xd);
    int gridX;

    if (actor != 0) {
        gridX = *(int *)(actor + 8) >> 20;
        API_ClearFlag(0x318);
        API_ClearFlag(0x319);
        if (gridX == 0x73) {
            API_SetFlag(0x319);
        } else if (gridX == 0x75) {
            API_SetFlag(0x318);
        }
        OvlFunc_895_20097c0(0);
    }
}

void OvlFunc_895_2008754(void)
{
    unsigned char *actor = (unsigned char *)__MapActor_GetActor(0xe);
    int gridX;

    if (actor != 0) {
        gridX = *(int *)(actor + 8) >> 20;
        API_ClearFlag(0x31a);
        API_ClearFlag(0x31b);
        if (gridX == 0x77) {
            API_SetFlag(0x31b);
        } else if (gridX == 0x79) {
            API_SetFlag(0x31a);
        }
        OvlFunc_895_20097c0(0);
    }
}


unsigned int OvlFunc_895_200879c(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned int *r2;
    unsigned int i;
    unsigned int *p;

    base = (unsigned int *)iwram_3001ebc;
    i = 8;
    r2 = (unsigned int *)((char *)base + 0x34);
    do {
        p = (unsigned int *)*r2;
        r2++;
        if (arg0 == ((int)*(unsigned int *)((char *)p + 8) >> 20)) {
            if (arg1 == ((int)*(unsigned int *)((char *)p + 0x10) >> 20))
                return (unsigned int)p;
        }
        i++;
    } while (i <= 0x41);
    return 0;
}

extern unsigned int OvlFunc_895_200879c(unsigned int, unsigned int);
extern void OvlFunc_895_200856c(void);
extern void OvlFunc_895_20085ac(void);
extern void OvlFunc_895_20085ec(void);
extern void OvlFunc_895_2008634(void);
extern void OvlFunc_895_200867c(void);
extern void OvlFunc_895_20086c4(void);
extern void OvlFunc_895_200870c(void);
extern void OvlFunc_895_2008754(void);

extern unsigned int Lm895_265c[] __asm__(".Lm895_265c");

void OvlFunc_895_20087d0(void)
{
    unsigned char *isaac;
    unsigned char *obj;
    unsigned int idx;
    unsigned int t2;
    int stk[3];
    int col;
    int sub;
    GlobalState *p;
    int zero;

    isaac = (unsigned char *)__MapActor_GetActor(0);
    idx = (*(unsigned short *)(isaac + 6)) >> 12;
    obj = (unsigned char *)OvlFunc_895_200879c(
        (*(short *)(isaac + 0xa) + ((int)(Lm895_265c[idx]) >> 16)) >> 4,
        (*(short *)(isaac + 0x12) + (short)(Lm895_265c[idx])) >> 4);
    if (obj != 0) {
        zero = 0;
        *(obj + 0x22) = 2;
        stk[0] = *(int *)(obj + 8) + (Lm895_265c[idx] & 0xffff0000);
        stk[1] = *(int *)(obj + 0xc);
        stk[2] = *(int *)(obj + 0x10) + (Lm895_265c[idx] << 16);
        col = __TestCollision(obj, stk);
        if (col <= 0) {
            __Actor_SetAnim(isaac, 8);
            __WaitFrames(0xf);
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
            p = &gState;
            sub = *(short *)((char *)p + 0x1c2);
            switch (sub) {
            case 0xb: case 0xc: case 0xd:
                OvlFunc_895_200856c();
                OvlFunc_895_20085ac();
                break;
            case 0xe: case 0xf: case 0x10:
                OvlFunc_895_20085ec();
                OvlFunc_895_2008634();
                OvlFunc_895_200867c();
                OvlFunc_895_20086c4();
                OvlFunc_895_200870c();
                OvlFunc_895_2008754();
                break;
            }
        }
    }
}

extern void OvlFunc_895_200892c(void);
extern void OvlFunc_895_2008a24(void);

int Sol_MapInit(void)
{
    GlobalState *p = &gState;
    int a = *(short *)((char *)p + 0x1c0);

    if (a == (int)_EVENT_13) {
        OvlFunc_895_200892c();
    } else if (a == (int)_EVENT_10) {
        OvlFunc_895_2008a24();
    }
    return 0;
}

extern unsigned char iwram_3001ebc_arr[] __asm__("iwram_3001ebc");
extern unsigned char Lm895_269c_arr[] __asm__(".Lm895_269c");
extern void OvlFunc_895_2009ac8(void);

void __SetFlag(int);
int __GetFlag(int);
void __StartTask(void *, int);
void __Func_8010704(int, int, int, int, int, int);
void __MapActor_SetPos(int, int, int);

void OvlFunc_895_200892c(void) {
    extern unsigned char iwram_3001ebc_arr[] __asm__("iwram_3001ebc");
    extern unsigned char Lm895_269c_arr[] __asm__(".Lm895_269c");
    extern void OvlFunc_895_2009ac8(void);

    int s;

    __SetFlag(0x144);
    *(int *)(*(unsigned char **)iwram_3001ebc_arr + 0x1c0) = 0x100;
    if (__GetFlag(0x814) != 0) {
        int zero = 0;
        *(int *)Lm895_269c_arr = zero;
        __StartTask(OvlFunc_895_2009ac8, 0xc80);
    }
    if (__GetFlag(0x879) != 0) {
        __Func_8010704(5, 6, 1, 1, 6, 6);
        __Func_8010704(5, 6, 1, 1, 7, 6);
        __Func_8010704(5, 6, 1, 1, 8, 6);
        __Func_8010704(0, 1, 3, 1, 6, 5);
    }
    if (__GetFlag(0x815) != 0) {
        API_MapActor_SetPos(8, 0x780000, 0xe80000);
        s = 14;
        __Func_8010704(2, 10, 1, 1, 6, s);
        __Func_8010704(2, 10, 1, 1, 7, s);
        __Func_8010704(2, 10, 1, 1, 8, s);
    }
}
INCLUDE_ASM("asm/overlays/rom_78dee8/sol/OvlFunc_895_2008a24.s");
extern void __Func_8093054(int, int);

void OvlFunc_895_2008d1c(void)
{
    unsigned char *actor;

    API_CutsceneStart();
    *(int *)(iwram_3001ebc + 0x1c0) = 0x100;
    API_MapTransitionIn();
    API_MapActor_SetAnim(0, 0);
    API_CutsceneWait(4);
    API_Func_80933f8(-1, -1, -1, 0);
    API_Func_80933d4(0x9999, 0x1333);
    API_Func_80933f8(0x99 << 19, -1, 0x88 << 16, 1);

    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(8, *(int *)(actor + 8), *(int *)(actor + 0x10));
    }
    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(5, *(int *)(actor + 8), *(int *)(actor + 0x10));
    }
    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)(actor + 8), *(int *)(actor + 0x10));
    }

    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    API_MapActor_SetSpeed(5, 0x9999, 0x4ccc);
    API_MapActor_SetSpeed(1, 0x9999, 0x4ccc);
    API_MapActor_SetAnim(1, 2);
    API_MapActor_SetAnim(5, 2);
    API_MapActor_SetAnim(8, 2);
    API_MapActor_TravelBy(1, -0x10, 0);
    API_MapActor_TravelBy(5, 0x10, 0);
    API_MapActor_TravelBy(8, 0, -0x20);
    API_MapActor_WaitMovement(1);
    API_MapActor_SetAnim(1, 0);
    API_MapActor_SetAnim(5, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(5, 0xc000, 0);
    API_MapActor_WaitMovement(8);
    API_MapActor_SetAnim(8, 1);
    API_CutsceneWait(0x28);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_Func_8092adc(8, 0x3000, 0x28);
    API_Func_8092adc(8, 0x5000, 0x28);
    API_Func_8092adc(8, 0x3000, 0x14);
    API_MapActor_Jump(8, 4, 0x14);
    API_MessageID(0xfd3);
    __Func_8093054(0x4008, 0);
    API_CutsceneWait(0x14);
    API_Func_80933f8(0x99 << 19, -1, 0x94 << 16, 1);

    API_MapActor_SetAnim(1, 2);
    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_SetAnim(5, 2);
    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(5, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_SetAnim(8, 2);
    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(8, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }

    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(5, 0, 0);
    API_MapActor_WaitMovement(8);
    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(5, 1);
    API_MapActor_SetAnim(8, 1);
    API_SetFlag(0x802);
    *(int *)(iwram_3001ebc + 0x1c0) = 0x204;
    API_ClearFlag(0x12f);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/overlays/rom_78dee8/sol/OvlFunc_895_2008f8c.s");
void OvlFunc_895_200961c(void)
{
    unsigned char *actor;

    API_CutsceneStart();
    *(int *)(iwram_3001ebc + 0x1c0) = 0x204;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x14);

    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(8, *(int *)(actor + 8), *(int *)(actor + 0x10));
    }

    API_MapActor_SetSpeed(8, 0x10000, 0x8000);
    API_MapActor_SetAnim(8, 2);
    API_MapActor_TravelBy(8, 0x18, -10);
    API_MapActor_WaitMovement(8);
    API_MapActor_SetAnim(8, 1);
    API_CutsceneWait(6);

    API_Func_8092adc(8, 0xb000, 0);
    API_Func_8092adc(0, 0xc000, 0x28);

    API_Func_80933d4(0x26666, 0x4ccc);
    API_Func_80933f8(0xd1 << 19, -1, 0x83 << 18, 1);
    API_Func_8093530();
    API_CutsceneWait(0x14);

    API_Func_80933d4(0x19999, 0x3333);
    API_Func_80933f8(0xeb << 19, -1, 0x83 << 18, 1);
    API_Func_8093530();
    API_CutsceneWait(0x14);

    API_Func_80933d4(0x33333, 0x6666);
    API_Func_80933f8(0x6e90000, -1, 0x89 << 18, 1);
    API_Func_8093530();
    API_CutsceneWait(0x14);

    API_Func_80925cc(8, 2);
    API_Func_8092adc(8, 0, 0x1e);
    API_MessageID(0x103a);
    API_ActorMessage_Wait(0x4008, 0, 0xa);
    API_MapActor_Emote(8, 0x100, 0x28);
    API_Func_80925cc(8, 1);
    API_Func_8092adc(8, 0x5000, 0x14);
    API_ActorMessage_Wait(0x4008, 0, 0xa);
    API_MapActor_SetAnim(8, 2);

    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(8, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(8);
    API_MapActor_SetPos(8, 0, 0);
    API_SetFlag(0x825);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/overlays/rom_78dee8/sol/OvlFunc_895_20097c0.s");

void OvlFunc_895_2009aac(void)
{
    __CutsceneStart();
    API_Func_801776c(0x953, 1);
    API_CutsceneEnd();
}

extern int Lm895_269c_i __asm__(".Lm895_269c");
extern void __Func_8012330(int, int, int);
extern unsigned int __Random(void);

static inline void Func_8012330_shift(int a, int b, int c)
{
    __Func_8012330(a << 9, b << 10, c << 9);
}

static inline void Func_8012330_neg(int a, int b, int c)
{
    __Func_8012330(-a, -b, c);
}

void OvlFunc_895_2009ac8(void)
{
    if (Lm895_269c_i != 0) {
        Lm895_269c_i--;
        if (Lm895_269c_i == 0x28) {
            Func_8012330_neg(1, 1, 0xe666);
        }
    } else {
        if (((__Random() * 0x78) >> 16) == 0) {
            __PlaySound(0x8a);
            Func_8012330_shift(0x80, 0x80, 0x80);
            Lm895_269c_i = 0x50;
        }
    }
}

INCLUDE_ASM("asm/overlays/rom_78dee8/sol/imports.s");
INCLUDE_ASM("asm/overlays/rom_78dee8/sol/sol_data.s");
