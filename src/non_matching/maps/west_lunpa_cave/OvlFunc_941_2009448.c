#include "api.h"

extern unsigned char CS941_MessageBase[] __asm__(".Lcs941_message254e");
__asm__(".equ .Lcs941_message254e, 0x254e");

void OvlFunc_941_2009448(void)
{
    extern int CS941_Actor(int) __asm__("__MapActor_GetActor");
    unsigned char *actor;

    API_MapActor_Emote(1, 0x105, 0x3c);
    API_MapActor_Face(1, 0, 0);
    API_MessageID((unsigned int)CS941_MessageBase);
    API_ActorMessage(1, 0);
    API_Func_80925cc(3, 1);
    API_MessageID((unsigned int)CS941_MessageBase + 1);
    API_ActorMessage(3, 0);
    API_MapActor_Face(2, 13, 0);
    API_CutsceneWait(0x3c);
    API_MessageID((unsigned int)CS941_MessageBase + 2);
    API_ActorMessage(2, 0);
    API_MapActor_Face(13, 2, 0);
    API_MapActor_Emote(13, 0x105, 0x46);
    API_MessageID((unsigned int)CS941_MessageBase + 3);
    API_ActorMessage(13, 0);
    API_MapActor_DoAnim(12, 4);
    API_MessageID((unsigned int)CS941_MessageBase + 4);
    API_ActorMessage(12, 0);
    API_Func_8092adc(12, 0x3000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(12, 3);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_SetAnim(3, 3);
    API_CutsceneWait(0x3c);
    API_MapActor_TravelBy(13, -16, 0);
    API_MapActor_WaitMovement(13);
    API_MapActor_SetAnim(13, 1);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(13, 3);
    API_Func_8092adc(13, 0x5000, 0);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_TravelToAnim(12, 0x9c, 0x210);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnim(13, 0xa4, 0x210);
    API_MapActor_WaitMovement(12);
    API_MapActor_TravelToAnim(12, 0xa8, 0x280);
    API_MapActor_WaitMovement(13);
    API_MapActor_TravelToAnim(13, 0xa8, 0x280);
    API_Func_8092adc(0, 0x5000, 0);
    API_Func_8092adc(2, 0x5000, 0);
    API_Func_8092adc(3, 0x5000, 0);
    API_Func_8092adc(1, 0x5000, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(2, 0x4000, 0);
    API_Func_8092adc(3, 0x4000, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_SetPos(13, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_CutsceneWait(0x6e);
    API_MessageID((unsigned int)CS941_MessageBase + 5);
    API_ActorMessage(1, 0);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_MessageID((unsigned int)CS941_MessageBase + 6);
    API_ActorMessage(3, 0);
    API_MapActor_DoAnim(2, 3);
    API_MessageID((unsigned int)CS941_MessageBase + 7);
    API_ActorMessage(2, 0);
    API_CutsceneWait(0x8c);
    API_MapActor_Face(1, 0, 0);
    API_MessageID((unsigned int)CS941_MessageBase + 8);
    API_ActorMessage(1, 0);
    API_MapActor_SetAnim(1, 2);
    actor = (unsigned char *)CS941_Actor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = (unsigned char *)CS941_Actor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetAnim(3, 2);
    actor = (unsigned char *)CS941_Actor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_CutsceneWait(30);
    API_Func_8093500(0, 1);
    API_Func_8093530();
    API_SetCameraTarget(0, 0);
    API_SetFlag(0x94f);
}
