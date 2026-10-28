#include "api.h"

static inline void BabiHealPrompt(int actor, int style)
{
    extern int __ShowActorMessage_NoWait(int, int);
    __ShowActorMessage_NoWait(actor, style);
}

static inline int BabiHealRoundFacing(unsigned int facing)
{
    return (facing + 0x2000) & 0xffffc000;
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
    savedFacing = BabiHealRoundFacing(*(unsigned short *)(actor + 6));
    API_CutsceneStart();
    __Func_808e118();
    API_MessageID(0x1ffb);
    BabiHealPrompt(-1, 0);
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
