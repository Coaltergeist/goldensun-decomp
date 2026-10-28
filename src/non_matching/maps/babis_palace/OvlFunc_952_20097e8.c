#include "api.h"

static inline void BabiGraphicsHalf(unsigned short *p, int value) { *p = value; }

void OvlFunc_952_20097e8(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_808fe38(int);
    extern int __Func_8091c7c(int, int);
    extern unsigned char *BabiWakeActor(int) __asm__("__MapActor_GetActor");
    extern int __ShowActorMessage_NoWait(int, int);
    unsigned char * graphics;
    int fade;
    int refused;
    extern unsigned int BabiHeldKeys __asm__("gKeyHeld");
    int choice1;
    int choice2;
    unsigned char *actor;
    unsigned char *field;

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
    field = (*(unsigned char **)CS_iwram_3001ebc);
    *(int *)(field + 0x1c0) = 0x100;
    *(int *)(field + 0x1c8) = 12;
    API_WaitFrames(1);
    __Func_808fe38(9);
    graphics = (unsigned char *)(*(int *)(CS_iwram_3001ebc + 0x10));
    BabiGraphicsHalf((unsigned short *)(graphics + 0x52a), 0);
    BabiGraphicsHalf((unsigned short *)(graphics + 0x534), 0x1f1f);
    BabiGraphicsHalf((unsigned short *)(graphics + 0x536), 1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    for (fade = 1; fade <= 5; ++fade) {
        API_WaitFrames(3);
        *(unsigned short *)(graphics + 0x52a) = fade;
    }
    API_CutsceneWait(0x28);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(30);
    for (fade = 5; fade <= 31; ++fade) {
        API_WaitFrames(3);
        *(unsigned short *)(graphics + 0x52a) = fade;
    }
    BabiGraphicsHalf((unsigned short *)(graphics + 0x536), 31);
    field = (*(unsigned char **)CS_iwram_3001ebc);
    *(int *)(field + 0x1c0) = 0x209;
    *(int *)(field + 0x1c8) = 24;
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
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x22);
        API_CutsceneWait(20);
        API_MapActor_Emote(1, 0x103, 0x28);
        API_MapActor_Jump(1, 4, 13);
        API_MapActor_Jump(1, 4, 30);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
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
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0, 0x22);
        API_CutsceneWait(20);
        API_MapActor_Emote(1, 0x107, 0x28);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
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
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 2);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 2);
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
