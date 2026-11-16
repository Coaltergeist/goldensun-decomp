/* rom_7d768c (overlay file 952): consolidated TU — babis_palace map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "message.h"

INCLUDE_ASM("asm/maps/babis_palace/exports.s");

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char _EVENT_8b[];
extern unsigned char Lm952_4a1c[] __asm__(".Lm952_4a1c");
extern unsigned char Lm952_4614[] __asm__(".Lm952_4614");
void *BabisPalace_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_8b) {
        return Lm952_4a1c;
    } else {
        return Lm952_4614;
    }
}

extern unsigned char gOvl_0200ca7c[];

void *BabisPalace_GetSpecialExits(void) {
    return (void *)gOvl_0200ca7c;
}
extern unsigned char gOvl_0200ca8c[];

void *BabisPalace_GetExits(void) {
    return (void *)gOvl_0200ca8c;
}

extern unsigned char Lm952_4b3c[] __asm__(".Lm952_4b3c");
extern unsigned char Lm952_4e6c[] __asm__(".Lm952_4e6c");
extern unsigned char Lm952_4d64[] __asm__(".Lm952_4d64");
extern unsigned char Lm952_4b84[] __asm__(".Lm952_4b84");

void *BabisPalace_GetActors(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_8b) return Lm952_4b3c;
    if (API_GetFlag(0x950)) return Lm952_4e6c;
    if (API_GetFlag(0x962)) return Lm952_4d64;
    return Lm952_4b84;
}

extern int __Func_8091c7c(int, int);
void OvlFunc_952_20080c8(int a) {
    int msg = MSG_1ff1;

    API_MessageID(msg);
    __ShowActorMessage_NoWait(a, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_MessageID(msg + 1);
    } else {
        API_MessageID(msg + 2);
    }
    API_ActorMessage(a, 0);
}

extern unsigned char Lconst_1ff8[] __asm__(".Lconst_1ff8");
__asm__(".equ .Lconst_1ff8, 0x1ff8");
extern void __Func_808e118(void);
void *__MapActor_GetActor(unsigned int);

void OvlFunc_952_2008108(int arg0)
{
    short angle;
    int msg;
    unsigned char *actor0;

    actor0 = (unsigned char *)__MapActor_GetActor(0);
    angle = (*(unsigned short *)(actor0 + 6) + 0x2000) & (int)0xffffc000;
    API_CutsceneStart();
    __Func_808e118();
    if (API_GetFlag(0x200) == 0) {
        API_SetFlag(0x200);
        API_ClearFlag(0x969);
        API_MessageID(0x1ff7);
        API_ActorMessage(arg0, 0);
        API_CutsceneWait(10);
        if ((unsigned short)angle == 0x4000) {
            API_MapActor_TravelToAnimWait(0, 0x28, 0x68);
            API_Func_8092adc(0, 0, 0);
        }
        API_MapActor_SetSpeed(arg0, 0x10000, 0x8000);
        API_Func_8092304(arg0, 0, -0x30);
        API_Func_8092304(arg0, 0x40, 0);
        API_Func_8092adc(arg0, 0x4000, 0);
    } else {
        API_ClearFlag(0x200);
        API_SetFlag(0x969);
        API_Func_8092adc(arg0, 0x4000, 0);
        API_MapActor_TravelToAnimWait(0, 0x78, 0x60);
        API_Func_8092adc(0, 0xc000, 0);
        API_CutsceneWait(20);
        msg = (int)Lconst_1ff8;
        API_MessageID(msg);
        __ShowActorMessage_NoWait(arg0, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            API_MessageID(msg + 1);
            API_ActorMessage(arg0, 0);
        } else {
            API_MessageID(msg + 2);
            API_ActorMessage(arg0, 0);
        }
        API_CutsceneWait(10);
        API_MapActor_DoAnim(arg0, 3);
        API_CutsceneWait(20);
        API_Func_8092304(arg0, -0x40, 0);
        API_Func_8092304(arg0, 0, 0x30);
    }
    API_CutsceneEnd();
}

extern unsigned char Lm952_2241[] __asm__(".Lm952_2241");
__asm__(".equ .Lm952_2241, 0x2241");

void OvlFunc_952_2008264(unsigned int actor) {
    int msg;

    API_CutsceneStart();
    __Func_808e118();
    if (API_GetFlag(0x966) == 0) {
        API_SetFlag(0x966);
        API_SetFlag(0x967);
        API_Func_8092adc(actor, 0x80 << 7, 0);
        API_MapActor_TravelToAnimWait(0, 0x78, 0x60);
        API_Func_8092adc(0, 0xc0 << 8, 0);
        API_CutsceneWait(0x14);
        msg = (int)Lm952_2241;
        API_MessageID(msg);
        __ShowActorMessage_NoWait(actor, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            API_CutsceneWait(0xa);
            API_MessageID(msg + 1);
        } else {
            API_MessageID(msg + 2);
        }
        API_ActorMessage(actor, 0);
        API_CutsceneWait(0xa);
        API_MapActor_DoAnim(actor, 3);
        API_CutsceneWait(0x14);
        API_MapActor_SetSpeed(actor, 0x80 << 9, 0x80 << 8);
        API_Func_8092304(actor, -0x40, 0);
        API_Func_8092304(actor, 0, 0x30);
    } else {
        API_MessageID(0x2245);
        __ShowActorMessage_NoWait(actor, 0);
    }
    API_CutsceneEnd();
}

extern unsigned char Msg2006[] __asm__(".Lm952_2006");
__asm__(".equ .Lm952_2006, 0x2006");

extern void __MessageID(int);
extern int __Func_8091c7c(int, int);
extern void __CutsceneWait(int);
extern void __MapActor_Emote(int, int, int);
extern void __ActorMessage(int, int);

void OvlFunc_952_2008348(unsigned int actor)
{
    int r;
    unsigned int msg = (unsigned int)Msg2006;

    __MessageID(msg);
    __ShowActorMessage_NoWait(actor, 0);
    r = __Func_8091c7c(0, 0);
    if (r == 0) {
        __CutsceneWait(10);
        __MapActor_Emote(actor, 0x102, 0x28);
        __MessageID(msg + 1);
    } else {
        __CutsceneWait(10);
        __MapActor_Emote(actor, 0x105, 0x28);
        __MessageID(msg + 2);
    }
    __ActorMessage(actor, 0);
}

extern void __CutsceneStart();
extern void __CutsceneEnd();
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_952__0200c570[41];

void *__MapActor_GetActor(unsigned int);
void __MapActor_SetBehavior(unsigned int, ActorCmd *);
void __MapActor_SetIdle(unsigned int);
void __Func_80925cc(unsigned int, unsigned int);
void __Func_8092adc(unsigned int, unsigned int, unsigned int);
void OvlFunc_952_20083b0(unsigned int actor)
{
    unsigned int *p;
    int scale;

    p = (unsigned int *)__MapActor_GetActor(actor);
    __CutsceneStart();
    __MapActor_SetBehavior(actor, gScript_952__0200c570);
    __MessageID(0x2009);
    __ActorMessage(actor, 0);
    scale = 0x80;
    __MapActor_SetIdle(actor);
    scale <<= 9;
    p[7] = scale;
    p[6] = scale;
    __CutsceneWait(0x1e);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x3c);
    __ActorMessage(actor, 0);
    __CutsceneWait(0x14);
    __MapActor_Emote(actor, 0x81 << 1, 0x3c);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actor, 2);
    __CutsceneWait(0x1e);
    __MapActor_SetBehavior(actor, gScript_952__0200c570);
    __ActorMessage(actor, 0);
    API_Func_8092adc(actor, 0xe000, 0);
    __CutsceneWait(10);
    p[7] = scale;
    p[6] = scale;
    __MapActor_SetBehavior(actor, gScript_952__0200c570);
    __CutsceneEnd();
}
extern void __Func_8097608(void);

void OvlFunc_952_200849c(int a, unsigned int actor)
{
    API_CutsceneStart();
    API_MessageID(0x2052);
    API_ActorMessage(actor, 0);
    if (API_GetFlag(0x968) == 0) {
        API_SetFlag(0x968);
        __Func_8097608();
        API_CutsceneWait(0x32);
        API_MapActor_Emote(actor, 0x80 << 1, 0x46);
        API_MapActor_Face(actor, 0, 0x28);
        API_ActorMessage(actor, 0);
        API_CutsceneWait(0x1e);
        API_MapActor_DoAnim(actor, 4);
        API_CutsceneWait(0x14);
        API_ActorMessage(actor, 0);
        API_Func_8092adc(actor, 0x80 << 8, 0);
    }
    API_CutsceneEnd();
}
extern unsigned char Lconst_22a8[] __asm__(".Lconst_22a8");
__asm__(".equ .Lconst_22a8, 0x22a8");

void OvlFunc_952_2008524(unsigned int actor) {
    int msg = (int)Lconst_22a8;

    API_MessageID(msg);
    __ShowActorMessage_NoWait(actor, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_MessageID(msg + 1);
    } else {
        API_MessageID(msg + 2);
    }
    API_ActorMessage(actor, 0);
}
extern unsigned char Lconst_22ab[] __asm__(".Lconst_22ab");
__asm__(".equ .Lconst_22ab, 0x22ab");

void OvlFunc_952_2008564(unsigned int actor) {
    int msg = (int)Lconst_22ab;

    API_MessageID(msg);
    __ShowActorMessage_NoWait(actor, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_MessageID(msg + 1);
    } else {
        API_MessageID(msg + 2);
    }
    API_ActorMessage(actor, 0);
}
extern unsigned char Lconst_2352[] __asm__(".Lconst_2352");
__asm__(".equ .Lconst_2352, 0x2352");
extern void __Func_808f1c0(int, int);
extern int __Func_8091a58(int, int);

void OvlFunc_952_20085a4(void)
{
    int msg;

    API_CutsceneStart();
    __Func_808e118();
    msg = (int)Lconst_2352;
    API_MessageID(msg);
    API_ActorMessage(-1, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xe, 2);
    API_CutsceneWait(0x1e);
    API_MapActor_Face(0, 0xe, 0x1e);
    __ShowActorMessage_NoWait(0xe, 0);
    if (__Func_8091c7c(0, 0) != 0) {
        API_MessageID(msg + 2);
        API_ActorMessage(0xe, 0);
    } else {
        API_CutsceneWait(0x14);
        API_MessageID(msg + 3);
        API_ActorMessage(0xe, 0);
        API_CutsceneWait(0xa);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(0x1e);
        API_Func_8092adc(0, 0x80 << 7, 0);
        API_CutsceneWait(0x1e);
        API_MapActor_SetPos(0x10, 0, 0);
        __Func_808f1c0(0xcd, 3);
        API_MapActor_SetAnim(0, 1);
        __Func_8091a58(0xcd, 0);
        API_SetFlag(0xf31);
    }
}
static inline void BabiRecoveryByte(unsigned char *field, int value)
{
    *field = value;
}

void OvlFunc_952_2008674(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern int __Func_8091c7c(int, int);
    extern int BabiRecoveryActor(int) __asm__("__MapActor_GetActor");
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    unsigned char *actor;

    API_CutsceneStart();
    API_MessageID(MSG_2280);
    actor = (unsigned char *)BabiRecoveryActor(0);
    actor += 0x54;
    BabiRecoveryByte(actor, 0);
    actor = (unsigned char *)BabiRecoveryActor(10);
    actor += 0x54;
    BabiRecoveryByte(actor, 0);
    API_WaitFrames(1);
    *(volatile unsigned short *)0x4000000 = 0x1140;
    API_ActorMessage(-1, 0);
    *(volatile unsigned short *)0x4000000 = 0x140;
    actor = (unsigned char *)BabiRecoveryActor(0);
    actor += 0x54;
    BabiRecoveryByte(actor, 1);
    actor = (unsigned char *)BabiRecoveryActor(10);
    actor += 0x54;
    BabiRecoveryByte(actor, 1);
    API_MapActor_SetAnim(0, 31);
    actor = (unsigned char *)BabiRecoveryActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetPos(1, 0x780000, 0x680000);
    API_MapActor_SetPos(3, 0x680000, 0x500000);
    API_MapActor_SetPos(2, 0x780000, 0x780000);
    API_Func_8092adc(1, 0, 0);
    API_Func_8092adc(3, 0, 0);
    API_Func_8092adc(2, 0xe000, 0);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c8) = 0x3c;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(20);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c8) = 24;
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    API_Func_8092304(3, 16, 0);
    API_Func_8092adc(3, 0x2000, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    actor = (unsigned char *)BabiRecoveryActor(0);
    *(int *)(actor + 0x10) = (*(int *)(actor + 0x10) + 0xfffd0000);
    actor = (unsigned char *)BabiRecoveryActor(0);
    *(int *)(actor + 0x40) = (*(int *)(actor + 0x40) + 0xfffd0000);
    API_MapActor_SetAnim(0, 0x20);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(0, 0x22);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(0, 0x21);
    API_CutsceneWait(0x32);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x105, 0x3c);
    API_CutsceneWait(20);
    API_MapActor_Emote(1, 0x102, 0x3c);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x102, 0x50);
    API_MapActor_Emote(2, 0x106, 0x3c);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x4000, 0);
    API_CutsceneWait(30);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x2d);
    API_Func_8092adc(1, 0, 0);
    API_Func_8092adc(2, 0xe000, 0);
    API_CutsceneWait(30);
    __ShowActorMessage_NoWait(1, 0);
    choice1 = __Func_8091c7c(-1, 0);
    if (choice1 != 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x22);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x21);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x21);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 2);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
    }
    API_CutsceneWait(10);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_Func_8092304(1, -16, 0);
    API_Func_8092adc(1, 0, 0);
    API_CutsceneWait(0x23);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_SetSpeed(0, 0x1e666, 0xf333);
    API_Func_8092304(0, -0x20, 0);
    actor = (unsigned char *)BabiRecoveryActor(0);
    __Actor_SetSpriteFlags(actor, 1);
    API_Func_8092adc(3, 0x4000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(0, 3);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x13333, 0x9999);
    API_MapActor_SetAnim(1, 2);
    actor = (unsigned char *)BabiRecoveryActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(3, 2);
    actor = (unsigned char *)BabiRecoveryActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = (unsigned char *)BabiRecoveryActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_CutsceneWait(10);
    API_CutsceneEnd();
}
void OvlFunc_952_2008af8(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_808e118(void);
    extern int __Func_8091c7c(int, int);
    extern void __InnHeal(int);
    extern int BabiHealActor(int) __asm__("__MapActor_GetActor");
    extern int __ShowActorMessage_NoWait(int, int);
    short savedFacing;
    unsigned int facing;
    int choice1;
    int flagValue2;
    int flagValue3;
    int flagValue4;
    int flagValue5;
    int flagValue6;
    unsigned char *actor;

    actor = (unsigned char *)BabiHealActor(0);
    savedFacing = (*(unsigned short *)(actor + 6) + 0x2000) & (int)0xffffc000;
    API_CutsceneStart();
    __Func_808e118();
    API_MessageID(0x1ffb);
    API_ShowActorMessage_NoWait(-1, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        flagValue2 = API_GetFlag(0x96a);
        if (flagValue2 != 0) {
            API_CutsceneWait(20);
            __InnHeal(0);
            return;
        }
        API_CutsceneWait(20);
        facing = (unsigned short)savedFacing;
        if (facing == 0) {
            API_MapActor_TravelToAnimWait(0, 0x80, 0x78);
        }
        if (facing == 0x8000) {
            API_MapActor_TravelToAnimWait(0, 0xf0, 0x78);
        }
        API_MapActor_TravelToAnimWait(0, 0xb8, 0x78);
        API_Func_8092adc(0, 0, 0);
        API_CutsceneWait(10);
        API_Func_809233c(1, 16, 0, 0x8000);
        API_MapActor_WaitScript(1);
        API_CutsceneWait(10);
        API_ActorMessage(1, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(1, 0x10000, 0x8000);
        API_Func_8092304(1, 0x28, 0);
        API_Func_8092304(1, 0, -0x20);
        API_Func_8092adc(1, 0x6000, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(0, 0x8000, 0);
        API_CutsceneWait(20);
        API_Func_809233c(2, -16, 0, 0);
        API_MapActor_WaitScript(2);
        API_CutsceneWait(10);
        API_ActorMessage(2, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(2, 0x10000, 0x8000);
        API_Func_8092304(2, -0x28, 0);
        API_Func_8092304(2, 0, 0x28);
        API_Func_8092adc(2, 0xe000, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(0, 0, 0);
        API_CutsceneWait(20);
        API_Func_809233c(3, 16, 0, 0x8000);
        API_MapActor_WaitScript(3);
        API_CutsceneWait(10);
        API_ActorMessage(3, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(3, 0x10000, 0x8000);
        API_Func_8092304(3, 0x28, 0);
        API_Func_8092304(3, 0, 0x28);
        API_Func_8092adc(3, 0xa000, 0);
        API_CutsceneWait(20);
        API_Func_80933f8(-1, -1, -1, 0);
        API_Func_8092304(0, -0x38, 0);
        API_Func_8092304(0, 0, -0x20);
        API_Func_8092adc(0, 0x2000, 0);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(10);
        API_ActorMessage(3, 0);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(10);
        flagValue3 = API_GetFlag(0x96a);
        if (flagValue3 == 0) {
            API_ActorMessage(1, 0);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        }
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(10);
        flagValue4 = API_GetFlag(0x96a);
        if (flagValue4 == 0) {
            API_ActorMessage(2, 0);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        }
        API_CutsceneWait(20);
        API_Func_8092adc(0, 0, 0);
        API_Func_8092adc(1, 0x8000, 0);
        API_Func_8092adc(3, 0x8000, 0);
        API_Func_8092adc(2, 0, 0);
        __InnHeal(0);
        API_Func_8092adc(0, 0x2000, 0);
        API_Func_8092adc(1, 0x6000, 0);
        API_Func_8092adc(3, 0xa000, 0);
        API_Func_8092adc(2, 0xe000, 0);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(10);
        API_ActorMessage(1, 0);
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(10);
        flagValue5 = API_GetFlag(0x96a);
        if (flagValue5 == 0) {
            API_ActorMessage(2, 0);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        }
        API_MapActor_DoAnim(3, 3);
        API_CutsceneWait(10);
        flagValue6 = API_GetFlag(0x96a);
        if (flagValue6 == 0) {
            API_ActorMessage(3, 0);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        }
        API_Func_8092304(1, 0, 0x20);
        API_Func_80922c4(1, -0x70, 0);
        API_Func_8092304(3, 0, -0x28);
        API_Func_80922c4(3, -0x70, 0);
        API_CutsceneWait(0x32);
        API_Func_8092304(2, 0, -24);
        API_MapActor_WaitMovement(1);
        API_Func_8092adc(0, 0x4000, 0);
        API_Func_8092304(1, 0, -16);
        API_MapActor_WaitMovement(3);
        API_Func_8092adc(3, 0xc000, 0);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(1, 0x13333, 0x9999);
        API_MapActor_SetSpeed(2, 0x13333, 0x9999);
        API_MapActor_SetSpeed(3, 0x13333, 0x9999);
        API_MapActor_SetAnim(1, 2);
        actor = (unsigned char *)BabiHealActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
        API_MapActor_SetAnim(3, 2);
        actor = (unsigned char *)BabiHealActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(3, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
        }
        API_MapActor_WaitMovement(3);
        API_MapActor_SetPos(3, 0, 0);
        API_MapActor_SetAnim(2, 2);
        actor = (unsigned char *)BabiHealActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(2, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
        }
        API_MapActor_WaitMovement(2);
        API_MapActor_SetPos(2, 0, 0);
        API_SetFlag(0x96a);
    }
    API_CutsceneEnd();
}

void OvlFunc_952_2008ff8(void)
{
    extern void __Func_808e118(void);

    API_SetFlag(0x96b);
    API_CutsceneStart();
    __Func_808e118();
    API_MessageID(0x2021);
    API_MapActor_TravelToAnimWait(0, 0x208, 0x1a8);
    API_Func_8092adc(0, 0xe000, 0);
    API_Func_80933f8(0x2300000, -1, 0x1700000, 1);
    API_Func_8093530();
    API_MapActor_SetSpeed(20, 0x10000, 0x8000);
    API_Func_8092304(20, 0x28, 0);
    API_MapActor_TravelToAnimWait(20, 0x248, 0x168);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x101, 0x28);
    API_Func_8092adc(20, 0x8000, 0);
    API_MapActor_SetSpeed(21, 0x20000, 0x10000);
    API_MapActor_SetSpeed(22, 0x20000, 0x10000);
    API_MapActor_TravelToAnim(21, 0x210, 0x160);
    API_MapActor_TravelToAnimWait(22, 0x210, 0x170);
    API_WaitFrames(3);
    API_MapActor_SetAnim(21, 1);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_Func_8092304(20, -16, 0);
    API_CutsceneWait(10);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(21, 4);
    API_MapActor_DoAnim(22, 4);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x105, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(21, 0x102, 0x28);
    API_MapActor_SetSpeed(21, 0x10000, 0x8000);
    API_Func_8092304(21, 8, 0);
    API_CutsceneWait(20);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x101, 0x50);
    API_CutsceneWait(10);
    API_MapActor_Emote(22, 0x102, 0x28);
    API_MapActor_SetSpeed(22, 0x10000, 0x8000);
    API_Func_8092304(22, 8, 0);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 4);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(21, 3);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(21, 2);
    API_CutsceneWait(20);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 4);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x105, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(21, 0x101, 0x28);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(21, 2);
    API_CutsceneWait(20);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(21, 22, 0x3c);
    API_MapActor_Face(21, 20, 0);
    API_MapActor_Face(22, 20, 0);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(21, 0x100, 0x28);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_Surprise(20, 0x102);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(30);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(21, 0x101, 0x28);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Emote(22, 0x101, 0x28);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 4);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(21, 22, 0x3c);
    API_MapActor_Face(21, 20, 0);
    API_MapActor_Face(22, 20, 0);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x105, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(21, 2);
    API_CutsceneWait(20);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(21, 2);
    API_CutsceneWait(20);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 4);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(22, 0x100, 0x28);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(21, 0x101, 0x28);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 4);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(21, 22, 0x3c);
    API_MapActor_Face(21, 20, 0);
    API_MapActor_Face(22, 20, 0);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Surprise(21, 0x102);
    API_MapActor_Surprise(22, 0x102);
    API_Func_809259c(21, 2);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_8092adc(20, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(21, 4);
    API_CutsceneWait(20);
    API_ActorMessage(21, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 4);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(20, 0x8000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(21, 3);
    API_CutsceneWait(30);
    API_ActorMessage(21, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(20, 0x105, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(0x28);
    API_MapActor_TurnToFaceActor(21, 22, 0x3c);
    API_MapActor_DoAnim(21, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(22, 0x4000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(21, 0x14ccc, 0xa666);
    API_MapActor_SetSpeed(22, 0x14ccc, 0xa666);
    API_Func_80922c4(21, 0, 0x78);
    API_Func_8092304(22, 0, 0x78);
    API_MapActor_SetPos(21, 0, 0);
    API_MapActor_SetPos(22, 0, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(20, 0xcccc, 0x6666);
    API_Func_8092304(20, -16, 0);
    API_CutsceneWait(30);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 4);
    API_CutsceneWait(30);
    API_Func_8092adc(20, 0, 0);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(20, 0x10000, 0x8000);
    API_Func_8092304(20, 0x78, 0);
    API_Func_8092304(20, 0x3c, 0);
    API_MapActor_SetPos(20, 0, 0);
    API_CutsceneEnd();
}
void OvlFunc_952_20097e8(void)
{
    struct BabiGraphicsView {
        int pad0[0x528 / 4];
        unsigned short pad0b;
        unsigned short unk52a : 16;
        unsigned char pad1[0x534 - 0x52c];
        unsigned short unk534 : 16;
        unsigned short unk536 : 16;
    };
    struct BabiSceneView {
        unsigned char pad0[0x1c0];
        int mode;
        int unk1c4;
        int unk1c8;
        unsigned char pad1[0x1d8 - 0x1cc];
        unsigned short messageID;
    };
    extern unsigned char iwram_3001ebc[];
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_808fe38(int);
    extern int __Func_8091c7c(int, int);
    extern unsigned char *BabiWakeActor(int) __asm__("__MapActor_GetActor");
    extern int __ShowActorMessage_NoWait(int, int);
    struct BabiGraphicsView *graphics;
    int fade;
    int refused;
    extern unsigned int BabiHeldKeys __asm__("gKeyHeld");
    int choice1;
    int choice2;
    unsigned char *actor;
    struct BabiSceneView *field;

    API_CutsceneStart();
    API_MessageID(0x228c);
    API_MapActor_SetAnim(0, 31);
    actor = BabiWakeActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetPos(1, 0x680000, 0x680000);
    API_MapActor_SetPos(3, 0x580000, 0x780000);
    API_MapActor_SetPos(2, 0x780000, 0x780000);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(3, 0, 0);
    API_Func_8092adc(2, 0x8000, 0);
    field = *(struct BabiSceneView **)iwram_3001ebc;
    field->mode = 0x100;
    field->unk1c8 = 12;
    API_WaitFrames(1);
    __Func_808fe38(9);
    graphics = ((struct BabiGraphicsView **)iwram_3001ebc)[4];
    graphics->unk52a = 0;
    graphics->unk534 = 0x1f1f;
    graphics->unk536 = 1;
    API_MapTransitionIn();
    API_WaitMapTransition();
    for (fade = 1; fade <= 5; ++fade) {
        API_WaitFrames(3);
        graphics->unk52a = fade;
    }
    API_CutsceneWait(0x28);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(30);
    for (fade = 5; fade <= 31; ++fade) {
        API_WaitFrames(3);
        graphics->unk52a = fade;
    }
    graphics->unk536 = 31;
    field = *(struct BabiSceneView **)iwram_3001ebc;
    field->mode = 0x209;
    field->unk1c8 = 24;
    API_CutsceneWait(20);
    API_MapActor_Emote(1, 0x100, 0x32);
    API_MapActor_Face(1, 0, 0x28);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x101, 0x28);
    API_Func_8092adc(2, 0xe000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_ActorMessage(3, 0);
    API_Func_8092adc(3, 0xe000, 0);
    API_CutsceneWait(30);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    API_Func_8092304(3, 0, -0x28);
    API_Func_8092304(3, 0x20, 0);
    API_Func_8092adc(3, 0x2000, 0);
    API_CutsceneWait(10);
    API_ActorMessage(3, 0);
    actor = BabiWakeActor(0);
    *(int *)(actor + 0x10) = (*(int *)(actor + 0x10) + 0xfffd0000);
    actor = BabiWakeActor(0);
    *(int *)(actor + 0x40) = (*(int *)(actor + 0x40) + 0xfffd0000);
    API_MapActor_SetAnim(0, 0x20);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(0, 0x22);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(0, 0x21);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x102, 0x50);
    API_MapActor_Emote(2, 0x100, 0x32);
    __ShowActorMessage_NoWait(2, 0);
    choice1 = __Func_8091c7c(-1, 0);
    if (choice1 == 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x21);
        API_CutsceneWait(20);
        API_MapActor_Emote(1, 0x103, 0x28);
        API_MapActor_Jump(1, 4, 13);
        API_MapActor_Jump(1, 4, 30);
        API_ActorMessage(1, 0);
        (*(struct BabiSceneView **)iwram_3001ebc)->messageID++;
    } else {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x22);
        API_CutsceneWait(20);
        API_MapActor_Emote(1, 0x103, 0x28);
        API_MapActor_Jump(1, 4, 13);
        API_MapActor_Jump(1, 4, 30);
        (*(struct BabiSceneView **)iwram_3001ebc)->messageID++;
        API_ActorMessage(1, 0);
    }
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0xa000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0x2000, 0);
    API_CutsceneWait(30);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x28);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0xe000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(3, 0x6000, 0);
    API_CutsceneWait(0x32);
    API_Func_8092adc(3, 0x2000, 0);
    API_CutsceneWait(0x23);
    API_MapActor_Emote(3, 0x108, 0x32);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(2, 0);
    choice2 = __Func_8091c7c(-1, 0);
    if (choice2 == 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x21);
        API_CutsceneWait(20);
        API_MapActor_Emote(1, 0x107, 0x28);
        API_ActorMessage(1, 0);
        refused = 0;
        (*(struct BabiSceneView **)iwram_3001ebc)->messageID++;
    } else {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x22);
        API_CutsceneWait(20);
        API_MapActor_Emote(1, 0x107, 0x28);
        (*(struct BabiSceneView **)iwram_3001ebc)->messageID++;
        refused = 1;
        API_ActorMessage(1, 0);
    }
    API_CutsceneWait(10);
    API_Func_8092adc(2, 0xa000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0x2000, 0);
    API_CutsceneWait(30);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x28);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0xe000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(3, 0x6000, 0);
    API_CutsceneWait(0x32);
    API_Func_8092adc(3, 0x2000, 0);
    API_CutsceneWait(0x23);
    API_MapActor_Emote(3, 0x108, 0x32);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    if (refused == 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(2, 3);
        API_CutsceneWait(30);
        API_ActorMessage(2, 0);
        API_CutsceneWait(10);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(30);
        API_ActorMessage(1, 0);
        (*(struct BabiSceneView **)iwram_3001ebc)->messageID += 2;
    } else {
        (*(struct BabiSceneView **)iwram_3001ebc)->messageID += 2;
        API_CutsceneWait(10);
        API_MapActor_DoAnim(2, 4);
        API_CutsceneWait(20);
        API_ActorMessage(2, 0);
        API_CutsceneWait(10);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
    }
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x102, 0x3c);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(2, 3, 0x28);
    API_Func_8092adc(3, 0x2000, 0);
    API_Func_8092adc(2, 0xe000, 0);
    API_CutsceneWait(30);
    while ((BabiHeldKeys & 0xf0) == 0) {
        API_WaitFrames(1);
    }
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_SetSpeed(0, 0x1e666, 0xf333);
    API_Func_8092304(0, -0x20, -8);
    actor = BabiWakeActor(0);
    __Actor_SetSpriteFlags(actor, 1);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(3, 0x4000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0x2000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x13333, 0x9999);
    API_MapActor_SetAnim(1, 2);
    actor = BabiWakeActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(3, 2);
    actor = BabiWakeActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = BabiWakeActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_CutsceneWait(10);
    API_CutsceneEnd();
}

struct BabiActorView {
    unsigned char beforeX[0xa];
    short x; /* +0x0a: signed high half of the fixed-point X position */
    unsigned char beforeZ[6];
    short z; /* +0x12: signed high half of the fixed-point Z position */
    unsigned char beforeFlags[0x46];
    unsigned char flags5a;
};
struct BabiCutsceneState {
    unsigned char beforeMessage[0x1d8];
    unsigned short messageID;
};
/* This linker symbol contains the state pointer, not the state itself. */
extern unsigned char iwram_3001ebc[];
#define BABI_SCENE (*(struct BabiCutsceneState **)iwram_3001ebc)
#define BABI_OFFSET(type, field) ((unsigned int)&((type *)0)->field)
#define BABI_CHECK(name, condition) typedef char name[(condition) ? 1 : -1]
BABI_CHECK(babi_x_offset, BABI_OFFSET(struct BabiActorView, x) == 0x0a);
BABI_CHECK(babi_z_offset, BABI_OFFSET(struct BabiActorView, z) == 0x12);
BABI_CHECK(babi_flags_offset, BABI_OFFSET(struct BabiActorView, flags5a) == 0x5a);
BABI_CHECK(babi_message_offset, BABI_OFFSET(struct BabiCutsceneState, messageID) == 0x1d8);
BABI_CHECK(babi_halfword_width, sizeof(unsigned short) == 2);
BABI_CHECK(babi_pointer_width, sizeof(void *) == 4);

void OvlFunc_952_200a014(void)
{
    extern void * __MapActor_GetActor(unsigned int);
    extern void __Func_8019908(int, int);
    extern void __Func_808f1c0(int, int);
    extern int __Func_8091a58(int, int);
    extern int __ShowActorMessage_NoWait(int, int);
    extern int __Func_8091c7c(int, int);
    extern void __MapActor_SetExtra(int, int);
    extern void __PlayMapMusic(void);
    struct BabiActorView *actor;
    unsigned char *actorFlags;
    int updatedFlags;

    /* Opening dialogue, camera placement and party staging. */
    API_PlaySound(30);
    API_CutsceneStart();
    API_MessageID(0x22c4);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_Func_80933f8(0xd80000, -1, 0x2e00000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_SetSpeed(14, 0xcccc, 0x6666);
    API_Func_8092304(14, 0, 16);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_SetCameraTarget(0, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0xd0, 0x2f8);
    API_CutsceneWait(10);
    API_Func_80933f8(0xd80000, -1, 0x2e00000, 1);
    API_Func_809233c(1, -16, 16, 0xc000);
    API_Func_809233c(3, 0, 24, 0xc000);
    API_Func_809233c(2, 16, 16, 0xc000);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    /* Original .Lm952_2140 / .Lm952_2320: flag-dependent dialogue and item sequence. */
    if (API_GetFlag(0x951) != 0) {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(20, 3);
        API_CutsceneWait(20);
        API_ActorMessage(20, 0);
        API_CutsceneWait(10);
        API_Func_8092adc(14, 0xa000, 0);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(14, 3);
        API_CutsceneWait(20);
        API_ActorMessage(14, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(20, 3);
        API_CutsceneWait(20);
        API_ActorMessage(20, 0);
        API_Func_8092adc(20, 0xc000, 0);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(20, 0x10000, 0x8000);
        API_Func_8092304(20, 0, -16);
        API_CutsceneWait(0x28);
        API_MapActor_DoAnim(20, 3);
        API_CutsceneWait(0x28);
        API_Func_8092adc(20, 0x4000, 0);
        API_CutsceneWait(20);
        API_Func_8092304(20, 0, 0x20);
        API_Func_8092adc(14, 0x8000, 0);
        API_CutsceneWait(10);
        API_Func_8092adc(20, 0, 0);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(20, 3);
        API_CutsceneWait(30);
        API_Func_8092adc(20, 0x4000, 0);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(20, 0xcccc, 0x6666);
        actorFlags = (unsigned char *)__MapActor_GetActor(20);
        actorFlags += 0x5a;
        *actorFlags &= 0xfe;
        API_Func_8092304(20, 0, -16);
        actorFlags = (unsigned char *)__MapActor_GetActor(20);
        actorFlags += 0x5a;
        updatedFlags = 1;
        updatedFlags |= *actorFlags;
        *actorFlags = updatedFlags;
        API_Func_8092adc(14, 0x4000, 0);
        API_CutsceneWait(0x28);
        API_MapActor_SetSpeed(14, 0xcccc, 0x6666);
        API_Func_8092304(14, 0, 16);
        API_CutsceneWait(0x28);
        __Func_8019908(0xa4, 2);
        API_ActorMessage(-1, 0);
        __Func_808f1c0(0xa4, 3);
        __Func_8091a58(0xa4, 0);
        API_Func_8092adc(0, 0xc000, 0);
        API_CutsceneWait(30);
        API_Func_8092304(14, 0, -16);
        API_Func_8092adc(14, 0x4000, 0);
        API_CutsceneWait(30);
        API_Func_80925cc(14, 2);
        API_CutsceneWait(20);
        __ShowActorMessage_NoWait(14, 0);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 2);
    } else {
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 5);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(20, 3);
        API_CutsceneWait(20);
        API_ActorMessage(20, 0);
        API_Func_8092adc(14, 0xa000, 0);
        API_CutsceneWait(0x28);
        API_MapActor_DoAnim(14, 3);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(20, 3);
        API_CutsceneWait(30);
        API_Func_8092adc(14, 0x4000, 0);
        API_CutsceneWait(30);
        API_Func_80925cc(14, 2);
        API_CutsceneWait(20);
        __ShowActorMessage_NoWait(14, 0);
    }
    /* Dialogue choice; original alternate branch .Lm952_23f0. */
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(20, 3);
        API_CutsceneWait(20);
        API_ActorMessage(20, 0);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
    } else {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(20, 3);
        API_CutsceneWait(20);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
        API_ActorMessage(20, 0);
    }
    API_CutsceneWait(10);
    API_Func_8092adc(14, 0xa000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Jump(1, 4, 13);
    API_MapActor_Jump(1, 4, 30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(14, 0x4000, 0);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(14, 0x19999, 0xcccc);
    API_Func_8092304(20, 0, 16);
    API_WaitFrames(2);
    API_Func_8092adc(20, 0x2000, 0);
    API_CutsceneWait(10);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(30);
    API_MapActor_Face(14, 20, 30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(14, 1, 0);
    API_CutsceneWait(0x28);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(30);
    API_MapActor_Face(1, 2, 30);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_MapActor_Face(2, 1, 30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x106, 0x32);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 4);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x101, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(14, 0);
    /* Dialogue choice; original alternate branch .Lm952_26e0. */
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(14, 3);
        API_CutsceneWait(30);
        API_ActorMessage(14, 0);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
    } else {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(14, 4);
        API_CutsceneWait(20);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
        API_ActorMessage(14, 0);
    }
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x32);
    API_MapActor_Face(14, 20, 0x3c);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 4);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x102, 0x28);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x100, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(14, 0x102, 0x32);
    API_MapActor_Face(20, 14, 0x32);
    API_CutsceneWait(10);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(0x32);
    API_Func_8092adc(20, 0x2000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(14, 0x8000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(14, 0x105, 0x3c);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x100, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(14, 2, 0x28);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x3c);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(0x32);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0x28);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(1, 0);
    /* Dialogue choice; original alternate branch .Lm952_2a3a. */
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 3);
    } else {
        API_CutsceneWait(10);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
        __ShowActorMessage_NoWait(1, 0);
        /* Dialogue choice; original alternate branch .Lm952_2a8c. */
        if (__Func_8091c7c(0, 0) == 0) {
            API_CutsceneWait(20);
            API_ActorMessage(1, 0);
            BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
        } else {
            BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
            API_ActorMessage(1, 0);
        }
    }
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(0x28);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x101, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(20, 14, 0x28);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(14, 0x105, 0x46);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0x28);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(30);
    API_ActorMessage(1, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x101, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(0x28);
    API_MapActor_Face(0, 2, 0);
    API_MapActor_Face(1, 2, 0);
    API_MapActor_Face(3, 2, 0);
    API_MapActor_Face(20, 2, 0);
    API_CutsceneWait(0x32);
    API_CutsceneWait(10);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(14, 0x101, 0x28);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(30);
    API_MapActor_Face(20, 14, 30);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(14, 0x8000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(14, 0x102, 0x28);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(14, 20, 0x28);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Surprise(20, 0x102);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_MapActor_SetSpeed(20, 0x19999, 0xcccc);
    API_Func_8092304(20, 0, 24);
    API_MapActor_Face(0, 20, 0);
    API_MapActor_Face(1, 20, 0);
    API_MapActor_Face(3, 20, 0);
    API_MapActor_Face(2, 20, 0);
    API_Func_8092adc(14, 0x4000, 0);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x100, 0x3c);
    API_MapActor_Face(20, 14, 0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(14, 0x105, 0x28);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x101, 0x3c);
    API_MapActor_SetSpeed(20, 0x13333, 0x9999);
    API_Func_8092304(20, 0, -24);
    API_Func_8092adc(20, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(14, 0x8000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x102, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0x32);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(14, 20, 30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x101, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_Func_8092adc(14, 0x8000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x101, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(14, 0x4000, 0);
    API_Func_8092adc(20, 0x2000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(14, 0x102, 0x28);
    API_ActorMessage(14, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(20);
    API_MapActor_Emote(14, 0x105, 0x3c);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x101, 0x28);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(14, 0x100, 0x28);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x101, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(1, 0x101, 0);
    API_MapActor_Emote(2, 0x101, 0);
    API_MapActor_Emote(3, 0x101, 0x28);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x100, 0x28);
    __ShowActorMessage_NoWait(2, 0);
    /* Dialogue choice; original alternate branch .Lm952_34d4. */
    if (__Func_8091c7c(14, 0) == 0) {
        API_CutsceneWait(10);
        API_ActorMessage(2, 0);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
    } else {
        API_CutsceneWait(10);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
        API_ActorMessage(2, 0);
    }
    API_CutsceneWait(10);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(20, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(14, 20, 0x28);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0x28);
    API_ActorMessage(1, 0);
    API_Func_8092adc(14, 0x4000, 0);
    API_Func_8092adc(20, 0x2000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(30);
    API_MapActor_TurnToFaceActor(3, 2, 0x3c);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 4);
    API_CutsceneWait(20);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(20, 14, 0x3c);
    API_Func_8092adc(20, 0x2000, 0);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(30);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(20, 0);
    /* Dialogue choice; original alternate branch .Lm952_36dc. */
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(20);
        API_MapActor_Emote(1, 0x102, 0x28);
        API_ActorMessage(1, 0);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
    } else {
        API_CutsceneWait(10);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
        API_ActorMessage(1, 0);
    }
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x100, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Emote(14, 0x100, 0x28);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(20, 14, 0x28);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x102, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(14, 20, 0x28);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x101, 0x50);
    API_MapActor_Emote(20, 0x102, 0x46);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0x32);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x106, 0x32);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_Func_8092adc(20, 0x2000, 0);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(14, 0x108, 0x28);
    __ShowActorMessage_NoWait(14, 0);
    /* Dialogue choice; original alternate branch .Lm952_3928. */
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(20);
        API_MapActor_Emote(14, 0x100, 0x28);
        API_ActorMessage(14, 0);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
    } else {
        API_CutsceneWait(10);
        API_MapActor_Emote(14, 0x100, 0x28);
        BABI_SCENE->messageID = (BABI_SCENE->messageID + 1);
        API_ActorMessage(14, 0);
    }
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(14, 20, 0x28);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Face(20, 14, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(14, 0x100, 0x28);
    API_Func_8092adc(14, 0x8000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(20, 0x100, 0x28);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(14, 2);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(20, 2);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_Func_8092adc(20, 0x2000, 0);
    API_CutsceneWait(20);
    __MapActor_SetExtra(0, 20);
    __MapActor_SetExtra(1, 20);
    __MapActor_SetExtra(3, 20);
    __MapActor_SetExtra(2, 20);
    API_MapActor_SetSpeed(20, 0x10000, 0x8000);
    API_Func_8092304(20, 0, 0x20);
    API_Func_8092adc(20, 0, 0);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(20, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(20, 3);
    API_CutsceneWait(30);
    API_Func_8092304(1, 16, 0);
    API_Func_80922c4(20, 0, 0x50);
    API_CutsceneWait(0x28);
    API_Func_8092304(1, -16, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(3, 0x4000, 0);
    API_MapActor_WaitMovement(20);
    API_CutsceneWait(0x50);
    API_MapActor_SetPos(20, 0, 0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_CutsceneWait(30);
    __MapActor_SetExtra(0, 14);
    __MapActor_SetExtra(1, 14);
    __MapActor_SetExtra(3, 14);
    __MapActor_SetExtra(2, 14);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(14, 0xcccc, 0x6666);
    API_Func_8092304(14, 0, 24);
    API_Func_8092304(14, -0x50, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(14, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(14, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(14, 0x4000, 0);
    API_CutsceneWait(20);
    API_Func_8092304(14, 0, 0x30);
    API_Func_8092304(14, -0x40, 0);
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_MapActor_SetIdle(3);
    API_MapActor_SetIdle(2);
    API_MapActor_SetPos(14, 0, 0);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(0, 3, 0);
    API_MapActor_TurnToFaceActor(1, 2, 0);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_PlaySound(17);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x13333, 0x9999);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    /* Rejoin actor 0, re-reading its position before each party member moves. */
    API_MapActor_SetAnim(1, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, actor->x, actor->z);
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, actor->x, actor->z);
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetAnim(3, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, actor->x, actor->z);
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_CutsceneWait(10);
    __PlayMapMusic();
    API_CutsceneEnd();
}

#undef BABI_SCENE
#undef BABI_OFFSET
#undef BABI_CHECK

extern unsigned char iwram_3001ebc[];

extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_80118a8(int);
extern void __MapActor_TravelBy(int, int, int);
extern void __Func_8092208(int, int, int);
extern void __Func_8091e9c(int);
extern void __Func_80118c0(int);
void OvlFunc_952_200bd40(void)
{
    unsigned char *map = *(unsigned char **)iwram_3001ebc;

    __CutsceneStart();
    __PlaySound(0x9e);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    __MapActor_SetAnim(0, 2);

    if (*(short *)(map + 0x16c) == 0x20) {
        __Func_80118a8(1);
        __CutsceneWait(10);
        API_MapActor_TravelBy(0, 0, -16);
    } else if (*(short *)(map + 0x16c) == 0x1e) {
        __Func_80118a8(4);
        __CutsceneWait(10);
        API_Func_8092208(0, 3, -16);
    } else {
        __Func_80118a8(2);
        __CutsceneWait(10);
        API_Func_8092208(0, 3, -16);
    }
    __CutsceneWait(16);
    __Func_8091e9c(*(short *)(map + 0x16c));
    __Func_80118c0(1);
    __Func_80118c0(2);
    __Func_80118c0(4);
    __CutsceneEnd();
}

extern unsigned char L4550[] __asm__(".Lm952_4550");

void OvlFunc_952_200bdf8(void)
{
    unsigned short v = 0xa;

    __CutsceneStart();
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    __PlaySound(0x9e);
    do { v = (unsigned short) v; } while (0);
    __Func_8010560(L4550, 0x24, v);
    API_Func_8092208(0, 2, -16);
    __CutsceneWait(16);
    __Func_8091e9c(2);
    __CutsceneEnd();
}

extern unsigned char Lconst_2233[] __asm__(".Lconst_2233");
__asm__(".equ .Lconst_2233, 0x2233");

void OvlFunc_952_200be40(void)
{
    int msg;

    API_SetFlag(0x96c);
    API_CutsceneStart();
    __Func_808e118();
    API_Func_8092adc(8, 0xa0 << 7, 0);
    API_Func_8092adc(9, 0xc0 << 6, 0);
    API_MapActor_TravelToAnimWait(0, 0xc8, 0x88 << 1);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_CutsceneWait(0x14);
    msg = (int)Lconst_2233;
    API_MessageID(msg);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(0x14);
        API_MessageID(msg + 1);
        API_ActorMessage(8, 0);
    } else {
        API_CutsceneWait(0x14);
        API_MessageID(msg + 2);
        API_ActorMessage(8, 0);
        API_CutsceneWait(0x14);
        API_MapActor_TurnToFaceActor(8, 9, 0x3c);
        API_Func_8092adc(9, 0xc0 << 6, 0);
        API_CutsceneWait(0x28);
        API_Func_80925cc(9, 2);
        API_CutsceneWait(0x1e);
        API_MapActor_TurnToFaceActor(8, 9, 0x1e);
        API_MapActor_DoAnim(9, 3);
        API_CutsceneWait(0x1e);
        API_MapActor_Emote(8, 0x81 << 1, 0x32);
        API_Func_8092adc(8, 0xa0 << 7, 0);
        API_Func_8092adc(9, 0xc0 << 6, 0);
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(0x14);
        API_ActorMessage(8, 0);
        API_CutsceneWait(0xa);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(0x14);
        API_ActorMessage(8, 0);
    }
    API_CutsceneEnd();
}
void OvlFunc_952_200bf84(void)
{
    if (API_GetFlag(0x96d) == 0) {
        API_SetFlag(0x96d);
        API_MessageID(0x2239);
        API_ActorMessage(9, 0);
    } else {
        API_MessageID(0x223a);
        API_ActorMessage(9, 0);
    }
}

extern unsigned char Lconst_22a3[] __asm__(".Lconst_22a3");
__asm__(".equ .Lconst_22a3, 0x22a3");

void OvlFunc_952_200bfc4(int a) {
    int msg = (int)Lconst_22a3;

    API_MessageID(msg);
    __ShowActorMessage_NoWait(a, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_MessageID(msg + 1);
        API_ActorMessage(a, 0);
    } else {
        API_MessageID(msg + 2);
        API_ActorMessage(a, 0);
    }
}

extern void __Func_801776c();

void OvlFunc_952_200c00c(void) {
    __CutsceneStart();
    __Func_801776c(0x947, 1);
    __Func_801776c(0x29e0, 1);
    __CutsceneEnd();
}

extern int __GetFlag(int);
extern unsigned char _EVENT_8b[];
extern unsigned char Lm952_5ad8[] __asm__(".Lm952_5ad8");
extern unsigned char Lm952_5a48[] __asm__(".Lm952_5a48");
extern unsigned char Lm952_59e8[] __asm__(".Lm952_59e8");
extern unsigned char Lm952_5688[] __asm__(".Lm952_5688");
extern unsigned char Lm952_5394[] __asm__(".Lm952_5394");
extern unsigned char Lm952_5004[] __asm__(".Lm952_5004");

int BabisPalace_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_8b) {
        if (__GetFlag(0x950)) return (int)Lm952_5ad8;
        if (__GetFlag(0x962)) return (int)Lm952_5a48;
        return (int)Lm952_59e8;
    }
    if (__GetFlag(0x950)) return (int)Lm952_5688;
    if (__GetFlag(0x962)) return (int)Lm952_5394;
    return (int)Lm952_5004;
}
#include "actor.h"
#include "rpg.h"

struct CS952_StateView { unsigned char padding[0x1c0]; short event, room; };
struct CS952_SceneView { unsigned char padding[0x1c0]; int mode; };
extern struct CS952_SceneView *CS952_SceneTyped __asm__("iwram_3001ebc");
extern struct Actor *CS952_GetActor(int) __asm__("__MapActor_GetActor");
extern void CS952_SpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
extern unsigned char *CS952_Alloc(int, unsigned int) __asm__("__galloc_iwram");
extern void CS952_LoadIcon(int) __asm__("__LoadItemIcon");
extern void CS952_Upload(int, int, void *) __asm__("__UploadSpriteGFX");
extern void CS952_Free(int) __asm__("__gfree");
extern struct Unit *CS952_Unit(int) __asm__("__GetUnit");
extern void CS952_UpdateBars(int) __asm__("__UpdateStatBarPercent");
extern void CS952_AddMember(int) __asm__("__AddPartyMember");
extern void CS952_PartyUpdate(void) __asm__("__Func_807a7a0");
extern void OvlFunc_952_200a014(void);
extern void OvlFunc_952_20097e8(void);
extern void OvlFunc_952_2008674(void);
extern unsigned char CS952_Event8b[] __asm__(".Lcs952_event8b");
__asm__(".equ .Lcs952_event8b, 0x8b");

static inline int API_GetPartyMembers_952(short *buf)
{
    extern int __Func_80796c4(short *);
    return __Func_80796c4(buf);
}

int BabisPalace_MapInit(void)
{
    struct CS952_StateView *state;
    short room91;
    int itemFlag, count99, count98, i99, i98, spriteMask;
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *icons;
    struct Unit *unit;
    short members99[8];
    short members98[8];

    API_Func_80118c0(1);
    API_Func_80118c0(2);
    API_Func_80118c0(4);
    state = (struct CS952_StateView *)&gState;
    if (state->room == 90) {
        API_SetFlag(0x962);
    }
    room91 = state->room;
    if (room91 == 91) {
        API_SetFlag(0x962);
        API_SetFlag(0x950);
    }
    if (state->event == (int)CS952_Event8b)
        goto done;
    if (state->room == 11)
        API_ClearFlag(0x12f);
    if (API_GetFlag(0x950)) {
        itemFlag = API_GetFlag(0xf31);
        if (itemFlag) {
            API_MapActor_SetPos(16, 0, 0);
        } else {
            actor = CS952_GetActor(16);
            actor->__unk5C = 1;
            actor->__unk55 = itemFlag;
            sprite = actor->sprite;
            actor->pos.y = 0x40000;
            sprite->numLayers = itemFlag;
            spriteMask = ~0x20;
            ((unsigned char *)sprite)[5] &= spriteMask;
            sprite->oam.palette = 0;
            icons = CS952_Alloc(17, 0x608);
            CS952_LoadIcon(0xcd);
            CS952_Upload(sprite->slot, 0x80, icons + 0x400);
            CS952_Free(17);
        }
        if (((struct CS952_StateView *)&gState)->room == 33 && !API_GetFlag(0x96f)) {
            API_SetFlag(0x96f);
            API_MapActor_SetPos(14, 0xd00000, 0x2c00000);
            OvlFunc_952_200a014();
        }
        API_MapActor_SetAnim(14, 5);
        CS952_SpriteFlags(CS952_GetActor(14), 0);
    } else if (API_GetFlag(0x962) && !API_GetFlag(0x966)) {
        API_MapActor_SetPos(10, 0x780000, 0x480000);
    }
    CS952_SceneTyped->mode = 0x209;
    CS952_GetActor(9)->collision |= 4;
    if (((struct CS952_StateView *)&gState)->room == 99) {
        count99 = API_GetPartyMembers_952(members99);
        for (i99 = 0; i99 < count99; i99++) {
            unit = CS952_Unit(members99[i99]);
            unit->HP = unit->maxHP;
            unit->PP = unit->maxPP;
            CS952_UpdateBars(members99[i99]);
        }
        CS952_AddMember(1);
        CS952_AddMember(2);
        CS952_AddMember(3);
        CS952_PartyUpdate();
        OvlFunc_952_20097e8();
        ((struct CS952_StateView *)&gState)->room = 8;
    }
    if (((struct CS952_StateView *)&gState)->room == 98) {
        count98 = API_GetPartyMembers_952(members98);
        for (i98 = 0; i98 < count98; i98++) {
            unit = CS952_Unit(members98[i98]);
            unit->HP = unit->maxHP;
            unit->PP = unit->maxPP;
            CS952_UpdateBars(members98[i98]);
        }
        CS952_AddMember(1);
        CS952_AddMember(2);
        CS952_AddMember(3);
        CS952_PartyUpdate();
        API_SetFlag(0x966);
        API_SetFlag(0x967);
        API_MapActor_SetPos(10, 0x380000, 0x780000);
        API_Func_8092adc(10, 0xf000, 0);
        OvlFunc_952_2008674();
        ((struct CS952_StateView *)&gState)->room = 8;
    }
done:
    return 0;
}

INCLUDE_ASM("asm/maps/babis_palace/babis_palace_data.s");

INCLUDE_ASM("asm/maps/babis_palace/imports.s");
