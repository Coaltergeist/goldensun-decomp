#include "api.h"

__asm__(".equ .LPrologueExitFirstMessage, 0xe9b\n.equ .LPrologueExitSecondMessage, 0xea1");
extern unsigned char PrologueExitFirstMessage[] __asm__(".LPrologueExitFirstMessage");
extern unsigned char PrologueExitSecondMessage[] __asm__(".LPrologueExitSecondMessage");

static inline void PrologueExitHalf(unsigned short *field, unsigned int value)
{
    *field = value;
}

static inline void PrologueExitAsk(int actor, int mode)
{
    extern int PrologueExitPrompt(int, int) __asm__("__ShowActorMessage_NoWait");
    PrologueExitPrompt(actor, mode);
}

void OvlFunc_882_200a8a4(void)
{
    extern unsigned char CS_882_578a[] __asm__(".Lm882_578a");
    extern unsigned char CS_882_57a0[] __asm__(".Lm882_57a0");
    extern unsigned char CS_882_57cc[] __asm__(".Lm882_57cc");
    extern unsigned char CS_882_57e2[] __asm__(".Lm882_57e2");
    extern unsigned char gScript_881__0200ca78[];
    extern unsigned char gScript_882__0200cab4[];
    extern unsigned char gScript_882__0200cb28[];
    extern unsigned char gScript_882__0200cb9c[];
    extern unsigned char gScript_882__0200cc0c[];
    extern unsigned char gScript_882__0200cc5c[];
    extern unsigned char gScript_882__0200cca8[];
    extern unsigned char gScript_882__0200cec8[];
    extern void __Func_8010560(void *, int, int);
    extern int __Func_8091c7c(int, int);
    extern int PrologueExitActor(int) __asm__("__MapActor_GetActor");
    extern void __MapActor_RunScript(int, void *);
    extern unsigned int __Random(void);
    extern int PrologueExitPrompt(int, int) __asm__("__ShowActorMessage_NoWait");
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    int message;
    unsigned int randomDraw1;
    unsigned int delay1;
    unsigned int randomDraw2;
    unsigned int delay2;
    unsigned int randomDraw3;
    unsigned int delay3;
    int firstChoice;
    int secondChoice;
    unsigned char *actor;
    unsigned char *leader;

    API_Func_8092adc(26, 0x3000, 0);
    API_Func_8092adc(24, 0xd000, 0);
    API_Func_8092adc(25, 0xb000, 0);
    API_Func_8092adc(9, 0x3000, 0);
    API_Func_8092adc(10, 0xd000, 20);
    API_MapActor_SetAnim(26, 3);
    API_MapActor_SetAnim(24, 3);
    API_MapActor_SetAnim(25, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(25, 3);
    API_CutsceneWait(20);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x860000, -1, 0x4ab0000, 1);
    API_MapActor_SetSpeed(26, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(9, 0x19999, 0xcccc);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200cab4);
    __MapActor_RunScript(9, gScript_881__0200ca78);
    API_PlaySound(0x9e);
    __Func_8010560(CS_882_57a0, 0x26, 0x48);
    API_CutsceneWait(10);
    API_MapActor_TravelToAnimWait(9, 0x95, 0x497);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_TravelToAnimWait(25, 0xfa, 0x4be);
    API_MapActor_PlayPendingSound();
    API_Func_8092adc(10, 0x3000, 0);
    API_Func_8092adc(24, 0x3000, 0);
    API_Func_8092adc(25, 0x3000, 0);
    API_MapActor_SetAnim(10, 5);
    API_MapActor_SetAnim(24, 6);
    API_MapActor_SetAnim(25, 6);
    actor = (unsigned char *)PrologueExitActor(10);
    randomDraw1 = __Random();
    delay1 = _umodsi3_RAM(randomDraw1, 0x5a);
    actor += 0x64;
    PrologueExitHalf((unsigned short *)actor, (delay1 + 0x3c));
    actor = (unsigned char *)PrologueExitActor(24);
    randomDraw2 = __Random();
    delay2 = _umodsi3_RAM(randomDraw2, 0x5a);
    actor += 0x64;
    PrologueExitHalf((unsigned short *)actor, (delay2 + 0x3c));
    actor = (unsigned char *)PrologueExitActor(25);
    randomDraw3 = __Random();
    delay3 = _umodsi3_RAM(randomDraw3, 0x5a);
    actor += 0x64;
    PrologueExitHalf((unsigned short *)actor, (delay3 + 0x3c));
    API_MapActor_SetBehavior(10, (int)gScript_882__0200cec8);
    API_MapActor_SetBehavior(24, (int)gScript_882__0200cec8);
    API_MapActor_SetBehavior(25, (int)gScript_882__0200cec8);
    API_MapActor_WaitScript(26);
    API_CutsceneWait(10);
    API_PlaySound(0x9f);
    __Func_8010560(CS_882_57e2, 0x26, 0x48);
    API_CutsceneWait(30);
    API_MapActor_PlayPendingSound();
    API_Func_80933f8(0x700000, -1, 0x4c90000, 1);
    API_PlaySound(0x9e);
    __Func_8010560(CS_882_578a, 0x23, 0x49);
    API_CutsceneWait(20);
    API_MapActor_PlayPendingSound();
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cb28);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200cb9c);
    API_CutsceneWait(0x28);
    API_PlaySound(0x9f);
    __Func_8010560(CS_882_57cc, 0x23, 0x49);
    API_MapActor_WaitScript(26);
    API_MapActor_PlayPendingSound();
    API_CutsceneWait(0x28);
    message = (int)PrologueExitFirstMessage;
    API_MessageID(message);
    API_ActorMessage_Wait(9, 0, 20);
    API_MapActor_DoAnim(26, 3);
    API_ActorMessage_Wait(0x201a, 0, 0x28);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(26, 3);
    API_CutsceneWait(30);
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cc0c);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200cc5c);
    API_CutsceneWait(0x28);
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0x690000, -1, 0x43e0000, 1);
    API_MapActor_WaitScript(9);
    API_Func_8092adc(9, 0, 0);
    API_MapActor_Emote(9, 0x100, 0x28);
    API_ActorMessage_Wait(9, 0, 10);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(22, 0x8000, 10);
    API_MapActor_TravelToAnimWait(9, 0x69, 0x43e);
    API_Func_80925cc(9, 2);
    PrologueExitAsk(0x8009, 0);
    API_Func_8092adc(22, 0, 0);
    firstChoice = __Func_8091c7c(0, 0);
    if (firstChoice == 0) {
        API_MapActor_DoAnim(9, 3);
        API_MessageID((message + 4));
    } else {
        API_Func_80925cc(9, 2);
        API_MessageID((message + 5));
    }
    API_ActorMessage(0x8009, 0);
    API_Func_8092adc(22, 0x8000, 0x28);
    API_MapActor_Emote(9, 0x100, 30);
    message = (int)PrologueExitSecondMessage;
    API_MessageID(message);
    PrologueExitAsk(0x8009, 0);
    secondChoice = __Func_8091c7c(0, 0);
    if (secondChoice == 0) {
        API_MapActor_DoAnim(9, 3);
        API_MessageID((message + 1));
        API_ActorMessage_Wait(0x8009, 0, 30);
        API_Func_8092adc(22, 0x8000, 20);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(22, 3);
        API_MapActor_DoAnim(9, 3);
        API_CutsceneWait(0x28);
    } else {
        API_MapActor_Emote(9, 0x105, 0x5a);
        API_MapActor_Emote(9, 0x103, 0x28);
        API_MapActor_SetAnim(9, 4);
        API_MessageID((message + 2));
        API_ActorMessage(0x8009, 0);
    }
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cca8);
    API_CutsceneWait(0x5a);
    API_MapActor_TurnToFaceActor(0, 22, 0);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(22, 2);
    leader = (unsigned char *)PrologueExitActor(0);
    if (leader != 0) {
        API_MapActor_TravelTo(22, *(short *)(leader + 0xa), *(short *)(leader + 0x12));
    }
    API_MapActor_WaitMovement(22);
    API_MapActor_SetPos(22, 0, 0);
}
