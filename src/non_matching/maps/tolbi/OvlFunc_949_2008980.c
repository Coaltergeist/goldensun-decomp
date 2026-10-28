#include "api.h"

extern unsigned char CS949_MessageBase[] __asm__(".Lcs949_message1fb6");
__asm__(".equ .Lcs949_message1fb6, 0x1fb6");

void OvlFunc_949_2008980(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void * __Func_8017658(unsigned int, int, int, unsigned int);
    extern void *CS949_Portrait(int, int, int, int) __asm__("__Func_8019da8");
    extern int __Func_8091c7c(int, int);
    extern void __Func_8092950(unsigned int, unsigned int);
    extern int CS949_Actor(int) __asm__("__MapActor_GetActor");
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    unsigned char *actor;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_MapActor_SetSpeed(29, 0x10000, 0x8000);
    API_MapActor_SetSpeed(30, 0x10000, 0x8000);
    API_MessageID((unsigned int)CS949_MessageBase);
    API_MapActor_SetPos(29, 0x480000, 0xd00000);
    API_MapActor_SetPos(30, 0x380000, 0xd00000);
    __Func_8092950(0x20, 15);
    actor = (unsigned char *)CS949_Actor(0x20);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetPos(0x20, 0x5f0000, 0x280000);
    API_MapActor_TravelToAnim(29, 0x48, 0xf8);
    API_MapActor_TravelToAnim(30, 0x38, 0xf8);
    API_MapActor_TravelToAnimWait(0, 0x40, 0x108);
    API_Func_8092adc(0, 0xc000, 0);
    API_MapActor_WaitMovement(29);
    API_MapActor_SetAnim(29, 1);
    API_MapActor_SetAnim(30, 1);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_Face(29, 0, 0);
    API_MapActor_Face(30, 0, 0);
    API_CutsceneWait(20);
    API_MapActor_Surprise(29, 0x102);
    API_MapActor_Surprise(30, 0x102);
    API_Func_809259c(29, 2);
    API_Func_80925cc(30, 2);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(29, 0);
    API_CutsceneWait(25);
    CS949_Portrait(0x34, 0, 12, 7);
    __Func_8017658((unsigned int)CS949_MessageBase + 3, 11, 12, 2);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1f4) = 0x20;
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_CutsceneWait(20);
        API_Func_80925cc(30, 2);
        API_CutsceneWait(30);
        API_Func_8092adc(30, 0, 0);
        API_CutsceneWait(30);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(29, 3);
        API_CutsceneWait(20);
        API_Func_8092adc(29, 0, 0);
        API_CutsceneWait(30);
        API_ActorMessage(29, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(29, 0x4000, 0);
        API_Func_8092adc(30, 0x4000, 0);
        API_CutsceneWait(30);
        API_MapActor_SetAnim(29, 3);
        API_MapActor_DoAnim(30, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(29, 0x1cccc, 0xe666);
        API_MapActor_SetSpeed(30, 0x1cccc, 0xe666);
        API_MapActor_TravelToAnim(29, 0xe8, 0xf8);
        API_CutsceneWait(2);
        API_MapActor_TravelToAnim(30, 0xe8, 0xf8);
        API_MapActor_WaitMovement(29);
        API_MapActor_TravelToAnim(29, 0xf8, 0xf8);
        API_MapActor_TravelToAnimWait(30, 0xf8, 0xf8);
    } else {
        API_CutsceneWait(20);
        API_Func_80925cc(30, 2);
        API_CutsceneWait(30);
        API_Func_8092adc(30, 0, 0);
        API_CutsceneWait(30);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(29, 4);
        API_CutsceneWait(20);
        API_Func_8092adc(29, 0, 0);
        API_CutsceneWait(30);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage(29, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(29, 0x4000, 0);
        API_Func_8092adc(30, 0x4000, 0);
        API_CutsceneWait(30);
        API_MapActor_SetAnim(29, 3);
        API_MapActor_DoAnim(30, 3);
        API_CutsceneWait(20);
        API_MapActor_SetSpeed(29, 0x19999, 0xcccc);
        API_MapActor_SetSpeed(30, 0x19999, 0xcccc);
        API_MapActor_TravelToAnim(29, 0x48, 0xb8);
        API_MapActor_TravelToAnimWait(30, 0x38, 0xb8);
    }
    API_MapActor_SetPos(29, 0, 0);
    API_MapActor_SetPos(30, 0, 0);
    API_MapActor_SetPos(0x20, 0, 0);
    API_SetFlag(0x8c0);
    API_CutsceneEnd();
}
