#include "api.h"

__asm__(".equ .LLunpaFirstMessage, 0x250d\n.equ .LLunpaSecondMessage, 0x2512");
extern unsigned char LunpaFirstMessage[] __asm__(".LLunpaFirstMessage");
extern unsigned char LunpaSecondMessage[] __asm__(".LLunpaSecondMessage");

void OvlFunc_941_20084a8(void)
{
    extern int __Func_8091c7c(int, int);
    extern int LunpaCaveActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_941_2008828(void);
    extern int __ShowActorMessage_NoWait(int, int);
    int flagValue1;
    int choice2;
    unsigned char *actor;

    flagValue1 = API_GetFlag(0x941);
    if (flagValue1 == 0) return;
    API_SetFlag(0x94d);
    API_CutsceneStart();
    API_MapActor_SetPos(12, 0x900000, 0x1900000);
    API_MapActor_SetSpeed(12, 0x18000, 0xc000);
    API_MapActor_TravelToAnim(12, 0xb8, 0x190);
    API_MapActor_WaitMovement(12);
    API_MapActor_SetAnim(12, 1);
    API_Func_8092adc(12, 0x3000, 0);
    API_Func_80925cc(0, 1);
    API_CutsceneWait(30);
    API_Func_80933d4(0x8000, 0x1000);
    API_Func_80933f8(0xc00000, -1, 0x1b00000, 1);
    actor = (unsigned char *)LunpaCaveActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(13, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetSpeed(13, 0x14ccc, 0xa666);
    API_MapActor_TravelToAnim(13, 0xa8, 0x1d0);
    API_MapActor_WaitMovement(13);
    API_Func_8092adc(13, 0xc000, 0);
    actor = (unsigned char *)LunpaCaveActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetSpeed(2, 0x14ccc, 0xa666);
    API_MapActor_TravelToAnim(2, 0x98, 0x1e8);
    API_MapActor_WaitMovement(2);
    API_Func_8092adc(2, 0xc000, 0);
    actor = (unsigned char *)LunpaCaveActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(3, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetSpeed(3, 0x14ccc, 0xa666);
    API_MapActor_TravelToAnim(3, 0xa8, 0x1e8);
    API_MapActor_WaitMovement(3);
    API_Func_8092adc(3, 0xc000, 0);
    actor = (unsigned char *)LunpaCaveActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetSpeed(1, 0x14ccc, 0xa666);
    API_MapActor_TravelToAnim(1, 0xb8, 0x1e8);
    API_MapActor_WaitMovement(1);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(30);
    API_Func_80925cc(1, 1);
    API_MessageID((int)LunpaFirstMessage);
    API_ActorMessage(1, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(10);
    API_MessageID((int)LunpaFirstMessage + 1);
    API_ActorMessage(3, 0);
    API_MapActor_Emote(2, 0x102, 0x46);
    API_MapActor_Face(2, 0, 0);
    API_MapActor_Face(0, 2, 0);
    API_MessageID((int)LunpaFirstMessage + 2);
    __ShowActorMessage_NoWait(2, 0);
    API_MapActor_Face(3, 0, 0);
    API_MapActor_Face(1, 0, 0);
    API_CutsceneWait(30);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        API_MessageID((int)LunpaFirstMessage + 3);
        API_ActorMessage(1, 0);
    } else {
        API_MessageID((int)LunpaFirstMessage + 4);
        API_ActorMessage(1, 0);
    }
    API_MapActor_Emote(13, 0x100, 0x46);
    API_MessageID((int)LunpaSecondMessage);
    API_ActorMessage(13, 0);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(2, 2);
    API_Func_809259c(3, 2);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_MapActor_SetAnim(13, 2);
    API_Func_80922c4(13, 0, -16);
    API_MapActor_WaitMovement(13);
    API_MapActor_SetAnim(13, 1);
    API_MessageID((int)LunpaSecondMessage + 1);
    API_ActorMessage(13, 0);
    API_MapActor_Emote(12, 0x100, 0x41);
    API_MessageID((int)LunpaSecondMessage + 2);
    API_ActorMessage(12, 0);
    API_MapActor_DoAnim(13, 3);
    API_CutsceneWait(0x50);
    API_MapActor_SetSpeed(12, 0x6666, 0x3333);
    API_Func_80922c4(12, -13, 0);
    API_MapActor_WaitMovement(12);
    API_Func_8092adc(12, 0x4000, 0);
    API_MapActor_Emote(12, 0x102, 0x46);
    API_MessageID((int)LunpaSecondMessage + 3);
    API_ActorMessage(12, 0);
    API_MapActor_TravelToAnim(12, 0xa8, 0x1b0);
    API_CutsceneWait(0x28);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneWait(20);
    API_CutsceneEnd();
    OvlFunc_941_2008828();
}
