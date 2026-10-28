#include "api.h"

__asm__(".equ .LValeInteriorChoiceMessage, 0x1c6f");
extern unsigned char ValeInteriorChoiceMessage[] __asm__(".LValeInteriorChoiceMessage");
static inline void InteriorByte(unsigned char *field, int value) { *field = value; }
static inline void InteriorHalf(unsigned short *field, int value) { *field = value; }

void OvlFunc_887_2008f90(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern int ValeInteriorActor(int) __asm__("__MapActor_GetActor");
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    int flagValue2;
    int choice3;
    int flagValue4;
    unsigned char *actor;

    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0, 0x239, 0x189);
    API_Func_8092adc(0, 0x4000, 0x28);
    API_Func_809259c(8, 2);
    API_MessageID(0x1c66);
    API_ActorMessage_Wait(8, 0, 0x50);
    API_MapActor_Emote(8, 0x101, 0x3c);
    API_Func_809259c(8, 1);
    API_ActorMessage_Wait(8, 0, 0x3c);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x50);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_MapActor_TravelTo(8, 0x248, 0x196);
    API_Func_80118c0(11);
    API_Func_80118a8(12);
    API_MapActor_SetAnim(8, 12);
    API_CutsceneWait(0x50);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_MapActor_Emote(8, 0x108, 0x28);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_MapActor_Emote(0, 0x105, 0x3c);
    API_MapActor_DoAnim(8, 13);
    API_MapActor_Emote(8, 0x103, 0);
    API_MapActor_SetAnim(8, 11);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(8, 12);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x102, 0x3c);
    API_MapActor_SetAnim(8, 13);
    __ShowActorMessage_NoWait(8, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 1) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    flagValue2 = API_GetFlag(0x81c);
    if (flagValue2 != 0) {
        API_MapActor_Emote(8, 0x102, 0x3c);
    }
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_MapActor_Emote(8, 0x107, 0x3c);
    API_MessageID((int)ValeInteriorChoiceMessage);
    __ShowActorMessage_NoWait(8, 0);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 1) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    flagValue4 = API_GetFlag(0x81c);
    if (flagValue4 != 0) {
        API_MapActor_Emote(8, 0x102, 0x3c);
    }
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_MapActor_Emote(8, 0x107, 0x3c);
    API_MessageID((int)ValeInteriorChoiceMessage + 3);
    API_ActorMessage(8, 0);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 13);
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x28);
    actor = (unsigned char *)ValeInteriorActor(0);
    InteriorHalf((unsigned short *)(actor + 6), 0);
    API_WaitFrames(1);
    actor = (unsigned char *)ValeInteriorActor(0);
    actor += 0x5a;
    InteriorByte(actor, 0xfe & *actor);
    API_MapActor_TravelTo(0, 0x22e, 0x184);
    API_MapActor_SetSpeed(8, 0x13333, 0x9999);
    API_MapActor_SetAnim(8, 14);
    API_MapActor_TravelToWait(8, 0x24a, 0x190);
    API_CutsceneWait(0x28);
    API_MapActor_TravelToAnimWait(8, 0x244, 0x17e);
    API_Func_8092adc(8, 0x8000, 0x28);
    actor = (unsigned char *)ValeInteriorActor(0);
    actor += 0x5a;
    InteriorByte(actor, 1 | *actor);
    API_Func_8092adc(8, 0xc000, 8);
    API_Func_8092adc(8, 0, 8);
    API_Func_8092adc(8, 0x4000, 8);
    API_Func_8092adc(8, 0x8000, 10);
    API_MapActor_Jump(8, 4, 20);
    API_MapActor_Jump(8, 6, 0x28);
    API_MapActor_Jump(8, 4, 20);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(8, 0x23c, 0x180);
    API_ActorMessage_Wait(8, 0, 20);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_SetFlag(0x81e);
    API_SetFlag(0x203);
    API_CutsceneEnd();
}
