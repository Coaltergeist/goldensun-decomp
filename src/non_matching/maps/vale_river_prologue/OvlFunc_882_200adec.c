#include "api.h"
#include "sprite.h"
#include "actor.h"

void OvlFunc_882_200adec(void)
{
    extern unsigned char gScript_882__0200cd1c[];
    extern int PrologueMeetingActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_882_200b1ac(void);
    struct Sprite *sprite;
    unsigned char * leaderFlags;
    int flagValue1;
    int flagValue2;
    struct Actor *actor;

    flagValue1 = API_GetFlag(0x840);
    if (flagValue1 == 0) return;
    flagValue2 = API_GetFlag(0x841);
    if (flagValue2 != 0) return;
    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(22, 0x10000, 0x8000);
    API_MapActor_SetSpeed(26, 0x10000, 0x8000);
    API_MapActor_SetSpeed(8, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0xd9, 0x557);
    actor = (struct Actor *)PrologueMeetingActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(22, actor->pos.x, actor->pos.z);
    }
    API_MapActor_TravelToAnimWait(22, 0xeb, 0x557);
    API_Func_8092adc(22, 0xb000, 0);
    actor = (struct Actor *)PrologueMeetingActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(26, actor->pos.x, actor->pos.z);
    }
    API_MapActor_TravelToAnimWait(26, 0xc7, 0x557);
    API_Func_8092adc(26, 0xd000, 0);
    API_MapActor_SetPos(25, 0xf70000, 0x4ba0000);
    API_Func_8092adc(25, 0x6000, 0);
    actor = (struct Actor *)PrologueMeetingActor(8);
    sprite = actor->sprite;
    actor->flags = (0xfe & actor->flags);
    sprite->oam.priority = 1;
    actor = (struct Actor *)PrologueMeetingActor(0);
    leaderFlags = &actor->flags;
    sprite = actor->sprite;
    *(unsigned char *)leaderFlags = (0xfe & *(unsigned char *)leaderFlags);
    sprite->oam.priority = 2;
    actor = (struct Actor *)PrologueMeetingActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(8, actor->pos.x, actor->pos.z);
    }
    API_MapActor_TravelToAnimWait(8, 0xdd, 0x569);
    API_Func_8092adc(8, 0xb000, 0x3c);
    API_Func_80925cc(26, 2);
    API_MessageID(0xec6);
    API_ActorMessage_Wait(26, 0, 0x28);
    API_MapActor_SetPos(9, 0x650000, 0x4ad0000);
    API_Func_8092adc(9, 0x2000, 0);
    API_ActorMessage_Wait(0x1009, 0, 10);
    API_Func_8092adc(26, 0xa000, 0);
    API_Func_80933d4(0x13333, 0x2666);
    API_Func_80933f8(0x650000, -1, 0x4ad0000, 1);
    API_MapActor_SetSpeed(9, 0x16666, 0xb333);
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cd1c);
    API_CutsceneWait(0x3c);
    API_Func_80933d4(0x9999, 0x1333);
    API_Func_80933f8(0xbb0000, -1, 0x5300000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    API_Func_80925cc(26, 2);
    API_ActorMessage_Wait(26, 0, 20);
    API_Func_80925cc(9, 2);
    API_ActorMessage_Wait(0x4009, 0, 20);
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0xdd0000, -1, 0x5690000, 1);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(22, 8, 0);
    API_Func_8092adc(26, 0x3000, 0x50);
    API_Func_80933f8(0xb60000, -1, 0x5500000, 1);
    API_MapActor_TravelToAnimWait(8, 0xb6, 0x568);
    API_MapActor_Face(8, 9, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(10);
    API_MapActor_Face(0, 9, 0);
    API_MapActor_Face(22, 9, 0);
    API_MapActor_Face(26, 9, 0);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage(9, 0);
    API_Func_80925cc(26, 2);
    API_ActorMessage_Wait(26, 0, 10);
    API_Func_8092adc(9, 0xe000, 0x28);
    API_Func_8092adc(9, 0x3000, 20);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage(9, 0);
    API_MapActor_TurnToFaceActor(26, 8, 0);
    API_MapActor_TurnToFaceActor(22, 0, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Face(0, 9, 0);
    API_MapActor_Face(22, 9, 0);
    API_MapActor_Face(26, 9, 0);
    API_MapActor_Face(8, 9, 0);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(9, 0, 10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(26, 3);
    API_MapActor_SetAnim(22, 3);
    API_MapActor_DoAnim(8, 3);
    *(unsigned char *)leaderFlags = (*(unsigned char *)leaderFlags | 1);
    actor = (struct Actor *)PrologueMeetingActor(8);
    actor->flags = (actor->flags | 1);
    OvlFunc_882_200b1ac();
    API_SetFlag(0x841);
    API_CutsceneEnd();
}
