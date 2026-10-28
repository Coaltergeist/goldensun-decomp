/* rom_7a7298 (overlay file 921): consolidated TU — imil map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "sprite.h"

extern void __MapActor_Face(int, int, int);
extern void __DeleteActor(void *);

INCLUDE_ASM("asm/maps/imil/exports.s");

extern void OvlFunc_921_20096ac();

INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2008030.s");
int OvlFunc_921_20080d8(struct Actor *actor) {
    extern int __atan2(int, int);
    struct Actor *target;
    unsigned short angle;
    int diff;

    target = actor->linkedActor;
    if (target != 0) {
        actor->__unk5A &= 0xfe;
        angle = __atan2(target->pos.z - actor->pos.z, target->pos.x - actor->pos.x);
        diff = (short)(angle - actor->facing);
        if (diff != 0) {
            if (diff > 0x80 << 5) {
                diff = 0x80 << 5;
            }
            if (diff < -0x1000) {
                diff = -0x1000;
            }
            actor->facing += diff;
        }
    }
    return 1;
}

#include "state/global_state.h"
#include "actor.h"

extern short Lm921_23f0[] __asm__(".Lm921_23f0");
extern unsigned int gKeyHeld__tw __asm__("gKeyHeld");
extern GlobalState gState;
extern unsigned char _EVENT_33[];
extern unsigned char Lm921_28a0[] __asm__(".Lm921_28a0");
extern unsigned char Lm921_2798[] __asm__(".Lm921_2798");
void *Imil_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_33) return Lm921_28a0;
    return Lm921_2798;
}

unsigned int Imil_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a990[];

void *Imil_GetExits(void) {
    return (void *)gOvl_0200a990;
}

extern void __Func_808b868(void *);
extern int __GetFlag(int);

extern unsigned char Lm921_2ad0[] __asm__(".Lm921_2ad0");
extern unsigned char Lm921_29e0[] __asm__(".Lm921_29e0");
extern unsigned char gOvl_0200aa58[];
extern unsigned char TextEvent33[] __asm__(".Ltext_event33");
__asm__(".equ .Ltext_event33, 0x33");

void *Imil_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);

    if (ev == (int)TextEvent33) {
        unsigned char *actor = Lm921_2ad0;
        __Func_808b868(actor);
        if (__GetFlag(0x881)) {
            actor[0x106] = 0;
            *(int *)(actor + 0x50) = 0xb6 << 16;
            *(int *)(actor + 0x58) = 0x8d << 18;
            *(int *)(actor + 0x4c) = 2;
        }
        return actor;
    }

    if (__GetFlag(0x881)) {
        return gOvl_0200aa58;
    }
    return Lm921_29e0;
}

extern void OvlFunc_921_2009fa4(void);

void OvlFunc_921_20081e0(void) {
    OvlFunc_921_2009fa4();
}

extern unsigned char _EVENT_33[];
extern unsigned char Lm921_2db8[] __asm__(".Lm921_2db8");
extern unsigned char Lm921_2c80[] __asm__(".Lm921_2c80");

int Imil_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_33) return (int)Lm921_2db8;
    return (int)Lm921_2c80;
}

extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_921_200821c(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1570);
    } else {
        __MessageID(0x1529);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

void OvlFunc_921_2008254(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1571);
    } else {
        __MessageID(0x152f);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

void OvlFunc_921_200828c(void) {
    __CutsceneStart();
    __MapActor_Face(9, 0, 0xa);
    __MessageID(0x152a);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

void __MapActor_Surprise(int, int);
void __CutsceneWait(int);
void __MapActor_SetAnim(int, int);
void __MapActor_Face(int, int, int);
void __Func_8092adc(int, int, int);
void OvlFunc_921_20082b8(void) {
    __CutsceneStart();
    if (__GetFlag(0x881)) {
        __MessageID(0x163c);
        __ActorMessage(10, 0);
        __MapActor_Surprise(10, 0x102);
        __CutsceneWait(0x28);
        __MapActor_SetAnim(10, 1);
        __CutsceneWait(0x14);
        __MapActor_Face(10, 0, 0x14);
        __Func_8093054(10, 0);
        API_Func_8092adc(10, 0x3000, 10);
        __MapActor_SetAnim(10, 9);
    } else {
        __MessageID(0x152d);
        __ActorMessage(10, 0);
        __MapActor_Surprise(10, 0x102);
        __CutsceneWait(0x28);
        __MapActor_SetAnim(10, 1);
        __CutsceneWait(0x14);
        __MapActor_Face(10, 0, 0x14);
        __ActorMessage(10, 0);
        API_Func_8092adc(10, 0x3000, 10);
        __MapActor_SetAnim(10, 9);
    }
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2008384.s");

void OvlFunc_921_2008510(void) {
    __CutsceneStart();
    __MessageID(0x153f);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

void OvlFunc_921_2008530(void) {
    __CutsceneStart();
    __MessageID(0x154d);
    __Func_8093054(0x12, 0);
    __CutsceneEnd();
}

extern int __Func_8093054(int, int);
extern int __SetFlag(int);

void OvlFunc_921_2008550(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1574);
        __ActorMessage(0x14, 0);
    } else {
        __MessageID(0x1557);
        __Func_8093054(0x14, 0);
        __SetFlag(0x82a);
        __SetFlag(0x82c);
    }
    __CutsceneEnd();
}


void OvlFunc_921_20085a4(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1575);
    } else {
        __MessageID(0x155b);
    }
    __ActorMessage(0x14, 0);
    __CutsceneEnd();
}

void OvlFunc_921_20085dc(void) {
    __CutsceneStart();
    __MessageID(0x156d);
    __ActorMessage(8, 0);
    API_Func_8092adc(8, 0xc0 << 6, 10);
    __CutsceneEnd();
}


void OvlFunc_921_2008608(void) {
    __CutsceneStart();
    if (__GetFlag(0x82b)) {
        __MessageID(0x156f);
    } else if (__GetFlag(0x82c)) {
        __MessageID(0x153b);
    } else {
        __MessageID(0x1533);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

extern void OvlFunc_921_2008384(void);

void OvlFunc_921_200865c(void) {
    OvlFunc_921_2008384();
}

void OvlFunc_921_2008668(void)
{
  int new_var;
  __CutsceneStart();
  __MessageID(0x156e);
 do { __ActorMessage(new_var = 10, 0); } while (0);
  __CutsceneEnd();
}


void OvlFunc_921_2008688(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1573);
    } else {
        __MessageID(0x155a);
    }
    __ActorMessage(0x13, 0);
    __CutsceneEnd();
}

extern unsigned char iwram_3001ebc[];
extern short Lm921_31a8[] __asm__(".Lm921_31a8");
extern void *Lm921_3190[] __asm__(".Lm921_3190");

void OvlFunc_921_20086c0(void)
{
    /* Local unsigned char* view of __MapActor_GetActor for the direct index. */
    extern void __CutsceneStart(void);
    extern unsigned char *__MapActor_GetActor(int);
    extern void __PlaySound(int);
    extern void __Func_8010560(void *, int, int);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void __Func_8092b08(int, int);
    extern void __MapActor_TravelBy(int, int, int);
    extern void __Func_8092208(int, int, int);
    extern void __CutsceneWait(int);
    extern void __Func_8091e9c(int);
    extern void __CutsceneEnd(void);

    unsigned char *map;
    int iVar5;
    unsigned int uVar4;
    unsigned char *actor;

    int val;
    int arg1, arg2;

    map = *(unsigned char **)iwram_3001ebc;
    __CutsceneStart();

    for (uVar4 = 8; uVar4 <= 0x41; uVar4++) {
        actor = __MapActor_GetActor(uVar4);
        if (actor != 0) {
            actor[0x55] = 0;
        }
    }

    val = *(unsigned short *)(map + 0x16c);
    iVar5 = (short)(val - 0x32);

    if (iVar5 == 6) {
        __PlaySound(0xbc);
    } else {
        __PlaySound(0x9e);
    }

    arg1 = Lm921_31a8[(iVar5 - 1) * 2];
    arg2 = Lm921_31a8[(iVar5 - 1) * 2 + 1];
    __Func_8010560(Lm921_3190[iVar5 - 1], arg1, arg2);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);

    *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c0) = 0x100;

    if (iVar5 == 6) {
        API_MapActor_SetSpeed(0, 0x3333, 0x1999);
        __MapActor_SetAnim(0, 2);
        __Func_8092b08(0, 3);
        API_MapActor_TravelBy(0, 0, -8);
    } else {
        (__MapActor_GetActor(0))[0x55] = 0;
        API_Func_8092208(0, 3, -16);
    }

    __CutsceneWait(0x10);
    __Func_8091e9c(iVar5);
    __CutsceneEnd();
}

void OvlFunc_921_20087a4(void) {
    extern unsigned char *__MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, void *);
    extern void __CutsceneWait(int);
    extern unsigned char gScript_921__0200a5ec[];
    short facing;

    facing = *(short *)((char *)__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x881) != 0) {
        if ((unsigned int)((facing << 16) + 0x5fff0000) <= 0x3ffe0000) {
            __Func_80b0278(0xa, 0xc);
        } else {
            __CutsceneStart();
            API_MapActor_Face(0xc, 0, 0);
            __CutsceneWait(0xa);
            __MessageID(0x164b);
            API_ActorMessage(0xc, 0);
            API_Func_8092adc(0xc, 0x80 << 7, 0xa);
            __CutsceneEnd();
        }
    } else {
        if ((unsigned int)((facing << 16) + 0x5fff0000) <= 0x3ffe0000) {
            __CutsceneStart();
            API_Func_80933d4(0xc0 << 11, 0xc0 << 8);
            API_Func_80933f8(0xd5 << 17, -1, 0xf6 << 17, 1);
            API_Func_8093530();
            __CutsceneWait(0x14);
            __MapActor_RunScript(0xc, gScript_921__0200a5ec);
            __MessageID(0x153e);
            API_ActorMessage(0xc, 0);
            API_Func_80933f8(0xd5 << 17, -1, 0x9a << 18, 1);
            API_Func_8093530();
            __CutsceneEnd();
        }
    }
}

extern void *__MapActor_GetActor(int);
extern void __MapActor_RunScript(int, void *);

void OvlFunc_921_200888c(void) {
    extern unsigned char gScript_921__0200a5ec[];
    short facing;

    facing = *(short *)((char *)__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x881) != 0) {
        if ((unsigned int)((facing << 16) + 0x5fff0000) <= 0x3ffe0000) {
            __Func_80b0278(0xb, 0xd);
        } else {
            __CutsceneStart();
            API_MapActor_Face(0xd, 0, 0);
            __CutsceneWait(0xa);
            __MessageID(0x164d);
            API_ActorMessage(0xd, 0);
            API_Func_8092adc(0xd, 0x80 << 7, 0xa);
            __CutsceneEnd();
        }
    } else {
        if ((unsigned int)((facing << 16) + 0x5fff0000) <= 0x3ffe0000) {
            __CutsceneStart();
            API_Func_80933d4(0xc0 << 11, 0xc0 << 8);
            API_Func_80933f8(0xd5 << 17, -1, 0xf6 << 17, 1);
            API_Func_8093530();
            __CutsceneWait(0x14);
            __MapActor_RunScript(0xd, gScript_921__0200a5ec);
            __MessageID(0x1543);
            API_ActorMessage(0xd, 0);
            API_Func_80933f8(0xd5 << 17, -1, 0x9a << 18, 1);
            API_Func_8093530();
            __CutsceneEnd();
        }
    }
}

void OvlFunc_921_2008974(void)
{
    short facing;

    facing = *(short *)((char *)__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x881) != 0) {
        if ((unsigned int)((facing << 16) + 0x5fff0000) <= 0x3ffe0000) {
            __Func_80b0278(0xc, 0xf);
        } else {
            __CutsceneStart();
            API_MapActor_Face(15, 0, 0);
            __MessageID(0x164f);
            API_ActorMessage(15, 0);
            API_Func_8092adc(15, 0x4000, 0);
            __CutsceneEnd();
        }
    } else {
        if ((unsigned int)((facing << 16) + 0x5fff0000) <= 0x3ffe0000) {
            __CutsceneStart();
            __MessageID(0x1546);
            API_ActorMessage(14, 0);
            __Func_80b0278(0xc, 0xe);
            __CutsceneEnd();
        } else {
            API_MapActor_Face(14, 0, 0xa);
            __MessageID(0x1547);
            API_ActorMessage(14, 0);
            API_Func_8092adc(14, 0x5000, 0xa);
        }
    }
}
extern void __Func_80b3284(int, int);
void OvlFunc_921_2008a3c(void)
{
    unsigned short v;

    v = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) + 0x5fff;
    if (v <= 0x3ffe) {
        __Func_80b3284(4, 0x10);
    } else {
        __CutsceneStart();
        __MapActor_Face(0x10, 0, 10);
        if (__GetFlag(0x881) != 0) {
            __MessageID(0x1653);
            __Func_8093054(0x10, 0);
        } else {
            __MessageID(0x154b);
            __ActorMessage(0x10, 0);
        }
        API_Func_8092adc(0x10, 0x3000, 10);
        __CutsceneEnd();
    }
}
void OvlFunc_921_2008abc(void)
{
    unsigned char *actor;

    actor = (unsigned char *)__MapActor_GetActor(0);
    if ((unsigned short)(*(unsigned short *)(actor + 6) + 0x5fff) <= 0x3ffe) {
        __CutsceneStart();
        if (!API_GetFlag(0x82d)) {
            __MessageID(0x1553);
            __ActorMessage(0x13, 0);
            API_SetFlag(0x82d);
        }
        __CutsceneEnd();
        __UI_Sanctum(0x13);
    } else {
        __CutsceneStart();
        if (API_GetFlag(0x881)) {
            __MessageID(0x1671);
            __ActorMessage(0x13, 0);
        } else if (API_GetFlag(3)) {
            __MessageID(0x1572);
            __ActorMessage(0x13, 0);
        } else {
            __MessageID(0x1554);
            __Func_8093054(0x13, 0);
            API_Func_8092adc(0x13, 0x3000, 10);
        }
        __CutsceneEnd();
    }
}
INCLUDE_ASM("asm/maps/imil/Imil_MapInit.s");

static inline void ImilHalf(unsigned short *p,int value) { *p=value; }
static inline void ImilByte(unsigned char *p,int value) { *p = value; }
void OvlFunc_921_2008f90(void)
{
    extern unsigned char CS_921_31c0[] __asm__(".Lm921_31c0");
    extern unsigned char CS_921_31d6[] __asm__(".Lm921_31d6");
    extern unsigned char gScript_921__0200a5ec[];
    extern unsigned char gScript_921__0200a670[];
    extern unsigned char gScript_921__0200a6e0[];
    extern unsigned char gScript_921__0200a74c[];
    extern unsigned char gScript_921__0200a760[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_8010560(void *, int, int);
    extern void * __MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_921_20096c8(void);
    unsigned char * field;
    unsigned char *actor;

    API_CutsceneStart();
    API_MapActor_SetPos(3, 0xb60000, 0x960000);
    API_Func_80933f8(0x8d0000, -1, 0xdd0000, 0);
    API_WaitFrames(1);
    API_Func_80933d4(0x4ccc, 0x999);
    API_Func_80933f8(0x8c0000, -1, 0xa40000, 1);
    field = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    *(int *)(field + 0x1c0) = 0x100;
    *(int *)(field + 0x1c8) = 0x28;
    API_MapTransitionIn();
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    API_MapActor_SetSpeed(1, 0x6666, 0x3333);
    API_MapActor_SetSpeed(2, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(0, 0x8e, 0xdd);
    API_Func_8092adc(0, 0xd000, 0);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_TravelToAnim(1, 0x96, 0xea);
    API_MapActor_TravelToAnimWait(2, 0x86, 0xea);
    API_MapActor_SetAnim(1, 1);
    API_Func_8092a1c(0, 0x10003, gScript_921__0200a74c);
    API_Func_8092a1c(1, 0x10003, gScript_921__0200a74c);
    API_Func_8092a1c(2, 0x10003, gScript_921__0200a74c);
    API_Func_8093530();
    API_MapActor_SetBehavior(9, (int)gScript_921__0200a5ec);
    API_CutsceneWait(0x28);
    API_MapActor_Surprise(3, 0x102);
    API_CutsceneWait(0x28);
    API_Func_80925cc(3, 1);
    API_MessageID(0x155c);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_SetBehavior(9, (int)gScript_921__0200a5ec);
    API_ActorMessage_Wait(9, 0, 20);
    API_Func_8092adc(3, 0x8000, 20);
    API_Func_8092adc(8, 0, 10);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(10);
    API_Func_8092adc(3, 0x4000, 0);
    API_Func_8092adc(8, 0x3000, 20);
    API_ActorMessage_Wait(3, 0, 10);
    API_MapActor_SetBehavior(9, (int)gScript_921__0200a5ec);
    OvlFunc_921_20096c8();
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage_Wait(3, 0, 0x28);
    API_ActorMessage_Wait(9, 0, 20);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_MapActor_SetAnim(9, 7);
    CallFunc_8010560(10, 0x45, CS_921_31c0);
    API_CutsceneWait(10);
    API_Func_80925cc(3, 2);
    API_MapActor_DoAnim(3, 4);
    API_ActorMessage_Wait(3, 0, 20);
    API_Func_80925cc(9, 1);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(9, 8);
    CallFunc_8010560(10, 0x45, CS_921_31d6);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(8, 0, 20);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 10);
    API_MapActor_Emote(3, 0x101, 30);
    API_Func_8092adc(3, 0x8000, 10);
    API_MapActor_SetAnim(3, 4);
    API_ActorMessage_Wait(3, 0, 10);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    actor = __MapActor_GetActor(3);
    actor += 0x64;
    ImilHalf((unsigned short *)actor, 0);
    API_MapActor_SetBehavior(3, (int)gScript_921__0200a670);
    while (*(short *)((unsigned char *)__MapActor_GetActor(3) + 0x64) == 0) API_WaitFrames(1);
    API_Func_80933f8(0x8c0000, -1, 0xc60000, 1);
    API_MapActor_WaitScript(3);
    API_MapActor_Emote(3, 0x101, 0x50);
    API_ActorMessage_Wait(3, 0, 0x28);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(10);
    API_ActorMessage(3, 0);
    API_PlaySound(0x83);
    API_Func_8091220(0x10000, 0);
    API_Func_8091200(0x207e9f, 0);
    API_Func_8091254(10);
    API_WaitFrames(1);
    API_PlaySound(0xdc);
    API_WaitFrames(0x28);
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(0x3c);
    API_WaitFrames(0x3c);
    API_MapActor_Surprise(3, 0x102);
    API_CutsceneWait(20);
    API_Func_8092adc(3, 0, 10);
    API_MapActor_SetSpeed(3, 0x20000, 0x10000);
    API_MapActor_TravelToAnimWait(3, 0xca, 0xc6);
    API_CutsceneWait(0x28);
    API_Func_80925cc(3, 2);
    API_ActorMessage(3, 0);
    API_MapActor_DoAnim(3, 4);
    API_ActorMessage_Wait(3, 0, 20);
    API_MapActor_Surprise(3, 0x102);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(3, 0, 0x28);
    API_MapActor_Emote(3, 0x100, 0x28);
    API_ActorMessage(3, 0);
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_MapActor_SetIdle(2);
    API_MapActor_SetSpeed(3, 0x30000, 0x18000);
    actor = __MapActor_GetActor(3);
    actor += 0x64;
    ImilHalf((unsigned short *)actor, 0);
    API_MapActor_SetBehavior(3, (int)gScript_921__0200a6e0);
    while (*(short *)((unsigned char *)__MapActor_GetActor(3) + 0x64) == 0) API_WaitFrames(1);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(2, 0x4000, 10);
    API_MapActor_SetSpeed(0, 0x40000, 0x20000);
    API_MapActor_SetSpeed(1, 0x40000, 0x20000);
    API_MapActor_SetSpeed(2, 0x40000, 0x20000);
    API_PlaySound(0x98);
    actor = __MapActor_GetActor(0);
    actor += 0x5a;
    *actor &= 0xfe;
    actor = __MapActor_GetActor(1);
    actor += 0x5a;
    *actor &= 0xfe;
    actor = __MapActor_GetActor(2);
    actor += 0x5a;
    *actor &= 0xfe;
    API_MapActor_TravelTo(0, 0x84, 0xce);
    API_MapActor_TravelTo(1, 0x88, 0xdd);
    API_MapActor_TravelTo(2, 0x7a, 0xee);
    API_MapActor_WaitScript(3);
    API_CutsceneWait(0x50);
    actor = __MapActor_GetActor(0);
    actor += 0x5a;
    ImilByte(actor, 1 | *actor);
    actor = __MapActor_GetActor(1);
    actor += 0x5a;
    ImilByte(actor, 1 | *actor);
    actor = __MapActor_GetActor(2);
    actor += 0x5a;
    ImilByte(actor, 1 | *actor);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_SetBehavior(1, (int)gScript_921__0200a760);
    __MapActor_RunScript(2, gScript_921__0200a760);
    API_CutsceneWait(20);
    field = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    *(int *)(field + 0x1c0) = 0x209;
    *(int *)(field + 0x1c8) = 24;
    API_SetFlag(0x82b);
    API_CutsceneEnd();
}
extern int Lm921_31f0[] __asm__(".Lm921_31f0");
extern void __vec3_translate(int, int, int *);
void OvlFunc_921_200954c(struct Actor *a)
{
    int v[3];
    short t;

    if (a != 0) {
        t = --a->waveCounter;
        if (t != 0) {
            v[0] = Lm921_31f0[0];
            v[1] = Lm921_31f0[1] + 0x80000;
            v[2] = Lm921_31f0[2];
            __vec3_translate(t << 16, (t << 11) + a->__unk66, v);
            a->pos.x = v[0];
            a->pos.y = v[1];
            a->pos.z = v[2];
        } else {
            __DeleteActor(a);
        }
    }
}
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20095b4.s");

extern void __MapActor_SetBehavior(int, void *);
extern unsigned char gScript_921__0200a5ec[];

void OvlFunc_921_20096ac(void) {
    __MapActor_SetBehavior(9, gScript_921__0200a5ec);
    __ActorMessage(9, 0);
}

extern unsigned char iwram_3001f30[];

void OvlFunc_921_20096c8(void)
{
  unsigned int *p;
  unsigned long new_var2;
  unsigned long long new_var;
  new_var = 0x5d;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_8096fb0(new_var2, 1);
  p = *((unsigned int **) iwram_3001f30);
  __Func_80970f8(3, 9);
  *((void (**)(void)) (((char *) p) + 0x24)) = OvlFunc_921_20096ac;
  __Func_809728c();
  __FieldMove(1);
  __Func_8097174();
  __Func_8097194();
}

extern void __Func_80929d8();
extern void __Actor_SetSpriteFlags();
void OvlFunc_921_2009704(void *v)
{
    struct Actor *a = v;
    short z = 0;

    a->__unk55 = z;
    a->waveCounter = z;
    a->flags &= 0xfe;
    a->sprite->oam.priority = 1;
    __Func_80929d8(a, 9);
    __Actor_SetSpriteFlags(a, 0);
    a->scale.x = 0x8000;
    a->scale.y = 0x8000;
}

void OvlFunc_921_200974c(void *actor)
{
    struct {
        char pad1[8];
        int f8;
        int fc;
        char pad2[8];
        int f18;
        int f1c;
        char pad3[0x44];
        short f64;
        char pad4[2];
        int f68;
    } *a = actor;

    a->f8 += (int)a->f64 * 256;
    a->fc += 0x80 << 8;
    a->f18 += 0x7ae;
    a->f1c += 0x7ae;
    a->f64 += 2;
    a->f68 -= 1;
    if (a->f68 == 0) {
        __DeleteActor(actor);
    }
}
extern void *__CreateActor(int, int, int, int);
extern void OvlFunc_921_2009704(void *);
extern void __Actor_SetAnim(void *, int);
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern unsigned char iwram_3001e40[];
extern void OvlFunc_921_200974c(void *);

static inline void SpawnFrog(int x, int y, int z)
{
    void *actor = __CreateActor(0xde, x, y, z);
    if (actor != 0) {
        OvlFunc_921_2009704(actor);
        *(int *)((char *)actor + 0x68) = 0x3c;
        *(void (**)(void *))((char *)actor + 0x6c) = OvlFunc_921_200974c;
        __Actor_SetAnim(actor, 5);
    }
}

void OvlFunc_921_2009794(void)
{
    unsigned int *base = (unsigned int *)iwram_3001e40;

    if (_umodsi3_RAM(base[0], 0x3c) == 0) {
        SpawnFrog(0x1cf0000, 0, 0x92 << 17);
    }
    if (_umodsi3_RAM(base[0] + 0x1e, 0x3c) == 0) {
        SpawnFrog(0xa0 << 17, 0x80 << 14, 0xb2 << 17);
    }
    if (_umodsi3_RAM(base[0] + 0xa, 0x3c) == 0) {
        SpawnFrog(0xec << 15, 0, 0x8c << 15);
    }
    if (_umodsi3_RAM(base[0] + 0x32, 0x3c) == 0) {
        SpawnFrog(0xab << 17, 0, 0xf8 << 15);
    }
    if (_umodsi3_RAM(base[0] + 0x50, 0x3c) == 0) {
        SpawnFrog(0x1af0000, 0, 0xab << 16);
    }
}
extern unsigned char iwram_3001e70[];

void OvlFunc_921_20098c4(void)
{
    int *actor;
    int r4;
    int r2;
    int r1;
    int f;

    actor = (int *)__MapActor_GetActor(0);
    r4 = actor[2];
    r2 = r4 >> 19;
    if ((unsigned int)(r2 - 0x18) <= 7 ||
        ((r1 = actor[4]), (unsigned int)((r1 >> 19) - 0x24) <= 9 && (unsigned int)(r2 - 0x16) <= 9)) {
        if (API_GetFlag(0x200) != 0)
            return;
        (*(unsigned char **)iwram_3001e70)[0x17] = 0;
        API_SetFlag(0x200);
        API_ClearFlag(0x201);
    } else if (r4 > (0xe8 << 16) && actor[3] > (0xf0 << 13) && r1 > (0xd4 << 16)) {
        f = 0x200;
        (*(unsigned char **)iwram_3001e70)[0x17] = 0;
        API_SetFlag(f);
        API_ClearFlag(0x201);
    } else {
        if (API_GetFlag(0x201) != 0)
            return;
        f = 0x201;
        (*(unsigned char **)iwram_3001e70)[0x17] = 1;
        API_SetFlag(f);
        API_ClearFlag(0x200);
    }
}

extern void __Func_8092b08(int a, int b);
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_921_2009960(void)
{
  int new_var;
  int new_var2;
  __SetFlag(0x203);
  __Func_8092b08(11, 3);
  new_var2 = 15;
  new_var = 7;
  __Func_8010704(new_var2, 6, 1, 1, new_var2, new_var);
}

void OvlFunc_921_2009990(void) {
    unsigned int r0;
    unsigned int v;

    __CutsceneStart();
    r0 = __MapActor_GetActor(0);
    v = 0xc0 << 8;
    *(unsigned short *)((char *)r0 + 6) = v;
    __PlaySound(0x7b);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(8);
}

void OvlFunc_921_20099bc(void)
{
    __CutsceneStart();
    __MapTransitionIn();
    API_MapActor_SetSpeed(0, 0x20000, 0x1999);
    API_MapActor_TravelToWait(0, 0xe8, 0xcc);
    __CutsceneEnd();
}
static inline void ImilTalkByte(unsigned char *p,int value) { *p = value; }

void OvlFunc_921_20099e8(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern unsigned int __Func_8093554(void);
    extern void * __MapActor_GetActor(int);
    unsigned char * field;
    unsigned int cameraAddress;
    unsigned char *actor;

    API_CutsceneStart();
    API_Func_8092adc(3, 0xa000, 0);
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnim(0, 0x2b2, 0xc8);
    cameraAddress = __Func_8093554();
    *(unsigned char *)(cameraAddress + 0x55) = 0;
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x2b20000, 0, 0xa40000, 1);
    field = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    *(int *)(field + 0x1c0) = 0x100;
    *(int *)(field + 0x1c8) = 0x30;
    API_MapTransitionIn();
    API_MapActor_WaitMovement(0);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_SetSpeed(3, 0x9999, 0x4ccc);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(3, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_TravelToAnimWait(3, 0x2a1, 0xb7);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_809259c(19, 2);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(0x28);
    API_MessageID(0x165b);
    API_ActorMessage_Wait(19, 0, 10);
    API_Func_8092adc(3, 0xe000, 0x28);
    API_MapActor_DoAnim(3, 3);
    API_MapActor_Surprise(20, 0x102);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4014, 0, 10);
    API_Func_8092adc(3, 0xa000, 0x28);
    API_MapActor_DoAnim(3, 4);
    API_ActorMessage_Wait(0x2003, 0, 10);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(20);
    API_MapActor_Surprise(19, 0x102);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(19, 0, 10);
    API_Func_8092adc(0, 0xa000, 0);
    API_Func_8092adc(3, 0xf000, 10);
    API_Func_8092adc(3, 0x2000, 0x28);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0x28);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4014, 0, 20);
    API_Func_8092adc(3, 0xa000, 20);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(3, 0x105, 0x3c);
    API_MapActor_Emote(19, 0x101, 0);
    API_MapActor_Emote(20, 0x101, 0x3c);
    API_Func_80925cc(19, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(19, 0, 10);
    API_Func_8092adc(3, 0xe000, 0x28);
    API_Func_8092adc(3, 0xa000, 0x28);
    API_Func_8092adc(3, 0xe000, 20);
    API_Func_8092adc(3, 0x6000, 0x50);
    API_ActorMessage_Wait(0x2003, 0, 20);
    API_Func_8092adc(20, 0xf000, 0);
    API_Func_8092adc(19, 0x7000, 0x28);
    API_Func_8092adc(19, 0x5000, 0);
    API_Func_8092adc(20, 0x3000, 20);
    API_MapActor_SetSpeed(20, 0x10000, 0x8000);
    actor = __MapActor_GetActor(20);
    actor += 0x5a;
    ImilTalkByte(actor, 0xfe & *actor);
    API_MapActor_TravelToAnimWait(20, 0x290, 0xa6);
    API_CutsceneWait(1);
    actor = __MapActor_GetActor(20);
    actor += 0x5a;
    ImilTalkByte(actor, *actor | 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4014, 0, 10);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(0x28);
    API_Func_8092adc(3, 0xa000, 10);
    API_ActorMessage_Wait(0x2003, 0, 0x28);
    API_Func_8092adc(3, 0x2000, 20);
    API_ActorMessage_Wait(0x4003, 0, 10);
    API_MapActor_Surprise(19, 0x102);
    API_MapActor_Surprise(20, 0x102);
    API_CutsceneWait(0x28);
    API_Func_8092adc(3, 0xc000, 20);
    API_MapActor_SetAnim(3, 4);
    API_ActorMessage_Wait(0x2003, 0, 20);
    API_Func_80925cc(19, 1);
    API_ActorMessage_Wait(19, 0, 10);
    API_Func_8092adc(3, 0x2000, 0x28);
    API_Func_8092adc(3, 0xc000, 20);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(20);
    API_Func_80925cc(20, 1);
    API_ActorMessage_Wait(0x4014, 0, 20);
    API_Func_80925cc(3, 1);
    API_CutsceneWait(20);
    API_Func_8092adc(3, 0xa000, 20);
    API_MapActor_DoAnim(3, 3);
    API_ActorMessage_Wait(0x2003, 0, 0x50);
    API_MapActor_Emote(19, 0x105, 0);
    API_MapActor_Emote(20, 0x105, 0x3c);
    API_MapActor_DoAnim(19, 4);
    API_ActorMessage_Wait(19, 0, 10);
    API_MapActor_SetAnim(20, 4);
    API_ActorMessage_Wait(0x4014, 0, 20);
    API_MapActor_Emote(3, 0x102, 0x3c);
    API_ActorMessage_Wait(0x2003, 0, 0x28);
    API_MapActor_DoAnim(19, 3);
    API_ActorMessage_Wait(19, 0, 10);
    API_Func_8092adc(3, 0xe000, 20);
    API_MapActor_DoAnim(20, 3);
    API_ActorMessage_Wait(0x4014, 0, 10);
    API_Func_8092adc(3, 0xa000, 0x3c);
    API_Func_8092adc(3, 0xe000, 20);
    API_Func_8092adc(3, 0xa000, 20);
    API_Func_8092adc(3, 0xc000, 0x28);
    API_MapActor_DoAnim(3, 3);
    API_ActorMessage_Wait(0x2003, 0, 10);
    API_MapActor_SetAnim(19, 3);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(0x28);
    API_Func_8092adc(3, 0x2000, 20);
    API_ActorMessage_Wait(0x4003, 0, 20);
    API_Func_8092adc(0, 0xa000, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnimWait(3, 0x2b0, 0xc8);
    API_MapActor_SetPos(3, 0, 0);
    actor = __MapActor_GetActor(20);
    actor += 0x5a;
    ImilTalkByte(actor, 0xfe & *actor);
    API_MapActor_TravelToAnimWait(20, 0x284, 0xa6);
    API_CutsceneWait(1);
    actor = __MapActor_GetActor(20);
    actor += 0x5a;
    *actor |= 1;
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x209;
    API_SetFlag(0x82e);
    API_ClearFlag(0x82d);
    API_CutsceneEnd();
}

void OvlFunc_921_2009f24(struct Actor *actor) {
    if (actor->waveCounter != 0) {
        actor->waveCounter -= 1;
    } else {
        short target;
        short diff;
        int max_step;
        int min_step;

        actor->__unk5A = 0;
        target = Lm921_23f0[(gKeyHeld__tw >> 4) & 0xf];
        if (target == -1) {
            __Actor_SetAnim(actor, 9);
        } else {
            diff = (short)(target - actor->facing);
            max_step = 0x80 << 5;
            if (diff > max_step) {
                diff = max_step;
            }
            min_step = -0x1000;
            if (diff < min_step) {
                diff = min_step;
            }
            actor->facing += diff;
            __Actor_SetAnim(actor, 2);
            __Actor_SetAnimSpeed(actor, 0x30);
        }
    }
}

INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2009fa4.s");
INCLUDE_ASM("asm/maps/imil/imil_data.s");

INCLUDE_ASM("asm/maps/imil/imports.s");
