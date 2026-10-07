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

INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008108.s");

extern unsigned char Lm952_2241[] __asm__(".Lm952_2241");
__asm__(".equ .Lm952_2241, 0x2241");
extern void __Func_808e118(void);

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
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_20085a4.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008674.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008af8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_2008ff8.s");
INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_20097e8.s");
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

INCLUDE_ASM("asm/maps/babis_palace/OvlFunc_952_200be40.s");
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
INCLUDE_ASM("asm/maps/babis_palace/BabisPalace_MapInit.s");
INCLUDE_ASM("asm/maps/babis_palace/babis_palace_data.s");

INCLUDE_ASM("asm/maps/babis_palace/imports.s");
