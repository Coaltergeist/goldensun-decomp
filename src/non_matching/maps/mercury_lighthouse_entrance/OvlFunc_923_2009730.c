#include "actor.h"
extern struct Actor *CS923M_Actor(int) __asm__("__MapActor_GetActor");
void OvlFunc_923_2009730(void)
{
    int remaining;
    API_CutsceneStart();
    CS923M_Actor(12)->scale.x = -0x10000;
    CS923M_Actor(13)->scale.x = -0x10000;
    CS923M_Actor(14)->scale.x = -0x10000;
    API_MapActor_SetPos(3, 0x880000, 0xb80000);
    API_MapActor_SetPos(0, 0x880000, 0x1280000);
    API_MapActor_SetPos(8, 0x880000, 0x980000);
    API_MapActor_SetSpeed(3, 0x18000, 0xc000);
    API_MapActor_SetSpeed(8, 0x18000, 0xc000);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x880000, -1, 0xb80000, 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_Func_80925cc(3, 1);
    CS923M_Actor(8)->__unk5A &= 0xfe;
    API_CutsceneWait(20);
    for (remaining = 1; remaining >= 0; --remaining) {
        API_MapActor_TravelToAnim(3, 0x98, 0xa8);
        API_CutsceneWait(10);
        API_MapActor_SetBehavior(8, (int)gScript_923__0200a8c8);
        API_MapActor_WaitMovement(3);
        API_Func_8092adc(3, 0xc000, 30);
        API_Func_80925cc(3, 1);
        CS923M_Actor(3)->__unk5A &= 0xfe;
        API_MapActor_TravelToAnim(3, 0x88, 0xb8);
        API_CutsceneWait(10);
        API_MapActor_SetBehavior(8, (int)gScript_923__0200a820);
        API_MapActor_WaitMovement(3);
        CS923M_Actor(3)->__unk5A |= 1;
        API_CutsceneWait(30);
        API_MapActor_TravelToAnim(3, 0x78, 0xa8);
        API_CutsceneWait(5);
        API_MapActor_SetBehavior(8, (int)gScript_884__0200a874);
        API_MapActor_WaitMovement(3);
        API_Func_8092adc(3, 0xc000, 30);
        API_Func_80925cc(3, 1);
        API_CutsceneWait(15);
        CS923M_Actor(3)->__unk5A &= 0xfe;
        API_MapActor_TravelToAnim(3, 0x88, 0xb8);
        API_CutsceneWait(15);
        API_MapActor_SetBehavior(8, (int)gScript_923__0200a820);
        API_MapActor_WaitMovement(3);
        API_Func_80925cc(3, 1);
        CS923M_Actor(3)->__unk5A |= 1;
    }
    API_CutsceneWait(20);
    API_MapActor_Emote(3, 0x102, 60);
    CS923M_Actor(3)->update = (actorfun_t *)OvlFunc_923_2008d58;
    API_Func_8093500(0, 1);
    API_CutsceneWait(30);
    API_MapActor_TravelToAnimWait(0, 0x88, 0x108);
    API_Func_8093530();
    API_Func_8010704(0, 0, 3, 3, 7, 9);
    API_CutsceneEnd();
}
