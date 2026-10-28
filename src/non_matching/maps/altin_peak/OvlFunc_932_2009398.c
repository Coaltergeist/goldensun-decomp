#include "api.h"

extern unsigned char CS932_DialogueStart[] __asm__(".Lcs932_dialogue_1953");
__asm__(".equ .Lcs932_dialogue_1953, 0x1953");
static inline void CS932_Byte(unsigned char *p, int value) { *p = value; }

void OvlFunc_932_2009398(void)
{
    extern unsigned char *CS932_Actor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_932_2008ec0(int);
    int message;
    int flagValue1;
    int flagValue2;
    unsigned char *actor;

    API_CutsceneStart();
    message = (int)CS932_DialogueStart;
    API_Func_801776c(message, 1);
    flagValue1 = API_GetFlag(0x908);
    if (flagValue1 == 0) {
        flagValue2 = API_GetFlag(0xf14);
        if (flagValue2 == 0) {
            API_SetFlag(0x205);
            API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
            API_MapActor_TravelToAnimWait(0, 0x316, 0x8c);
            API_MapActor_TravelToAnimWait(0, 0x30c, 0x8c);
            API_Func_8092adc(0, 0xc000, 0);
            actor = CS932_Actor(0);
            if (actor != 0) {
                API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
            }
            API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
            API_MapActor_TravelToAnimWait(1, 0x320, 0x8c);
            API_Func_8092adc(1, 0xc000, 20);
            API_MessageID(message + 1);
            API_MapActor_SetAnim(1, 4);
            API_CutsceneWait(20);
            API_ActorMessage_Wait(1, 0, 10);
            API_MapActor_Jump(1, 6, 0);
            API_MapActor_SetSpeed(1, 0x19999, 0xcccc);
            actor = CS932_Actor(1);
            actor += 0x5a;
            *actor = (0xfe & *actor);
            API_MapActor_TravelToAnimWait(1, 0x318, 0x6e);
            API_CutsceneWait(1);
            actor = CS932_Actor(1);
            actor += 0x5a;
            *actor = (*actor | 1);
            API_PlaySound(0xa1);
            API_Func_8012330(0x20000, 0x10000, 0x10000);
            actor = CS932_Actor(1);
            actor += 0x5a;
            *actor = (0xfe & *actor);
            API_MapActor_TravelToAnimWait(1, 0x318, 0x78);
            API_CutsceneWait(1);
            actor = CS932_Actor(1);
            actor += 0x5a;
            CS932_Byte(actor, 1 | *actor);
            API_Func_8012330(-1, -1, 0xe666);
            API_CutsceneWait(0x50);
            API_PlaySound(0x8d);
            API_Func_8012330(0x10000, 0x10000, 0x10000);
            API_CutsceneWait(0x28);
            API_MapActor_Emote(0, 0x101, 0);
            API_MapActor_Emote(1, 0x101, 0x3c);
            API_Func_8092adc(0, 0x8000, 0);
            API_Func_8092adc(1, 0, 20);
            API_Func_8092adc(0, 0, 0);
            API_Func_8092adc(1, 0x8000, 0x28);
            API_Func_8092adc(0, 0x8000, 0);
            API_Func_8092adc(1, 0, 0x28);
            API_Func_8092adc(0, 0xc000, 0);
            API_Func_8092adc(1, 0xc000, 0x28);
            API_MapActor_Emote(1, 0x102, 0x3c);
            API_Func_8092adc(1, 0x4000, 20);
            API_Func_809259c(1, 2);
            API_ActorMessage_Wait(1, 0, 10);
            API_MapActor_SetSpeed(1, 0x28000, 0x14000);
            API_MapActor_SetAnim(1, 5);
            API_MapActor_TravelToWait(1, 0x31c, 0x8a);
            API_Func_8092adc(0, 0, 0);
            API_MapActor_TravelToWait(1, 0x324, 0x8c);
            API_Func_8092adc(0, 0x4000, 0);
            API_MapActor_TravelToWait(1, 0x324, 0xa6);
            API_MapActor_TravelToWait(1, 0x2fc, 0xa6);
            API_MapActor_TravelToWait(1, 0x2fc, 0xc6);
            API_MapActor_TravelToWait(1, 0x312, 0xc6);
            API_MapActor_Emote(0, 0x102, 0);
            API_MapActor_TravelToWait(1, 0x312, 0xf6);
            API_MapActor_SetAnim(1, 1);
            API_MapActor_SetPos(1, 0, 0);
            API_CutsceneWait(0x28);
            OvlFunc_932_2008ec0(10);
        }
    }
    API_CutsceneEnd();
}
