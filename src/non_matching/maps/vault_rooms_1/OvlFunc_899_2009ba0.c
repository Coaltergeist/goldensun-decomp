#include "api.h"

extern unsigned char CS899_Message1299[] __asm__(".Lcs899_message_1299");
__asm__(".equ .Lcs899_message_1299, 0x1299");

void OvlFunc_899_2009ba0(void)
{
    extern void OvlFunc_899_200aba0(void);
    extern unsigned char gScript_899__0200d650[];
    extern unsigned char gScript_899__0200d678[];
    extern unsigned char gScript_899__0200d768[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern unsigned char *CS899_GetActor(unsigned int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_899_200c5f4(unsigned int, unsigned int);
    extern void OvlFunc_899_200c60c(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c624(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_899_200c63c(unsigned int, unsigned int, unsigned int);
    extern int CS899_ShowMessage(int, int) __asm__("__ShowActorMessage_NoWait");
    unsigned char * saved24;
    unsigned char * saved25;
    int choice1;
    int message;
    unsigned char *sceneCounter;
    unsigned char *actor;

    actor = CS899_GetActor(24);
    saved24 = (unsigned char *)(actor);
    actor = CS899_GetActor(25);
    saved25 = (unsigned char *)(actor);
    API_CutsceneStart();
    API_StopTask(OvlFunc_899_200aba0);
    API_ClearFlag(0x300);
    saved24 += 0x64;
    if ((*(short *)saved24 <= 3) != 0) {
        API_MapActor_SetBehavior(24, (int)gScript_899__0200d678);
    } else {
        API_MapActor_SetBehavior(24, (int)gScript_899__0200d650);
    }
    if ((*(short *)(saved25 + 0x64) <= 2) != 0) {
        API_MapActor_SetBehavior(25, (int)gScript_899__0200d768);
    } else {
        API_MapActor_SetBehavior(25, (int)gScript_899__0200d650);
    }
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_TravelToAnimWait(0, 0xf8, 0x2d8);
    API_MapActor_SetPos(2, 0xf80000, 0x2d80000);
    API_MapActor_SetPos(1, 0xf80000, 0x2d80000);
    API_MapActor_TravelToAnim(2, 0x108, 0x2e8);
    API_MapActor_TravelToAnimWait(1, 0xe8, 0x2e8);
    API_MapActor_WaitMovement(2);
    API_Func_8092adc(0, 0x4000, 0);
    API_MapActor_Face(1, 0, 0);
    OvlFunc_899_200c60c(2, 0, 30);
    API_Func_80925cc(2, 1);
    message = (int)CS899_Message1299;
    API_MessageID(message);
    API_ActorMessage(2, 0);
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 20);
    API_MapActor_SetAnim(0, 3);
    OvlFunc_899_200c63c(1, 3, 20);
    OvlFunc_899_200c624(0, 1, 10);
    CS899_ShowMessage(1, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 != 0) {
        sceneCounter = *(unsigned char **)CS_iwram_3001ebc;
        sceneCounter += 0x1d8;
        ++*(unsigned short *)sceneCounter;
    }
    OvlFunc_899_200c5f4(1, 30);
    API_MessageID(message + 4);
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 0x32);
    API_MapActor_Emote(2, 0x100, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c624(0, 1, 0x32);
    API_MapActor_Face(0, 2, 0);
    OvlFunc_899_200c60c(1, 2, 30);
    OvlFunc_899_200c63c(2, 3, 10);
    OvlFunc_899_200c5f4(2, 20);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    OvlFunc_899_200c63c(2, 3, 20);
    OvlFunc_899_200c5f4(2, 30);
    API_MessageID(0x129f);
    API_ActorMessage(1, 0);
    API_Func_8092adc(0, 0x4000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    OvlFunc_899_200c63c(2, 3, 0x32);
    API_MapActor_TravelToAnim(2, 0xf8, 0x2d8);
    API_MapActor_TravelToAnimWait(1, 0xf8, 0x2d8);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetPos(24, 0x680000, 0x2b80000);
    API_MapActor_SetPos(25, 0x780000, 0x2b80000);
    API_Func_8092adc(24, 0, 0);
    API_Func_8092adc(25, 0x8000, 0);
    API_Func_8010704(14, 0x32, 3, 1, 14, 0x2c);
    API_CutsceneEnd();
}
