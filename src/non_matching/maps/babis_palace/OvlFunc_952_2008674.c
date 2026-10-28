#include "api.h"
#include "message.h"

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
