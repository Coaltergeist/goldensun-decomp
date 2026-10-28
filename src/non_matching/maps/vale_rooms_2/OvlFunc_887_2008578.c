#include "api.h"

__asm__(".equ .LValeRoomHidden, 0\n.equ .LValeRoomMessage, 0xe52");
extern unsigned char ValeRoomMessage[] __asm__(".LValeRoomMessage");
extern unsigned char ValeRoomHidden[] __asm__(".LValeRoomHidden");

static inline void ValeRoomByte(unsigned char *field, int value)
{
    *field = value;
}

static inline void ValeRoomHalf(unsigned short *field, int value)
{
    *field = value;
}

static inline void ValeRoomPrompt(int actor, int mode)
{
    extern int __ShowActorMessage_NoWait(int, int);
    __ShowActorMessage_NoWait(actor, mode);
}

void OvlFunc_887_2008578(void)
{
    extern unsigned char ActorCmd_ARRAY_887__02009ab4[];
    extern unsigned char gScript_887__02009b04[];
    extern unsigned char gScript_887__02009b34[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_AddSpriteLayer(unsigned char *, int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_800c5b4(void);
    extern void __Func_800c5fc(void);
    extern void __Func_800fe9c(void);
    extern void __Func_8019aa0(int, int, int);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8092950(unsigned int, unsigned int);
    extern void __Func_8093304(int);
    extern void __Func_8095240(void);
    extern void __Func_8095268(void);
    extern int ValeRoomActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_887_20097e4(void);
    extern int __ShowActorMessage_NoWait(int, int);
    extern void __StartThunder(void);
    unsigned char * levelData;
    unsigned char * cameraActor;
    unsigned char * sprite;
    int zero;
    int message;
    int hidden;
    int choice1;
    unsigned char *actor;
    unsigned char *map;
    unsigned char *initialMap;
    unsigned int mapSlot;

    mapSlot = (unsigned int)CS_iwram_3001ebc;
    initialMap = *(unsigned char **)mapSlot;
    levelData = *(unsigned char **)(mapSlot - 0x4c);
    cameraActor = *(unsigned char **)(initialMap + 0x1e0);
    actor = (unsigned char *)ValeRoomActor(17);
    sprite = (unsigned char *)(*(int *)(actor + 0x50));
    API_CutsceneStart();
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(13, 0, 0);
    API_MapActor_SetPos(14, 0, 0);
    API_MapActor_SetPos(15, 0, 0);
    API_MapActor_SetPos(16, 0, 0);
    actor = (unsigned char *)ValeRoomActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetAnim(0, 18);
    zero = (int)(0);
    ValeRoomHalf((unsigned short *)(sprite + 0x1e), 0x555);
    actor = (unsigned char *)ValeRoomActor(17);
    hidden = (int)ValeRoomHidden;
    actor += 0x55;
    ValeRoomByte(actor, hidden);
    actor = (unsigned char *)ValeRoomActor(17);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetPos(17, 0x2400000, 0x28a0000);
    API_Func_80118a8(7);
    API_MapActor_SetPos(8, 0x2160000, 0x2b00000);
    __Func_800c5b4();
    __Func_8093304(8);
    message = (int)ValeRoomMessage;
    __Func_8019aa0(message, 1, 0);
    API_CutsceneWait(0x28);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    __Func_8093304(8);
    __Func_8019aa0((message + 1), 1, 0);
    __Func_800c5fc();
    API_CutsceneWait(0x28);
    *(int *)(levelData + 0xec) = 0x1480000;
    *(int *)(levelData + 0xf0) = 0x2580000;
    *(int *)(levelData + 0xf4) = 0x2700000;
    *(int *)(levelData + 0xf8) = 0x3300000;
    *(int *)(cameraActor + 0x8) = 0x2340000;
    *(int *)(cameraActor + 0xc) = zero;
    *(int *)(cameraActor + 0x10) = 0x2b30000;
    __Func_800fe9c();
    API_WaitFrames(1);
    map = *(unsigned char **)mapSlot;
    *(int *)(map + 0x1c0) = 0x209;
    *(int *)(map + 0x1c8) = 0x40;
    __StartThunder();
    ValeRoomHalf((unsigned short *)(*(int *)(mapSlot + 0xc) + 0x1f84), 1);
    __Func_8095240();
    API_WaitFrames(30);
    message += 2;
    API_MapTransitionIn();
    API_WaitMapTransition();
    __Func_8095268();
    API_MapActor_DoAnim(8, 4);
    API_MessageID(message);
    API_ActorMessage_Wait(0x9008, 0, 0x3c);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(0x28);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(0x28);
    API_ActorMessage_Wait(0x9008, 0, 20);
    API_Func_80925cc(0, 2);
    API_Func_80118c0(7);
    API_CutsceneWait(20);
    API_Func_80118a8(8);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetAnim(0, 19);
    API_MapActor_TravelToWait(0, 0x22d, 0x2a7);
    API_Func_80118c0(8);
    API_Func_80118a8(9);
    API_MapActor_TravelToWait(0, 0x22b, 0x2a8);
    API_CutsceneWait(30);
    API_Func_8092adc(8, 0xd000, 0);
    actor = (unsigned char *)ValeRoomActor(0);
    __Actor_SetSpriteFlags(actor, 1);
    API_MapActor_Jump(0, 4, 0);
    API_MapActor_TravelToAnimWait(0, 0x21f, 0x2a2);
    API_Func_8092b08(0, 3);
    API_Func_8092adc(0, 0x4000, 0x28);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage(0x9008, 0);
    OvlFunc_887_20097e4();
    API_Func_809259c(8, 2);
    API_ActorMessage_Wait(0x9008, 0, 20);
    actor = (unsigned char *)ValeRoomActor(8);
    actor += 0x5a;
    ValeRoomByte(actor, 0xfe & *actor);
    API_MapActor_TravelToAnimWait(8, 0x21e, 0x2a8);
    API_CutsceneWait(1);
    actor = (unsigned char *)ValeRoomActor(8);
    actor += 0x5a;
    ValeRoomByte(actor, *actor | 1);
    API_CutsceneWait(10);
    API_Func_80925cc(8, 2);
    actor = (unsigned char *)ValeRoomActor(0);
    __Actor_AddSpriteLayer(actor, 0xe2);
    API_SetFlag(0x21);
    API_PlaySound(0x7e);
    __Func_8092950(0, 7);
    API_CutsceneWait(10);
    __Func_8092950(0, 0);
    API_CutsceneWait(20);
    actor = (unsigned char *)ValeRoomActor(8);
    actor += 0x5a;
    ValeRoomByte(actor, 0xfe & *actor);
    API_MapActor_TravelToAnimWait(8, 0x216, 0x2b0);
    API_CutsceneWait(1);
    actor = (unsigned char *)ValeRoomActor(8);
    actor += 0x5a;
    ValeRoomByte(actor, *actor | 1);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(8, 0x18000, 0xc000);
    API_MapActor_SetSpeed(0, 0x18000, 0xc000);
    API_SetCameraTarget(8, 1);
    actor = (unsigned char *)ValeRoomActor(0);
    actor += 0x23;
    ValeRoomByte(actor, 1 | *actor);
    API_MapActor_SetBehavior(8, (int)ActorCmd_ARRAY_887__02009ab4);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(0, (int)ActorCmd_ARRAY_887__02009ab4);
    API_MapActor_WaitScript(8);
    API_MapActor_TravelToAnimWait(8, 0x1a3, 0x295);
    API_MapActor_TravelToAnimWait(8, 0x198, 0x295);
    API_MapActor_SetAnim(8, 1);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(8, 0x4000, 10);
    ValeRoomPrompt(0x8008, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x8008, 0, 20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(8, (int)gScript_887__02009b04);
    API_MapActor_SetBehavior(0, (int)gScript_887__02009b34);
    API_CutsceneWait(20);
    map = *(unsigned char **)mapSlot;
    *(int *)(map + 0x1c0) = 0x201;
    *(int *)(map + 0x1c8) = 16;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(20);
}
