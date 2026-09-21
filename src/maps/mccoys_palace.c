// fakematch
/* rom_79c738 (overlay file 909): consolidated TU — mccoys_palace map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/mccoys_palace/exports.s");

extern unsigned short __atan2(int, int);

int OvlFunc_909_2008030(unsigned char *actor)
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

extern unsigned char gOvl_0200a638[];

unsigned int MccoysPalace_GetEntrances(void) {
    return (unsigned int)gOvl_0200a638;
}

int MccoysPalace_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a920[];

void *MccoysPalace_GetExits(void) {
    return (void *)gOvl_0200a920;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Lm909_actorsevent21[] __asm__(".Lm909_actorsevent21");
__asm__(".equ .Lm909_actorsevent21, 0x21");
extern unsigned char Lm909_29b4[] __asm__(".Lm909_29b4");
extern unsigned char Lm909_299c[] __asm__(".Lm909_299c");
extern void __Func_808b868(void *);

void *MccoysPalace_GetActors(void)
{
    int offset = 0xe0;
    offset <<= 1;
    if (*(short *)((char *)&gState + offset) == (int)Lm909_actorsevent21) {
        __Func_808b868(Lm909_29b4);
        if (__GetFlag(0x84e)) {
            Lm909_29b4[0xa6] = 2;
            Lm909_29b4[0xbe] = 0;
            Lm909_29b4[0xd6] = 3;
            Lm909_29b4[0xd6 + 0x18] = 1;
        }
        return Lm909_29b4;
    }
    return Lm909_299c;
}
extern unsigned char _EVENT_21[];
extern unsigned char Lm909_2ca8[] __asm__(".Lm909_2ca8");
extern unsigned char Lm909_2c9c[] __asm__(".Lm909_2c9c");

int MccoysPalace_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_21) return (int)Lm909_2ca8;
    return (int)Lm909_2c9c;
}

#include "message.h"

extern void OvlFunc_909_20083ec();
extern void OvlFunc_909_2008408();
extern void OvlFunc_909_2008424();

void OvlFunc_909_2008130(void)
{
    __CutsceneStart();
    __MessageID(MSG_1420);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

extern void __CutsceneStart(void);
extern void __MapActor_Emote(int, int, int);
extern void __Func_80925cc(int, int);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_909_2008150(void)
{
    __CutsceneStart();
    API_MapActor_Emote(0xe, 0x102, 0);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0x28);
    __MessageID(0x1764);
    __ActorMessage_Wait(0xe, 0, 0x14);
    __MapActor_Face(0xe, 0, 0);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0xe, 0, 0xa);
    API_Func_8092adc(0xe, 0xb000, 0xa);
    __CutsceneEnd();
}
void OvlFunc_909_20081b4(void)
{
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    int i;
    for (i = 0; i < 1; i++) {
        __CutsceneStart();
        __MessageID(0x1750);
        if (__GetFlag(0x302)) {
            __MessageID(0x1768);
        }
        __ActorMessage(0xf, 0);
        __SetFlag(0x302);
        __CutsceneEnd();
    }
}

void OvlFunc_909_20081f4(void) {
    __CutsceneStart();
    __MessageID(0x1769);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

extern unsigned char *iwram_3001ebc;

void OvlFunc_909_2008214(void)
{
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    if (__GetFlag(0x202)) {
        __MessageID(0x174b);
    } else if (__GetFlag(0x84e)) {
        __MessageID(0x176e);
    } else {
        __MessageID(0x1432);
        if (__GetFlag(0x84d)) {
            p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
            *p = *p + 1;
        }
    }
    t2 = 0x11;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}

void OvlFunc_909_200828c(void)
{
        __CutsceneStart();
        API_MessageID(0x1756);
        if (API_GetFlag(0x303)) {
            API_MessageID(0x176c);
        }
        API_ActorMessage(0xf, 0);
        API_SetFlag(0x303);
        API_CutsceneEnd();
}

void OvlFunc_909_20082cc(void) {
    extern void __ActorMessage(unsigned int, int);
    __CutsceneStart();
    if (__GetFlag(0x202) != 0) {
        __MessageID(0x174c);
    } else if (__GetFlag(0x845) == 0) {
        __MessageID(0x1436);
    } else {
        __MessageID(0x1434);
        if (__GetFlag(0x84e) != 0) {
            __MessageID(0x176f);
        }
    }
    __ActorMessage(0x11, 0);
    __CutsceneEnd();
}

void OvlFunc_909_2008338(void)
{
    /* iwram_3001ebc is declared file-scope above as unsigned char* (:93). */
    extern int __GetFlag(int);
    extern void __PlaySound(int);
    extern void __Func_80118a8(int);
    extern void __CutsceneStart(void);
    extern void __CutsceneWait(int);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void __MapActor_TravelBy(int, int, int);
    extern void __Func_8092208(int, int, int);
    extern void __Func_8091e9c(int);
    extern void __CutsceneEnd(void);
    extern void __Func_80118c0(int);

    int flag;
    unsigned char *map;

    map = iwram_3001ebc;
    flag = 0;
    if (*(short *)(map + (0xb6 << 1)) == 9) {
        if (!__GetFlag(0x200)) {
            __PlaySound(0xbc);
            flag = 1;
        }
    } else {
        __PlaySound(0x9e);
        flag = 1;
    }

    if (flag) {
        __Func_80118a8(1);
        __Func_80118a8(2);
    }

    __CutsceneStart();
    __CutsceneWait(10);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    __MapActor_SetAnim(0, 2);

    if (*(short *)(map + (0xb6 << 1)) == 9) {
        API_MapActor_TravelBy(0, 0, -16);
    } else {
        API_Func_8092208(0, 3, -16);
    }

    __CutsceneWait(16);
    __Func_8091e9c(*(short *)(map + (0xb6 << 1)));
    __CutsceneEnd();
    __Func_80118c0(1);
    __Func_80118c0(2);
}

void OvlFunc_909_20083ec(void)
{
  int v;
 do { __CutsceneStart(); } while (0);
  v = 0x174d;
  __Func_801776c(v, 1);
  __CutsceneEnd();
}

void OvlFunc_909_2008408(void)
{
  int v;
  __CutsceneStart();
  v = 0x174e;
 do { __Func_801776c(v, 1); __CutsceneEnd(); } while (0);
}


void OvlFunc_909_2008424()
{
    if (__GetFlag())
        OvlFunc_909_20083ec();
    else
        OvlFunc_909_2008408();
}

extern int __GetFlag(int);
extern void OvlFunc_909_20084ec(int, int, int);

void OvlFunc_909_200843c(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x84 << 2);
    } else {
        OvlFunc_909_20084ec(0x15, 0xb6, 0x84 << 2);
    }
}


void OvlFunc_909_2008468(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x211);
    } else {
        OvlFunc_909_20084ec(0x16, 0xb7, 0x211);
    }
}


void OvlFunc_909_2008494(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x212);
    } else {
        OvlFunc_909_20084ec(0x17, 0xba, 0x212);
    }
}


void OvlFunc_909_20084c0(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x213);
    } else {
        OvlFunc_909_20084ec(0x18, 0xbd, 0x213);
    }
}

extern void *__Func_808e078(int, int, int);
extern int __Func_8091a58(int, int);
extern void __DeleteActor(void *);
extern void __PlaySound(int);
extern void __ClearFlag(int);

void OvlFunc_909_20084ec(int a0, int a1, int a2)
{
    void *actor;
    __CutsceneStart();
    actor = __Func_808e078(0, a0, a1);
    if (__Func_8091a58(a1, 0) != -1) {
        __MapActor_SetAnim(a0, 2);
        __SetFlag(0x84e);
        __SetFlag(a2);
        __ClearFlag(0x322);
        __ClearFlag(0x202);
    } else {
        __PlaySound(0x7d);
        __MapActor_SetAnim(a0, 5);
    }
    __DeleteActor(actor);
    __CutsceneEnd();
}

void OvlFunc_909_2008568(void)
{
    extern void __ActorMessage();
    if (!__GetFlag(0x84e) && __GetFlag(0x322)) {
        __CutsceneStart();
        API_MapActor_Emote(0x13, 0x100, 0);
        API_Func_8092adc(0x13, 0x7000, 0xa);
        __Func_80925cc(0x13, 2);
        __CutsceneWait(0x14);
        __MessageID(0x1748);
        __ActorMessage(0x13, 0);
        API_MapActor_SetSpeed(0, 0x10000, 0x8000);
        API_MapActor_TravelToAnimWait(0, 0x268, 0x2fa);
        API_Func_8092adc(0x13, 0xd000, 0xa);
        __CutsceneEnd();
    }
}
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_SetPos(int, int, int);
extern void __SetFlag(int);
void OvlFunc_909_20085f4(void)
{
    extern int __GetFlag(int);
    extern void __CutsceneStart(void);
    extern void __MapActor_Face(int, int, int);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_TravelToAnimWait(int, int, int);
    extern void __Func_8092adc(int, int, int);
    extern void __MapActor_DoAnim(int, int);
    extern void __CutsceneWait(int);
    extern void __MessageID(int);
    extern void __ActorMessage_Wait(int, int, int);
    extern void __MapActor_SetPos(int, int, int);
    extern void __SetFlag(int);
    extern void __CutsceneEnd(void);

    unsigned char *base;

    if (__GetFlag(0x84e) != 0) {
        __CutsceneStart();
        API_MapActor_Face(0, 0x13, 0);
        API_MapActor_SetSpeed(0x13, 0x9999, 0x4ccc);
        API_MapActor_TravelToAnimWait(0x13, 0x26e, 0x2fc);
        API_Func_8092adc(0x13, 0xf000, 0x14);
        API_MapActor_DoAnim(0x13, 3);
        API_MapActor_DoAnim(0x11, 3);
        __CutsceneWait(0x14);
        API_MapActor_Face(0x13, 0, 0);
        __CutsceneWait(0x14);
        API_MapActor_DoAnim(0x13, 3);
        __MessageID(0x1749);
        API_ActorMessage_Wait(0x13, 0, 0xa);
        API_MapActor_SetSpeed(0x13, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(0x13, 0x23a, 0x2f6);
        API_MapActor_SetPos(0x13, 0, 0);
        base = iwram_3001ebc;
        *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
        __SetFlag(0x85e);
        __SetFlag(0x333);
        __CutsceneEnd();
    }
}
extern void OvlFunc_909_20088c0(void);
extern void OvlFunc_909_200979c(void);
extern void OvlFunc_909_20099b0(void);
extern void OvlFunc_909_200a1bc(void);
extern void *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __Func_80118c0(int);

int MccoysPalace_MapInit(void)
{
    unsigned char *base;
    int r6;
    int ev;

    base = iwram_3001ebc;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;

    __Func_80118c0(1);
    __Func_80118c0(2);
    __SetFlag(0x84b);
    if (__GetFlag(0x109)) {
        __ClearFlag(0x80 << 2);
    }

    if (!__GetFlag(0x84f) && !__GetFlag(0x845)) {
        int off = 0xe1 << 1;
        ev = *(short *)((char *)&gState + off);
        if (ev == 0x1d) {
            OvlFunc_909_20088c0();
        } else if (ev == 9) {
            if (__GetFlag(0x321)) {
                OvlFunc_909_200979c();
            }
        }
    } else {
        r6 = __GetFlag(0x84e);
        if (r6 == 0) {
            int off = 0xe1 << 1;
            ev = *(short *)((char *)&gState + off);
            if (ev == 0x1d) {
                if (!__GetFlag(0x85e)) {
                    if (__GetFlag(0x845)) {
                        OvlFunc_909_20099b0();
                    }
                }
            } else if (ev == 0x1c) {
                if (__GetFlag(0x322)) {
                    if (__GetFlag(0x109)) {
                        API_Func_8010704(0x26, 0x37, 4, 1, 0x26, 0x2d);
                        API_Func_8010704(0x2a, 0x37, 4, 1, 0x26, 0x2e);

                        API_MapActor_SetPos(0x15, 0x9a << 18, 0xb6 << 18);
                        API_MapActor_SetPos(0x16, 0x9e << 18, 0xb6 << 18);
                        API_MapActor_SetPos(0x17, 0xa2 << 18, 0xb6 << 18);
                        API_MapActor_SetPos(0x18, 0xa6 << 18, 0xb6 << 18);

                        __Actor_SetSpriteFlags(__MapActor_GetActor(0x15), 0);
                        __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 0);
                        __Actor_SetSpriteFlags(__MapActor_GetActor(0x17), 0);
                        __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);

                        ((unsigned char *)__MapActor_GetActor(0x15))[0x55] = r6;
                        ((unsigned char *)__MapActor_GetActor(0x16))[0x55] = r6;
                        ((unsigned char *)__MapActor_GetActor(0x17))[0x55] = r6;
                        ((unsigned char *)__MapActor_GetActor(0x18))[0x55] = r6;

                        *(int *)((char *)__MapActor_GetActor(0x15) + 0xc) = 0xfffc0000;
                        *(int *)((char *)__MapActor_GetActor(0x16) + 0xc) = 0xfffc0000;
                        *(int *)((char *)__MapActor_GetActor(0x17) + 0xc) = 0xfffc0000;
                        *(int *)((char *)__MapActor_GetActor(0x18) + 0xc) = 0xfffc0000;
                    } else {
                        OvlFunc_909_200a1bc();
                    }
                }
            }
        }
    }
    return 0;
}

extern unsigned char gOvl_0200a5c0[];
extern void *__Func_8093554(void);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __MapActor_SetIdle(int);
extern void *__MapActor_GetActor(int);
extern void __MapTransitionIn(void);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern int __Func_8091c7c(int, int);
extern void __Func_8091e9c(int);
extern int __Func_800fe9c(void);

static inline int API_ShowActorMessage_NoWait(int a0, int a1) {
    extern int __ShowActorMessage_NoWait(int, int);
    return __ShowActorMessage_NoWait(a0, a1);
}

void OvlFunc_909_20088c0(void)
{
    unsigned char *base;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    {
        char *ptr = (char *)__Func_8093554();
        int zero = 0;
        ptr[0x55] = zero;
        API_Func_80933f8(0x37e0000, -1, 0xa6 << 18, zero);
    }
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    if (API_GetFlag(0x85f) != 0) {
        API_Func_80933f8(0x37e0000, -1, 0x2ba0000, 0);
        API_MapActor_SetPos(0x13, 0xdb << 18, 0x27a0000);
        API_Func_8092adc(0x13, 0xc0 << 6, 0);
        API_MapActor_SetPos(0, 0x37e0000, 0x31e0000);
    }

    __Func_800fe9c();
    API_WaitFrames(1);
    base = iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x100;
    *(int *)(base + 0x1c8) = 0x28;
    API_MapTransitionIn();
    API_WaitMapTransition();

    if (API_GetFlag(0x85f) == 0) {
        API_CutsceneWait(0x50);
        API_MapActor_SetPos(0x13, 0x37e0000, 0x31e0000);
        API_Func_80933d4(0x9999, 0x1333);
        API_Func_80933f8(0x37e0000, -1, 0x2ba0000, 1);
        API_MapActor_SetSpeed(0x13, 0xcccc, 0x6666);
        API_MapActor_TravelToAnim(0x13, 0x37e, 0x2b8);
        API_CutsceneWait(0x50);
        API_Func_80933f8(0x37e0000, -1, 0x2980000, 1);
        API_MapActor_WaitMovement(0x13);
        API_MapActor_TravelToAnimWait(0x13, 0x34a, 0x2b8);
        API_MapActor_TravelToAnimWait(0x13, 0x34a, 0x27c);
        API_Func_8092adc(0x12, 0x7000, 0x14);
        API_MapActor_TravelToAnimWait(0x13, 0x36c, 0x27a);
        API_MapActor_DoAnim(0x13, 3);
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(0x12, 3);
        API_CutsceneWait(0xa);
        API_MessageID(0x1437);
        API_ActorMessage_Wait(0x2012, 0, 0xa);
        API_Func_80925cc(0x13, 2);
        API_ActorMessage_Wait(0x13, 0, 0x14);
        API_Func_80925cc(0x12, 1);
        API_ActorMessage_Wait(0x2012, 0, 0xa);
        API_MapActor_DoAnim(0x13, 3);
        API_CutsceneWait(0x28);
        API_MapActor_Emote(0x12, 0x105, 0x3c);
        API_ActorMessage(0x2012, 0);
        API_Func_80925cc(0x12, 1);
        API_ActorMessage_Wait(0x2012, 0, 0xa);
        API_MapActor_Surprise(0x13, 0x102);
        API_CutsceneWait(0x3c);
        API_Func_8092adc(0x13, 0x3000, 0xa);
        API_Func_8092adc(0x12, 0x5000, 0xa);
        API_Func_80933f8(0x37e0000, -1, 0x2ba0000, 1);
        API_MapActor_SetPos(0, 0x37e0000, 0x31e0000);
        API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
        API_MapActor_TravelToAnimWait(0, 0x37e, 0x2d6);
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(0xa);
        API_Func_80925cc(0x12, 1);
        API_ActorMessage(0x2012, 0);
        API_Func_80933f8(0x37e0000, -1, 0x2980000, 1);
        API_MapActor_TravelToAnimWait(0, 0x37e, 0x2ac);
        {
            int *actor = (int *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_SetPos(1, actor[2], actor[4]);
            }
        }
        {
            int *actor = (int *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_SetPos(2, actor[2], actor[4]);
            }
        }
        if (API_GetFlag(3)) {
            int *actor = (int *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_SetPos(3, actor[2], actor[4]);
            }
        }
        API_MapActor_SetSpeed(1, 0x9999, 0x4ccc);
        API_MapActor_SetSpeed(2, 0x9999, 0x4ccc);
        API_MapActor_SetSpeed(3, 0x80 << 9, 0x80 << 8);
        API_MapActor_SetAnim(1, 2);
        API_MapActor_SetAnim(2, 2);
        API_MapActor_SetAnim(3, 2);
        API_MapActor_TravelBy(1, -0x10, 0x10);
        API_MapActor_TravelBy(2, 0x10, 0x10);
        if (API_GetFlag(3)) {
            API_MapActor_TravelBy(3, 0x20, 0x10);
        }
        API_MapActor_WaitMovement(2);
        API_MapActor_SetAnim(1, 1);
        API_MapActor_SetAnim(2, 1);
        API_MapActor_SetAnim(3, 1);
        API_CutsceneWait(0xa);
        API_Func_8092adc(3, 0xc0 << 8, 0);
        API_Func_8092adc(1, 0xc0 << 8, 0);
        API_Func_8092adc(2, 0xc0 << 8, 0x14);
        API_MapActor_Jump(0x12, 2, 0x14);
        API_Func_8092adc(0x12, 0xe0 << 7, 0xa);
        API_ActorMessage_Wait(0x2012, 0, 0xa);
        API_Func_8092adc(0x13, 0x80 << 5, 0xa);
        API_MapActor_DoAnim(0x13, 3);
        API_Func_8092adc(0x12, 0xa0 << 7, 0x28);
        API_Func_8092adc(0x12, 0xe0 << 7, 0xa);
        API_MapActor_DoAnim(0x12, 4);
        API_ActorMessage_Wait(0x2012, 0, 0xa);
        API_MapActor_Surprise(0x13, 0x102);
        API_CutsceneWait(0x28);
        API_Func_8092adc(0x12, 0xa0 << 7, 0x14);
        API_MapActor_Emote(0x12, 0x105, 0x28);
        API_ShowActorMessage_NoWait(0x2012, 0);
        API_Func_8092adc(1, 0xe0 << 8, 0);
        API_Func_8092adc(2, 0xa0 << 8, 0);
        if (__Func_8091c7c(0, 0) != 0) {
label_cb6:
            API_MessageID(MSG_1440);
            API_ActorMessage_Wait(0x2012, 0, 0xa);
            API_Func_8092adc(0x13, 0xc0 << 6, 0);
            API_MapActor_DoAnim(0x12, 4);
            API_ActorMessage_Wait(0x2012, 0, 0xa);
            API_Func_8092adc(1, 0xc0 << 8, 0);
            API_Func_8092adc(2, 0xc0 << 8, 0);
            API_MapActor_DoAnim(0, 3);
            API_MapActor_SetAnim(1, 2);
            {
                short *actor = (short *)__MapActor_GetActor(0);
                if (actor != 0) {
                    API_MapActor_TravelTo(1, actor[5], actor[9]);
                }
            }
            API_MapActor_SetAnim(2, 2);
            {
                short *actor = (short *)__MapActor_GetActor(0);
                if (actor != 0) {
                    API_MapActor_TravelTo(2, actor[5], actor[9]);
                }
            }
            if (API_GetFlag(3)) {
                API_MapActor_SetAnim(3, 2);
                {
                    short *actor = (short *)__MapActor_GetActor(0);
                    if (actor != 0) {
                        API_MapActor_TravelTo(3, actor[5], actor[9]);
                    }
                }
            }
            API_MapActor_WaitMovement(2);
            API_MapActor_SetPos(1, 0, 0);
            API_MapActor_SetPos(2, 0, 0);
            API_MapActor_SetPos(3, 0, 0);
            API_SetFlag(0x85f);
            API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
            API_MapActor_TravelToAnimWait(0, 0x37e, 0xbc << 2);
            *(int *)(iwram_3001ebc + 0x1c8) = 0x10;
            __MapTransitionOut();
            API_WaitMapTransition();
            goto end_cutscene;
        }
    } else {
        API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
        API_MapActor_TravelToAnim(0, 0x37e, 0x2ac);
        API_CutsceneWait(0x50);
        API_Func_80933d4(0x9999, 0x1333);
        API_Func_80933f8(0x37e0000, -1, 0x2980000, 1);
        API_MapActor_WaitMovement(0);
        API_MapActor_SetAnim(0, 1);
        {
            int *actor = (int *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_SetPos(1, actor[2], actor[4]);
            }
        }
        {
            int *actor = (int *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_SetPos(2, actor[2], actor[4]);
            }
        }
        if (API_GetFlag(3)) {
            int *actor = (int *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_SetPos(3, actor[2], actor[4]);
            }
        }
        API_MapActor_SetSpeed(1, 0x9999, 0x4ccc);
        API_MapActor_SetSpeed(2, 0x9999, 0x4ccc);
        API_MapActor_SetSpeed(3, 0x80 << 9, 0x80 << 8);
        API_MapActor_SetAnim(1, 2);
        API_MapActor_SetAnim(2, 2);
        API_MapActor_SetAnim(3, 2);
        API_MapActor_TravelBy(1, -0x10, 0x10);
        API_MapActor_TravelBy(2, 0x10, 0x10);
        if (API_GetFlag(3)) {
            API_MapActor_TravelBy(3, 0x20, 0x10);
        }
        API_MapActor_WaitMovement(2);
        API_MapActor_SetAnim(1, 1);
        API_MapActor_SetAnim(2, 1);
        API_MapActor_SetAnim(3, 1);
        API_CutsceneWait(0xa);
        API_Func_8092adc(3, 0xc0 << 8, 0);
        API_Func_8092adc(1, 0xc0 << 8, 0);
        API_Func_8092adc(2, 0xc0 << 8, 0x14);
        API_MapActor_Emote(0x12, 0x101, 0x3c);
        API_MessageID(0x1442);
        API_ShowActorMessage_NoWait(0x2012, 0);
        if (__Func_8091c7c(0, 0) == 1) {
            goto label_cb6;
        }
    }

    API_Func_8092adc(3, 0xc0 << 8, 0);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_Func_8092adc(1, 0xc0 << 8, 0);
    API_Func_8092adc(2, 0xc0 << 8, 0x14);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_MapActor_Emote(0x12, 0x105, 0x3c);
    API_MessageID(0x1443);
    API_ActorMessage(0x2012, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x14), 0);
    {
        char *actor = (char *)__MapActor_GetActor(0x14);
        *(int *)(actor + 0x18) = 0x80 << 8;
        *(int *)(actor + 0x1c) = 0x80 << 8;
    }
    {
        int *actor = (int *)__MapActor_GetActor(0x12);
        if (actor != 0) {
            API_MapActor_SetPos(0x14, actor[2], actor[4]);
        }
    }
    API_WaitFrames(1);
    API_MapActor_Jump(0x14, 6, 0);
    API_MapActor_SetSpeed(0x14, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToWait(0x14, 0x37e, 0xa7 << 2);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_Emote(3, 0x101, 0);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_MapActor_DoAnim(0x12, 4);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_Emote(1, 0x103, 0x3c);
    API_Func_8092adc(1, 0xe0 << 8, 0xa);
    API_ShowActorMessage_NoWait(0x4001, 0);
    API_Func_8092adc(3, 0xa0 << 8, 0);
    API_Func_8092adc(2, 0xa0 << 8, 0);
    API_Func_8092adc(0, 0xc0 << 7, 0);

    if (__Func_8091c7c(0, 0) == 1) {
        do {
            API_Func_809259c(1, 2);
            API_Func_80925cc(2, 2);
            API_MessageID(0x1447);
            API_ShowActorMessage_NoWait(0x4001, 0);
        } while (__Func_8091c7c(0, 0) != 1);
    }

    API_MapActor_DoAnim(1, 3);
    API_MessageID(0x1448);
    API_ActorMessage_Wait(0x4001, 0, 0xa);
    API_Func_8092adc(3, 0xc0 << 8, 0);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_Func_8092adc(1, 0xc0 << 8, 0);
    API_Func_8092adc(2, 0xc0 << 8, 0xa);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x14);
    API_MapActor_Emote(0x12, 0x105, 0x3c);
    API_ActorMessage_Wait(0x2012, 0, 0x14);
    API_MapActor_Emote(2, 0x102, 0x3c);
    API_Func_8092adc(0x12, 0x3000, 0xa);
    API_MapActor_Emote(0x12, 0x101, 0x3c);
    API_MapActor_Emote(1, 0x101, 0x28);
    API_Func_8092adc(1, 0, 0x14);
    API_Func_80925cc(1, 1);
    API_ActorMessage_Wait(0x4001, 0, 0xa);
    API_Func_8092adc(3, 0x80 << 8, 0);
    API_Func_8092adc(0, 0x80 << 6, 0x14);
    API_MapActor_Emote(2, 0x102, 0x3c);
    API_Func_8092adc(2, 0x80 << 8, 0xa);
    API_ActorMessage_Wait(0x4002, 0, 0xa);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(1, 3);
    API_ActorMessage_Wait(0x4001, 0, 0xa);
    API_Func_8092adc(1, 0xe0 << 8, 0xa);
    API_Func_809259c(1, 1);
    API_ShowActorMessage_NoWait(0x4001, 0);
    API_Func_8092adc(3, 0xa0 << 8, 0);
    API_Func_8092adc(2, 0xa0 << 8, 0);
    API_Func_8092adc(0, 0xc0 << 7, 0);

    while (__Func_8091c7c(0, 0) != 0) {
        API_MessageID(0x144e);
        API_ShowActorMessage_NoWait(0x4001, 0);
    }

    API_CutsceneWait(0xa);
    API_Func_8092adc(3, 0x80 << 8, 0);
    API_Func_8092adc(1, 0, 0xa);
    API_Func_8092adc(0, 0x80 << 6, 0xa);
    API_MapActor_DoAnim(1, 3);
    API_MapActor_Emote(2, 0x105, 0x3c);
    API_Func_8092adc(2, 0x80 << 8, 0xa);
    API_MapActor_DoAnim(2, 4);
    API_MessageID(0x144f);
    API_ActorMessage_Wait(0x4002, 0, 0x14);
    API_Func_80925cc(0x12, 1);
    API_Func_8092adc(0x12, 0xa0 << 7, 0xa);
    API_MapActor_DoAnim(0x12, 4);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_Func_8092adc(3, 0xc0 << 8, 0);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_Func_8092adc(1, 0xc0 << 8, 0);
    API_Func_8092adc(2, 0xc0 << 8, 0x14);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(0x12, 0x105, 0x50);
    API_Func_8092adc(0x13, 0x80 << 5, 0xa);
    API_MapActor_Surprise(0x13, 0x102);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x13, 0, 0xa);
    API_Func_80925cc(0x12, 1);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0x12, 0x7000, 0x14);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_DoAnim(0x13, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(0x12, 4);
    API_MapActor_SetAnim(0x12, 4);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_Jump(0x14, 6, 0);
    {
        short *actor = (short *)__MapActor_GetActor(0x12);
        if (actor != 0) {
            API_MapActor_TravelTo(0x14, actor[5], actor[9]);
        }
    }
    API_MapActor_WaitMovement(0x14);
    API_MapActor_SetPos(0x14, 0, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Surprise(3, 0x102);
    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_MapActor_Surprise(2, 0x102);
    API_CutsceneWait(0x28);
    API_Func_80925cc(0x13, 2);
    API_ActorMessage_Wait(0x13, 0, 0xa);
    API_MapActor_DoAnim(0x12, 3);
    API_ActorMessage_Wait(0x2012, 0, 0x14);
    API_MapActor_DoAnim(0x13, 3);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0x4002, 0, 0xa);
    API_Func_8092adc(0x13, 0x3000, 0);
    API_Func_8092adc(0x12, 0x3000, 0xa);
    API_MapActor_DoAnim(0x12, 4);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_Emote(1, 0x103, 0x3c);
    API_ActorMessage_Wait(0x4001, 0, 0xa);
    API_Func_8092adc(0x12, 0xa0 << 7, 0xa);
    API_MapActor_SetAnim(0x12, 4);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_SetAnim(2, 4);
    API_ActorMessage_Wait(0x4002, 0, 0xa);
    API_Func_8092adc(0x12, 0x3000, 0xa);
    API_MapActor_DoAnim(0x12, 3);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_Emote(3, 0x107, 0);
    API_MapActor_Emote(0, 0x107, 0);
    API_MapActor_Emote(1, 0x107, 0);
    API_MapActor_Emote(2, 0x107, 0x3c);
    API_Func_8092adc(0x12, 0x7000, 0xa);
    API_MapActor_DoAnim(0x12, 3);
    API_CutsceneWait(0xa);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_Func_80925cc(0x13, 2);
    API_Func_8092adc(0x13, 0x80 << 5, 0xa);
    API_MapActor_DoAnim(0x13, 3);
    API_CutsceneWait(0x14);
    API_Func_8092a1c(0, 0x10013, gOvl_0200a5c0);
    API_Func_8092a1c(1, 0x10013, gOvl_0200a5c0);
    API_Func_8092a1c(2, 0x10013, gOvl_0200a5c0);
    API_Func_8092a1c(3, 0x10013, gOvl_0200a5c0);
    API_MapActor_SetSpeed(0x13, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0x13, 0xd5 << 2, 0x286);
    API_MapActor_TravelToAnimWait(0x13, 0xd5 << 2, 0x29a);
    API_MapActor_TravelToAnimWait(0x13, 0xd8 << 2, 0xa8 << 2);
    API_Func_8092adc(0x13, 0x80 << 5, 0xa);
    API_ActorMessage_Wait(0x4013, 0, 0x14);
    __MapActor_SetIdle(0);
    __MapActor_SetIdle(1);
    __MapActor_SetIdle(2);
    API_MapActor_Emote(0, 0x105, 0);
    API_MapActor_Emote(1, 0x105, 0);
    API_MapActor_Emote(2, 0x105, 0x3c);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(2, 3);
    API_Func_8092a1c(0x13, 0x80 << 9, gOvl_0200a5c0);

    API_MapActor_SetAnim(1, 2);
    {
        short *actor = (short *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(1, actor[5], actor[9]);
        }
    }
    API_MapActor_SetAnim(2, 2);
    {
        short *actor = (short *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(2, actor[5], actor[9]);
        }
    }
    if (API_GetFlag(3)) {
        API_MapActor_SetAnim(3, 2);
        {
            short *actor = (short *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_TravelTo(3, actor[5], actor[9]);
            }
        }
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0, 0x37e, 0xbc << 2);
    *(int *)(iwram_3001ebc + 0x1c8) = 0x10;
    __MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x321);

end_cutscene:
    __Func_8091e9c(0x1d);
    API_CutsceneEnd();
}

extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __PlaySound(int);
extern void __Func_80118a8(int);
extern void __Func_80118c0(int);
extern int __Func_8093054(int, int);

void OvlFunc_909_200979c(void)
{
    __CutsceneStart();
    __MapTransitionIn();
    __WaitMapTransition();
    API_Func_8092adc(0x13, 0x3000, 0);
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0, 0x100, 0x294);
    __CutsceneWait(0x14);
    API_Func_80933f8(-1, -1, -1, 0);
    __SetFlag(0x200);
    __PlaySound(0xbc);
    __Func_80118a8(1);
    __Func_80118a8(2);
    API_MapActor_SetPos(0x13, 0x1000000, 0x2780000);
    __WaitFrames(1);
    API_MapActor_SetSpeed(0x13, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0x13, 0x100, 0x284);
    __Func_80118c0(1);
    __Func_80118c0(2);
    __CutsceneWait(0x14);
    API_Func_80925cc(0x13, 2);
    __MessageID(0x145e);
    API_ActorMessage_Wait(0x13, 0, 0xa);
    API_MapActor_Emote(0, 0x100, 0x28);
    API_MapActor_TravelToAnimWait(0, 0x108, 0x294);
    API_Func_8092adc(0, 0x8000, 0);
    API_MapActor_TravelToAnimWait(0x13, 0xf8, 0x294);
    API_Func_8092adc(0x13, 0x1000, 0x28);
    API_MapActor_DoAnim(0x13, 4);
    API_ActorMessage(0x13, 0);
    API_MapActor_DoAnim(0x13, 3);
    __Func_8093054(0x13, 0);
    API_Func_80925cc(0x13, 2);
    API_ActorMessage_Wait(0x13, 0, 0xa);
    API_MapActor_Emote(0, 0x101, 0x3c);
    API_MapActor_Surprise(0x13, 0x102);
    __CutsceneWait(0x3c);
    API_Func_80925cc(0x13, 1);
    API_ActorMessage_Wait(0x13, 0, 0xa);
    API_MapActor_DoAnim(0x13, 3);
    API_ActorMessage(0x13, 0);
    API_MapActor_SetSpeed(0x13, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0x13, 0xf8, 0x304);
    API_MapActor_SetPos(0x13, 0, 0);
    __ClearFlag(0x12f);
    __SetFlag(0x84f);
    __CutsceneEnd();
}
void OvlFunc_909_2009958(void) {
    API_Func_8092adc(1, 0xe0 << 8, 0);
    API_Func_8092adc(2, 0xa0 << 8, 0);
    API_Func_8092adc(3, 0x80 << 8, 0);
}

void OvlFunc_909_2009984(void) {
    API_Func_8092adc(1, 0xc0 << 8, 0);
    API_Func_8092adc(2, 0xc0 << 8, 0);
    API_Func_8092adc(3, 0xa0 << 8, 0);
}

extern void __MapActor_WaitScript(int);
extern int __Func_8091c7c(int, int);
extern unsigned char gScript_909__0200a5d4[];
extern unsigned char gOvl_0200a5c0[];



void OvlFunc_909_20099b0(void)
{
    unsigned char *base;
    int flag;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    flag = 0;
    ((unsigned char *)__Func_8093554())[0x55] = flag;
    API_Func_80933f8(0x37e0000, -1, 0xa6 << 18, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    __Func_800fe9c();
    API_WaitFrames(1);

    base = iwram_3001ebc;
    *(int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x41;
    *(int *)(base + (0xe4 << 1)) = 0x10;

    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x28);

    API_MapActor_SetPos(0x13, 0xde << 18, 0x31e0000);
    API_MapActor_SetPos(0, 0xe2 << 18, 0x31e0000);
    API_Func_80933d4(0x9999, 0x1333);

    API_Func_80933f8(0x37e0000, -1, 0x2ba0000, 1);
    API_MapActor_SetSpeed(0x13, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);

    API_MapActor_TravelToAnim(0x13, 0xde << 2, 0xb4 << 2);
    API_MapActor_TravelToAnim(0, 0xe2 << 2, 0xb8 << 2);

    API_CutsceneWait(0x3c);
    API_MapActor_WaitMovement(0x13);
    API_MapActor_SetAnim(0x13, 1);
    API_MapActor_WaitMovement(0);
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(0x14);

    API_Func_80925cc(0x13, 2);
    API_MessageID(0x1728);

    flag = 1;
    if (API_GetFlag(0x84f) == 0) {
        *(short *)(iwram_3001ebc + 0xec * 2) += 1;
        flag = 0;
    }
    API_ActorMessage(0x13, 0);
    if (flag) {
        *(short *)(iwram_3001ebc + 0xec * 2) += 1;
    }

    API_Func_80933f8(0x37e0000, -1, 0xa6 << 18, 1);
    __MapActor_SetBehavior(0x13, gScript_909__0200a5d4);
    API_MapActor_TravelToAnimWait(0, 0x37e, 0xab << 2);

    {
        int *actor = (int *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(1, actor[2], actor[4]);
        }
    }
    {
        int *actor = (int *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(2, actor[2], actor[4]);
        }
    }
    {
        int *actor = (int *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(3, actor[2], actor[4]);
        }
    }

    API_MapActor_SetSpeed(1, 0x9999, 0x4ccc);
    API_MapActor_SetSpeed(2, 0x9999, 0x4ccc);
    API_MapActor_SetSpeed(3, 0x80 << 9, 0x80 << 8);

    API_MapActor_SetAnim(1, 2);
    API_MapActor_SetAnim(2, 2);
    API_MapActor_SetAnim(3, 2);

    API_MapActor_TravelBy(1, -0x10, 0x10);
    API_MapActor_TravelBy(2, 0x10, 0x10);
    API_MapActor_TravelBy(3, 0x20, 0x10);

    API_MapActor_WaitMovement(2);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(2, 1);
    API_MapActor_SetAnim(3, 1);

    API_CutsceneWait(0xa);
    API_Func_8092adc(1, 0xc0 << 8, 0);
    API_Func_8092adc(2, 0xc0 << 8, 0);
    API_MapActor_WaitMovement(3);
    API_Func_8092adc(3, 0xa0 << 8, 0);
    __MapActor_WaitScript(0x13);
    API_CutsceneWait(0x14);

    flag = 1;
    if (API_GetFlag(0x84f) == 0) {
        *(short *)(iwram_3001ebc + 0xec * 2) += 1;
        flag = 0;
    }
    API_Func_80925cc(0x12, 3);
    API_ActorMessage_Wait(0x2012, 0, 0x14);
    if (flag) {
        *(short *)(iwram_3001ebc + 0xec * 2) += 1;
    }

    flag = 1;
    if (API_GetFlag(0x84f) == 0) {
        *(short *)(iwram_3001ebc + 0xec * 2) += 1;
        flag = 0;
    }
    API_Func_80925cc(0x12, 1);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    if (flag) {
        *(short *)(iwram_3001ebc + 0xec * 2) += 1;
    }

    OvlFunc_909_2009958();
    API_CutsceneWait(0x14);

    if (API_GetFlag(0x84f) != 0) {
        API_MapActor_Emote(0, 0x81 << 1, 0x3c);
        API_MapActor_Emote(1, 0x105, 0x28);
    } else {
        API_CutsceneWait(0x28);
    }

    API_Func_8092adc(1, 0xc0 << 8, 0xa);
    API_ActorMessage_Wait(0x4001, 0, 0xa);
    API_Func_8092adc(2, 0xc0 << 8, 0xa);
    API_MapActor_DoAnim(2, 3);
    API_ActorMessage(0x4002, 0);
    API_Func_8092adc(3, 0xa0 << 8, 0xa);
    API_MapActor_DoAnim(3, 3);
    API_ActorMessage_Wait(0x4003, 0, 0x14);
    API_MapActor_DoAnim(0x12, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(0x2012, 0, 0x14);
    API_MapActor_Emote(1, 0x103, 0);
    API_MapActor_Emote(0, 0x81 << 1, 0x3c);

    if (API_GetFlag(0x84f) != 0) {
        API_Func_80925cc(0x12, 1);
        API_MapActor_DoAnim(0x12, 4);
        API_ShowActorMessage_NoWait(0x2012, 0);
        OvlFunc_909_2009958();
        flag = 1;
        if (__Func_8091c7c(0, 0) != 0) {
            *(short *)(iwram_3001ebc + 0xec * 2) += 1;
            flag = 0;
        }
        API_Func_8092adc(0x12, 0xa0 << 7, 0);
        OvlFunc_909_2009984();
        API_CutsceneWait(0xa);
        API_ActorMessage_Wait(0x2012, 0, 0xa);
        if (flag) {
            *(short *)(iwram_3001ebc + 0xec * 2) += 1;
        }
        API_MapActor_Emote(0x12, 0x81 << 1, 0x3c);
    } else {
        *(short *)(iwram_3001ebc + 0xec * 2) += 4;
    }

    API_ShowActorMessage_NoWait(0x2012, 0);
    OvlFunc_909_2009958();
    if (__Func_8091c7c(0, 0) == 0) {
        API_MessageID(0x1737);
    } else {
        API_MessageID(0x1738);
    }
    OvlFunc_909_2009984();
    API_ActorMessage_Wait(0x2012, 0, 0x14);

    API_Func_80925cc(0x13, 1);
    API_MessageID(0x1739);
    API_ActorMessage_Wait(0x13, 0, 0xa);

    API_Func_8092adc(0, 0xc0 << 7, 0);
    API_Func_8092adc(1, 0xe0 << 8, 0);
    API_Func_8092adc(2, 0, 0);
    API_Func_8092adc(3, 0x80 << 8, 0x28);

    API_Func_80925cc(0x12, 2);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    OvlFunc_909_2009984();
    API_CutsceneWait(0xa);
    API_MapActor_Emote(0x12, 0x105, 0x3c);
    API_ActorMessage_Wait(0x2012, 0, 0xa);

    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);

    API_MapActor_DoAnim(0x12, 3);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_Emote(0x12, 0x84 << 1, 0x3c);
    API_ActorMessage_Wait(0x2012, 0, 0xa);

    API_Func_8092adc(0x12, 0xc0 << 6, 0xa);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_DoAnim(0x12, 3);
    API_ShowActorMessage_NoWait(0x2012, 0);
    OvlFunc_909_2009958();

    flag = 1;
    if (__Func_8091c7c(0, 0) == 1) {
        *(short *)(iwram_3001ebc + 0xec * 2) += 1;
        flag = 0;
    }
    OvlFunc_909_2009984();
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    if (flag) {
        *(short *)(iwram_3001ebc + 0xec * 2) += 1;
    }

    API_Func_8092adc(0x12, 0xe0 << 7, 0xa);
    API_Func_80925cc(0x13, 1);
    API_Func_8092adc(0x13, 0x80 << 5, 0x14);
    API_MapActor_DoAnim(0x12, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(0x13, 3);
    API_ActorMessage_Wait(0x13, 0, 0xa);

    API_Func_8092adc(0x13, 0xc0 << 6, 0xa);
    API_Func_8092adc(0x12, 0xc0 << 6, 0x14);
    API_Func_80925cc(0x12, 1);
    API_ActorMessage_Wait(0x2012, 0, 0xa);
    API_MapActor_DoAnim(0x12, 3);
    API_ActorMessage_Wait(0x2012, 0, 0xa);

    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x14);

    API_MapActor_SetAnim(1, 2);
    {
        short *actor = (short *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(1, actor[5], actor[9]);
        }
    }
    API_MapActor_SetAnim(2, 2);
    {
        short *actor = (short *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(2, actor[5], actor[9]);
        }
    }
    API_MapActor_SetAnim(3, 2);
    {
        short *actor = (short *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(3, actor[5], actor[9]);
        }
    }

    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_CutsceneWait(0x14);

    API_Func_8092adc(0x12, 0xa0 << 7, 0);
    API_Func_8092a1c(0, 0x10013, gOvl_0200a5c0);

    API_MapActor_TravelToAnimWait(0x13, 0xd5 << 2, 0x286);
    API_MapActor_TravelToAnimWait(0x13, 0xd5 << 2, 0x29a);
    API_MapActor_TravelToAnimWait(0x13, 0xd8 << 2, 0xa8 << 2);

    API_Func_8092adc(0x13, 0x80 << 5, 0xa);
    API_Func_80925cc(0x13, 1);
    API_CutsceneWait(0xa);
    API_ActorMessage_Wait(0x13, 0, 0xa);

    API_MapActor_TravelToAnimWait(0x13, 0x376, 0xb1 << 2);
    API_MapActor_TravelToAnim(0x13, 0x37e, 0xbf << 2);
    API_MapActor_TravelToAnimWait(0, 0x37e, 0xbf * 4);

    __MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x322);

    if (API_GetFlag(0x84f) == 0) {
        API_SetFlag(0x84f);
        API_SetFlag(0x84a);
    }
    __Func_8091e9c(6);
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_200a1bc.s");
INCLUDE_ASM("asm/maps/mccoys_palace/mccoys_palace_data.s");

INCLUDE_ASM("asm/maps/mccoys_palace/imports.s");
