#include "api.h"
#include "actor.h"

void OvlFunc_890_20089f4(void)
{
    extern int __Func_8091c7c(int, int);
    extern struct Actor *CS890_Actor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_890_200a5fc(unsigned int, unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    int choice2;
    struct Actor *actor;
    int message;

    API_MessageID(0xff6);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0x1e8, 0xb0);
    API_MapActor_SetAnim(0, 0);
    actor = CS890_Actor(0);
    if (actor != 0)
        API_MapActor_SetPos(16, actor->pos.x, actor->pos.z);
    API_Func_8092adc(0, 0, 1);
    API_MapActor_SetSpeed(16, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(16, 0x1d8, 0xa8);
    API_Func_8092adc(16, 0, 0x3c);
    API_MapActor_Jump(16, 4, 0x28);
    OvlFunc_890_200a5fc(16, 6);
    API_Func_80933d4(0x26666, 0x4ccc);
    API_Func_80933f8(0x23f0000, -1, 0xb50000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x78);
    OvlFunc_890_200a5fc(0x1010, 0x50);
    API_Func_80933f8(0x1ec0000, -1, 0xa80000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_8092adc(16, 0x3000, 20);
    OvlFunc_890_200a5fc(0x4010, 6);
    API_Func_8092adc(16, 0, 0x3c);
    API_Func_80925cc(16, 2);
    API_Func_8092adc(16, 0x3000, 10);
    __ShowActorMessage_NoWait(0x4010, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) API_MessageID(0xffa);
    else API_MessageID(0xffb);
    API_Func_8092adc(0, 0xa000, 10);
    OvlFunc_890_200a5fc(0x4010, 10);
    message = 0xffc;
    API_MessageID(message);
    API_Func_8092adc(16, 0, 0x28);
    API_MapActor_Emote(16, 0x105, 0x28);
    API_MapActor_DoAnim(16, 4);
    API_Func_8092adc(16, 0x3000, 10);
    API_MapActor_SetAnim(16, 4);
    __ShowActorMessage_NoWait(0x4010, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        API_MessageID(message + 1);
        API_SetFlag(0x896);
    } else {
        API_MessageID(message + 2);
    }
    OvlFunc_890_200a5fc(0x4010, 4);
    API_SetCameraTarget(16, 1);
    API_MapActor_TravelToAnimWait(16, 0x1e6, 0x83);
    API_MapActor_TravelToAnimWait(16, 0x240, 0x78);
    API_Func_8092adc(16, 0xc000, 2);
    API_Func_80933d4(0x40000, 0x8000);
    API_SetFlag(0x80a);
}
