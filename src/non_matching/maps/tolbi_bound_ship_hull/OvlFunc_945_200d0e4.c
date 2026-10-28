#include "api.h"

static inline void CS945H_ShowMessage(int message, int mode, int actorId)
{
    extern void __Func_8019aa0(int, int, int);
    __Func_8019aa0(message, mode, actorId);
}
void OvlFunc_945_200d0e4(void)
{
    extern unsigned char gScript_945__0200e7c8[];
    extern void __Func_8019aa0(int, int, int);
    extern void __Func_8093304(int);
    extern struct Actor *CS945H_Actor(int) __asm__("__MapActor_GetActor");
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_945_200c86c(int);
    extern void OvlFunc_945_200c880(int, unsigned short);
    extern void OvlFunc_945_200c8ac(unsigned int, unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_945_200c8e8(int, int, int);
    struct Actor *actor;
    int message;

    OvlFunc_945_200c8ac(0x1b80000, -1, 0xb00000, 0x1000001);
    API_MapActor_SetPos(0, 0x1b80000, 0x860000);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(0, 0x19999, 0xcccc);
    API_MapActor_SetAnim(0, 5);
    API_MapActor_TravelToWait(0, 0x198, 0x86);
    API_MapActor_TravelToWait(0, 0x198, 0x98);
    API_MapActor_TravelToWait(0, 0x1b0, 0xa6);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(0, 0x4000, 0);
    actor = CS945H_Actor(0);
    if (actor != 0)
        API_MapActor_SetPos(2, actor->pos.x, actor->pos.z);
    actor = CS945H_Actor(0);
    if (actor != 0)
        API_MapActor_SetPos(1, actor->pos.x, actor->pos.z);
    actor = CS945H_Actor(1);
    if (actor != 0)
        API_MapActor_SetPos(3, actor->pos.x, actor->pos.z);
    API_WaitFrames(1);
    API_MapActor_SetSpeed(2, 0x19999, 0xcccc);
    API_MapActor_TravelToAnim(2, 0x1a8, 0x98);
    API_MapActor_SetSpeed(1, 0x19999, 0xcccc);
    API_MapActor_TravelToAnim(1, 0x1c0, 0xa8);
    API_MapActor_SetSpeed(3, 0x20000, 0x10000);
    API_MapActor_TravelToAnimWait(3, 0x1ca, 0x98);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(2, 1);
    API_Func_8092adc(2, 0x4000, 0);
    API_Func_8092adc(1, 0x4000, 0);
    API_Func_8092adc(3, 0x4000, 0x28);
    __Func_8093304(10);
    message = 0x1e46;
    CS945H_ShowMessage(message, 1, 10);
    API_CutsceneWait(10);
    OvlFunc_945_200c8e8(0, 0, 0x28);
    OvlFunc_945_200c8e8(1, 0x4000, 20);
    API_Func_80933d4(0x39999, 0x7333);
    OvlFunc_945_200c8ac(0x1b80000, -1, 0x1400000, 0x10000014);
    API_Func_80925cc(8, 2);
    OvlFunc_945_200c880(8, 0xd000);
    ++message;
    API_MessageID(message);
    OvlFunc_945_200c86c(8);
    API_Func_8092adc(8, 0, 20);
    OvlFunc_945_200c8ac(0x1b80000, -1, 0x860000, 0x10000000);
    API_MapActor_SetBehavior(1, (int)gScript_945__0200e7c8);
    API_MapActor_SetBehavior(2, (int)gScript_945__0200e7c8);
    __MapActor_RunScript(3, gScript_945__0200e7c8);
    API_CutsceneWait(0x28);
    API_SetFlag(0x301);
    OvlFunc_945_200c8e8(23, 0, 0);
    API_ClearFlag(0x12f);
}
