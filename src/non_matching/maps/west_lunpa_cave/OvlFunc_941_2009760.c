#include "api.h"

extern unsigned char CS941_Message2558[] __asm__(".Lcs941_message_2558");
__asm__(".equ .Lcs941_message_2558, 0x2558");

void OvlFunc_941_2009760(void)
{
    extern unsigned char *CS941_GetActor(unsigned int) __asm__("__MapActor_GetActor");
    unsigned char *actor;
    int message;

    API_Func_8092adc(1, 0x5000, 0);
    message = (int)CS941_Message2558;
    API_MessageID(message);
    API_ActorMessage(1, 0);
    API_MapActor_DoAnim(2, 3);
    API_MessageID(message + 1);
    API_ActorMessage(2, 0);
    API_MapActor_Face(13, 2, 0);
    API_MapActor_DoAnim(13, 3);
    API_CutsceneWait(20);
    API_MessageID(message + 2);
    API_ActorMessage(13, 0);
    API_Func_8092adc(12, 0x3000, 0);
    API_MapActor_DoAnim(12, 3);
    message += 3;
    API_CutsceneWait(30);
    API_MessageID(message);
    API_ActorMessage(12, 0);
    API_MapActor_DoAnim(13, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_SetAnim(3, 3);
    API_CutsceneWait(0x50);
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
    API_MapActor_TravelToAnim(12, 0x98, 0x210);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnim(13, 0xa0, 0x210);
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
    API_CutsceneWait(0xc8);
    API_MapActor_SetPos(13, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetAnim(1, 2);
    actor = CS941_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = CS941_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetAnim(3, 2);
    actor = CS941_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_CutsceneWait(30);
    API_MapActor_TravelBy(0, -16, 0);
    API_MapActor_WaitMovement(0);
    API_Func_8093500(0, 1);
    API_MapActor_TravelToAnim(0, 0xa8, 0x280);
    API_CutsceneWait(0x3c);
    API_MapTransitionOut();
    API_Func_8091e9c(3);
}
