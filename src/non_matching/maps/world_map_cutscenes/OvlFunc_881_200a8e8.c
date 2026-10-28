#include "api.h"
#include "actor.h"
asm(".equ .Lworld881_DialogueBase, 0x2644");
extern unsigned char World881_DialogueBase[] asm(".Lworld881_DialogueBase");
static inline void World881_Byte(unsigned char *p, int value) { *p = value; }
static inline void World881_Half(unsigned short *p, int value) { *p = value; }

void OvlFunc_881_200a8e8(void)
{
    extern unsigned char CS_881_679c[] __asm__(".Lm881_679c");
    extern void OvlFunc_881_200813c(struct Actor *);
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_Stop(void *);
    extern void __Actor_WaitMovement(void *);
    extern void __DeleteFieldActor(int);
    extern unsigned int World881_Item(unsigned int) asm("__Func_8078a08");
    extern void __Func_808c44c(void);
    extern void __Func_808c4c0(void);
    extern void __Func_80936a0(unsigned int, unsigned int);
    extern void __LoadItemIcon(unsigned int);
    extern int __MapActor_GetActor(int);
    extern void OvlFunc_881_200a7dc(void);
    extern unsigned int __UploadSpriteGFX(unsigned int, unsigned int, void *);
    extern void * __galloc_iwram(int, unsigned int);
    extern void __gfree(int);
    unsigned char * leader;
    unsigned char * sceneActor;
    unsigned char * itemSprite;
    unsigned char *iconBuffer;
    unsigned char *actor;

    leader = (unsigned char *)__MapActor_GetActor(0);
    API_CutsceneStart();
    __Func_808c4c0();
    __Func_80936a0(0x16666, 6);
    API_Func_80933d4(0x30000, 0x6000);
    API_Func_80933f8(0x17880000, -1, 0xd680000, 1);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetAnim(0, 2);
    World881_Byte(leader + 0x5b, 0);
    __Actor_Stop(leader);
    if (*(int *)(leader + 0x10) > 0xd680000) {
        if (*(int *)(leader + 8) > 0x176e0000) {
            API_Actor_TravelTo(leader, 0x176e0000, *(int *)(leader + 12), 0xd7d0000);
            __Actor_WaitMovement(leader);
        }
    } else if (*(int *)(leader + 8) > 0x177a0000) {
        /* The original reads address 0x0000000c here. */
        API_Actor_TravelTo(leader, 0x177a0000, *(const int *)0x0000000c, 0xd480000);
        __Actor_WaitMovement(leader);
    }
    API_Actor_TravelTo(leader, 0x17690000, 0, 0xd680000);
    __Actor_WaitMovement(leader);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(0, 0, 0x28);
    __Func_808c44c();
    API_Func_80925cc(0, 2);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 28);
    sceneActor = API_CreateActor(22, (*(int *)(leader + 0x8) + 0x20000), 0x260000, *(int *)(leader + 0x10));
    if (sceneActor != 0) {
        World881_Byte(sceneActor + 0x55, 0);
        itemSprite = (unsigned char *)(*(int *)(sceneActor + 0x50));
        World881_Byte(itemSprite + 0x26, 0);
        World881_Byte(itemSprite + 0x27, 0);
        World881_Byte(itemSprite + 5, -0x21 & itemSprite[5]);
        World881_Byte(itemSprite + 9, 15 & itemSprite[9]);
        iconBuffer = __galloc_iwram(17, 0x608);
        __LoadItemIcon(0xf2);
        __UploadSpriteGFX(*(unsigned char *)(itemSprite + 0x1c), 0x80, (iconBuffer + 0x400));
        __gfree(17);
        API_CutsceneWait(20);
        *(void (**)(struct Actor *))(sceneActor + 0x6c) = OvlFunc_881_200813c;
        API_CutsceneWait(0x50);
    }
    actor = (unsigned char *)__MapActor_GetActor(*(int *)CS_881_679c);
    World881_Half((unsigned short *)(actor + 6), 0x3000);
    API_MapActor_Emote(*(int *)CS_881_679c, 0x100, 0);
    API_Func_80925cc(*(int *)CS_881_679c, 2);
    API_MessageID((int)World881_DialogueBase);
    API_ActorMessage_Wait(*(int *)CS_881_679c, 0, 0x50);
    if (sceneActor != 0) {
        API_DeleteActor(sceneActor);
    }
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(0x28);
    API_MapActor_Jump(*(int *)CS_881_679c, 6, 0x28);
    API_ActorMessage_Wait(*(int *)CS_881_679c, 0, 20);
    API_Func_8092adc(0, 0xe000, 0);
    API_Func_8092adc(*(int *)CS_881_679c, 0xd000, 20);
    API_ActorMessage_Wait((*(int *)CS_881_679c | 0x9000), 0, 0x28);
    API_MapActor_DoAnim(*(int *)CS_881_679c, 4);
    API_ActorMessage_Wait((*(int *)CS_881_679c | 0x9000), 0, 20);
    API_Func_8092adc(*(int *)CS_881_679c, 0x3000, 20);
    API_ActorMessage_Wait(*(int *)CS_881_679c, 0, 10);
    API_MapActor_SetSpeed(*(int *)CS_881_679c, 0xcccc, 0x6666);
    API_MapActor_SetAnim(*(int *)CS_881_679c, 2);
    sceneActor = (unsigned char *)__MapActor_GetActor(0x37);
    API_Actor_TravelTo(sceneActor, 0x177a0000, *(int *)(sceneActor + 0xc), 0xd480000);
    __Actor_WaitMovement(sceneActor);
    API_Actor_TravelTo(sceneActor, 0x17710000, 0, 0xd580000);
    __Actor_WaitMovement(sceneActor);
    API_MapActor_SetAnim(0x37, 1);
    API_Func_8092adc(*(int *)CS_881_679c, 0x5000, 10);
    API_Func_80925cc(*(int *)CS_881_679c, 1);
    API_ActorMessage_Wait((*(int *)CS_881_679c | 0x1000), 0, 20);
    API_MapActor_SetSpeed(*(int *)CS_881_679c, 0x10000, 0x8000);
    actor = (unsigned char *)__MapActor_GetActor(0x37);
    actor += 0x5a;
    World881_Byte(actor, 0xfe & *actor);
    API_MapActor_SetAnim(0x37, 2);
    API_Actor_TravelTo(sceneActor, 0x176d0000, 0, 0xd600000);
    __Actor_WaitMovement(sceneActor);
    API_MapActor_SetAnim(0x37, 1);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0x37, 2);
    API_Actor_TravelTo(sceneActor, 0x17710000, 0, 0xd580000);
    __Actor_WaitMovement(sceneActor);
    API_MapActor_SetAnim(0x37, 1);
    API_Func_801776c((int)World881_DialogueBase + 6, 1);
    *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    World881_Item(0xf2);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(*(int *)CS_881_679c, 4);
    API_ActorMessage_Wait(*(int *)CS_881_679c, 0, 10);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(*(int *)CS_881_679c, 3);
    API_MapActor_SetAnim(*(int *)CS_881_679c, 2);
    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(*(int *)CS_881_679c, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(*(int *)CS_881_679c);
    API_MapActor_SetPos(*(int *)CS_881_679c, 0, 0);
    __Func_808c4c0();
    __Func_80936a0(0x10000, 6);
    API_CutsceneWait(20);
    OvlFunc_881_200a7dc();
    __DeleteFieldActor(*(int *)CS_881_679c);
    API_ClearFlag(0x234);
    API_SetFlag(0x85d);
    API_CutsceneEnd();
}
