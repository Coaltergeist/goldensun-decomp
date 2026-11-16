/* rom_791794 (overlay file 897): consolidated TU — elemental_stars_eruption map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"
#include "dma.h"
#include "math.h"

INCLUDE_ASM("asm/maps/elemental_stars_eruption/exports.s");

extern unsigned char gOvl_0200b6d4[];

unsigned int ElementalStarsEruption_GetEntrances(void) {
    return (unsigned int)gOvl_0200b6d4;
}

unsigned int ElementalStarsEruption_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200b704[];

unsigned int ElementalStarsEruption_GetExits(void) {
    return (unsigned int)gOvl_0200b704;
}
extern unsigned char gOvl_0200b710[];

unsigned int ElementalStarsEruption_GetActors(void) {
    return (unsigned int)gOvl_0200b710;
}
extern unsigned char gOvl_0200b998[];

unsigned int ElementalStarsEruption_GetEvents(void) {
    return (unsigned int)gOvl_0200b998;
}

static inline void EruptionWriteByte(unsigned char *p, int value) { *p = value; }

void OvlFunc_897_2008054(void)
{
    extern void OvlFunc_897_20090c4(void);
    extern void OvlFunc_897_200935c(void);
    extern unsigned char CS_iwram_3001ec4[] __asm__("iwram_3001ec4");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_800fe9c(void);
    extern void __Func_8091890(int);
    extern int __Func_8091c7c(int, int);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_897_2008e30(int);
    extern void OvlFunc_897_2008f64(void);
    extern void OvlFunc_897_2009084(void);
    extern void OvlFunc_897_2009410(void);
    extern void OvlFunc_897_200ad48(unsigned int, unsigned int, unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    unsigned char * fieldEffects;
    unsigned char * savedActorFlags;
    int choice1;
    unsigned char *actor;

    fieldEffects = (unsigned char *)(*(int *)CS_iwram_3001ec4);
    API_CutsceneStart();
    *(int *)(fieldEffects + 0x40c) = 0;
    API_PlaySound(0x8d);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_MapActor_SetPos(0, 0xe80000, 0x9c0000);
    API_MapActor_SetPos(1, 0xda0000, 0xac0000);
    API_Func_8092adc(0, 0xb000, 0);
    API_Func_8092adc(1, 0xd000, 0);
    API_MapActor_SetPos(5, 0x1db0000, 0x14c0000);
    API_MapActor_SetPos(9, 0x1eb0000, 0x14c0000);
    API_MapActor_SetPos(11, 0x1cb0000, 0x15c0000);
    API_MapActor_SetPos(10, 0x1fb0000, 0x15c0000);
    API_MapActor_SetPos(13, 0x1d70000, 0x1320000);
    API_MapActor_SetPos(14, 0x1df0000, 0x16a0000);
    API_Func_8092b08(15, 1);
    API_Func_80933f8(0xe80000, -1, 0x9c0000, 0);
    __Func_800fe9c();
    *(int *)(*(int *)(CS_iwram_3001ec4 + -0x8) + 0x1c8) = 8;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(4);
    API_CutsceneWait(4);
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(4);
    API_CutsceneWait(4);
    OvlFunc_897_2008f64();
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(4);
    API_CutsceneWait(16);
    API_PlaySound(0x90);
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(4);
    API_CutsceneWait(4);
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(4);
    API_CutsceneWait(4);
    API_PlaySound(0x90);
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(0x30);
    API_CutsceneWait(0x30);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 20);
    OvlFunc_897_200ad48(1, 20, 20);
    OvlFunc_897_200ad48(0, 20, 0x28);
    API_MessageID(0x10cd);
    API_ActorMessage_Wait(11, 0, 20);
    API_ActorMessage(10, 0);
    OvlFunc_897_200ad48(1, 20, 0);
    API_ActorMessage_Wait(5, 0, 20);
    OvlFunc_897_200ad48(0, 20, 0);
    API_ActorMessage_Wait(14, 0, 20);
    API_ActorMessage_Wait(9, 0, 20);
    API_MapActor_TurnToFaceActor(0, 1, 0);
    API_CutsceneWait(0x28);
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0xb000, 0);
    API_Func_8092adc(1, 0xd000, 30);
    OvlFunc_897_200ad48(1, 20, 0);
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    OvlFunc_897_200ad48(0, 20, 20);
    actor = __MapActor_GetActor(15);
    __Actor_SetSpriteFlags(actor, 0);
    API_MapActor_SetPos(15, 0x1450000, 0x12e0000);
    actor = __MapActor_GetActor(15);
    *(unsigned char *)(actor + 0x55) = 5;
    *(int *)(fieldEffects + 0x40c) = 1;
    API_PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    API_CutsceneWait(0x96);
    API_ActorMessage_Wait(11, 0, 20);
    API_ActorMessage(5, 0);
    API_ActorMessage_Wait(10, 0, 10);
    API_MapActor_TurnToFaceActor(0, 1, 20);
    API_Func_8092adc(0, 0x3000, 0);
    API_Func_8092adc(1, 0x3000, 10);
    API_MapActor_SetPos(5, 0x1db0000, 0x14c0000);
    API_MapActor_SetPos(9, 0x1eb0000, 0x14c0000);
    API_MapActor_SetPos(11, 0x1cb0000, 0x15c0000);
    API_MapActor_SetPos(10, 0x1fb0000, 0x15c0000);
    API_MapActor_SetPos(13, 0x1d70000, 0x1320000);
    API_MapActor_SetPos(14, 0x1df0000, 0x16a0000);
    API_Func_80933d4(0x66666, 0xcccc);
    API_Func_80933f8(0x1480000, -1, 0x12b0000, 1);
    API_Func_8093530();
    API_PlaySound(0xa7);
    API_Func_8091200(0x205294, 2);
    API_Func_8091254(20);
    API_WaitFrames(20);
    API_Func_8091200(0x10000, 2);
    API_Func_8091254(20);
    API_CutsceneWait(0xc8);
    __ShowActorMessage_NoWait(0x1001, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_MessageID(0x10d6);
    } else {
        API_MessageID(0x10d7);
    }
    API_ActorMessage_Wait(0x1001, 0, 0x50);
    API_MessageID(0x10d8);
    API_ActorMessage_Wait(9, 0, 20);
    OvlFunc_897_200ad48(1, 20, 0);
    *(int *)(fieldEffects + 0x40c) = 0;
    API_PlaySound(0x8d);
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    API_CutsceneWait(0x50);
    *(int *)(fieldEffects + 0x40c) = 1;
    API_PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    OvlFunc_897_200ad48(0, 20, 0x3c);
    API_ActorMessage_Wait(14, 0, 30);
    API_Func_8092adc(15, 0xa000, 0x28);
    OvlFunc_897_200ad48(1, 20, 20);
    OvlFunc_897_200ad48(0, 20, 20);
    API_ActorMessage_Wait(0x1001, 0, 30);
    API_Func_8092adc(15, 0x1000, 0x28);
    OvlFunc_897_200ad48(1, 20, 20);
    OvlFunc_897_200ad48(0, 20, 20);
    API_ActorMessage_Wait(5, 0, 30);
    OvlFunc_897_2009084();
    API_StartTask(OvlFunc_897_20090c4, 0xc80);
    API_StartTask(OvlFunc_897_200935c, 0xc80);
    API_CutsceneWait(0xf0);
    API_ActorMessage_Wait(10, 0, 30);
    API_MapActor_SetPos(5, 0x1db0000, 0x14c0000);
    API_MapActor_SetPos(9, 0x1eb0000, 0x14c0000);
    API_MapActor_SetPos(11, 0x1cb0000, 0x15c0000);
    API_MapActor_SetPos(10, 0x1fb0000, 0x15c0000);
    API_MapActor_SetPos(13, 0x1d70000, 0x1320000);
    API_MapActor_SetPos(14, 0x1df0000, 0x16a0000);
    API_Func_8092adc(5, 0x8000, 0);
    API_Func_8092adc(9, 0x8000, 0);
    API_Func_8092adc(11, 0x8000, 0);
    API_Func_8092adc(10, 0x8000, 0);
    API_Func_8092adc(13, 0x8000, 0);
    API_Func_8092adc(14, 0x8000, 0);
    actor = __MapActor_GetActor(5);
    API_Func_80933f8((*(short *)(actor + 0xa) * 0x10000), -1, (*(short *)(actor + 0x12) * 0x10000), 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    API_Func_80925cc(13, 2);
    API_CutsceneWait(20);
    API_ActorMessage(13, 0);
    API_Func_80925cc(11, 2);
    API_ActorMessage_Wait(11, 0, 10);
    API_MapActor_SetAnim(14, 4);
    API_ActorMessage_Wait(14, 0, 20);
    API_MapActor_TurnToFaceActor(10, 11, 0x28);
    API_MapActor_SetAnim(10, 4);
    API_ActorMessage_Wait(10, 0, 10);
    API_MapActor_Emote(5, 0x100, 0);
    API_Func_8092adc(5, 0x3000, 0x28);
    API_ActorMessage_Wait(0x4005, 0, 10);
    API_Func_8092adc(10, 0xb000, 0);
    API_Func_8092adc(11, 0xd000, 0x28);
    API_MapActor_TurnToFaceActor(10, 11, 0x28);
    API_MapActor_Emote(10, 0x105, 0x28);
    API_Func_8092adc(10, 0xb000, 10);
    API_ActorMessage_Wait(10, 0, 10);
    API_Func_8092adc(10, 0x8000, 10);
    API_Func_80925cc(11, 2);
    API_ActorMessage_Wait(11, 0, 10);
    API_MapActor_SetAnim(10, 3);
    API_ActorMessage_Wait(10, 0, 0x28);
    API_Func_8092adc(14, 0xb000, 0x3c);
    API_MapActor_DoAnim(14, 3);
    API_ActorMessage_Wait(14, 0, 10);
    API_Func_8092adc(13, 0x3000, 0);
    API_Func_8092adc(5, 0x3000, 0);
    API_Func_8092adc(9, 0x5000, 0);
    API_Func_8092adc(11, 0x3000, 0);
    API_Func_8092adc(10, 0x5000, 20);
    API_Func_8092adc(14, 0xd000, 20);
    API_MapActor_DoAnim(14, 4);
    API_ActorMessage_Wait(14, 0, 10);
    API_MapActor_Emote(13, 0x103, 0);
    API_MapActor_SetSpeed(13, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(13, 0x1d7, 0x13a);
    API_Func_809259c(13, 3);
    API_ActorMessage_Wait(13, 0, 10);
    API_Func_8092adc(14, 0xb000, 10);
    API_MapActor_SetAnim(14, 4);
    API_ActorMessage_Wait(14, 0, 10);
    API_Func_809259c(13, 3);
    API_ActorMessage_Wait(13, 0, 10);
    API_Func_80925cc(9, 2);
    API_ActorMessage_Wait(0x4009, 0, 10);
    API_Func_8092adc(10, 0xb000, 20);
    API_ActorMessage_Wait(10, 0, 30);
    API_Func_8092adc(11, 0, 20);
    API_Func_80925cc(11, 2);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(30);
    API_Func_8092adc(11, 0xd000, 30);
    API_MapActor_DoAnim(11, 4);
    API_CutsceneWait(10);
    API_ActorMessage_Wait(11, 0, 10);
    API_Func_8092adc(13, 0x5000, 20);
    API_Func_80925cc(13, 2);
    API_CutsceneWait(20);
    API_MapActor_TurnToFaceActor(10, 11, 0);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(10, 3);
    API_MapActor_DoAnim(11, 3);
    API_Func_8092adc(11, 0xd000, 0);
    API_Func_8092adc(10, 0xb000, 0);
    API_CutsceneWait(0x28);
    API_Func_80925cc(13, 1);
    API_CutsceneWait(30);
    API_Func_8092adc(13, 0x8000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(13, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(14, 0xb000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(14, 4);
    API_ActorMessage_Wait(0x200e, 0, 30);
    API_Func_8092adc(9, 0xb000, 0);
    API_Func_8092adc(5, 0xb000, 0);
    API_Func_8092adc(13, 0x3000, 20);
    API_MapActor_Emote(5, 0x102, 0x28);
    API_ActorMessage_Wait(0x2005, 0, 0x28);
    API_MapActor_Emote(13, 0x105, 0x3c);
    API_MapActor_DoAnim(13, 3);
    API_MapActor_Emote(10, 0x101, 0);
    API_MapActor_Emote(11, 0x101, 0x3c);
    API_Func_80925cc(14, 2);
    API_ActorMessage_Wait(14, 0, 0x3c);
    API_MapActor_DoAnim(13, 3);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(5, 0x102, 0);
    API_MapActor_Emote(9, 0x102, 0x28);
    API_MapActor_TurnToFaceActor(10, 11, 20);
    API_MapActor_SetAnim(10, 3);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(10, 0x9999, 0x4ccc);
    API_MapActor_SetSpeed(11, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnim(11, 0x1db, 0x15c);
    API_MapActor_TravelToAnim(10, 0x1eb, 0x15c);
    API_MapActor_WaitMovement(11);
    API_MapActor_WaitMovement(10);
    API_MapActor_SetAnim(11, 1);
    API_MapActor_SetAnim(10, 1);
    API_Func_8092adc(11, 0xd000, 0);
    API_Func_8092adc(10, 0xb000, 0);
    API_Func_8092adc(13, 0x3000, 10);
    API_MapActor_Emote(11, 0x103, 0);
    API_Func_80925cc(11, 2);
    API_ActorMessage(0x200b, 0);
    API_MapActor_SetSpeed(11, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(5, 0x13333, 0x9999);
    API_MapActor_TravelToAnimWait(11, 0x1db, 0x152);
    actor = __MapActor_GetActor(11);
    savedActorFlags = (unsigned char *)((actor + 0x5a));
    *(unsigned char *)savedActorFlags = (0xfe & *(unsigned char *)savedActorFlags);
    API_MapActor_TravelToAnimWait(11, 0x1db, 0x15c);
    API_Func_80925cc(5, 1);
    API_MapActor_Jump(5, 4, 0);
    API_MapActor_TravelToAnimWait(5, 0x1cb, 0x13c);
    API_MapActor_SetSpeed(5, 0x8000, 0x4000);
    API_MapActor_Emote(13, 0x103, 0);
    API_Func_809259c(13, 3);
    API_ActorMessage_Wait(13, 0, 30);
    API_Func_80925cc(11, 1);
    API_CutsceneWait(20);
    EruptionWriteByte(savedActorFlags, 1 | *savedActorFlags);
    API_MapActor_SetSpeed(11, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(11, 0x1db, 0x14c);
    API_Func_8092adc(11, 0xb000, 20);
    API_ActorMessage(0x200b, 0);
    API_Func_8092adc(10, 0xb000, 0);
    API_Func_809259c(10, 2);
    API_ActorMessage_Wait(10, 0, 20);
    API_MapActor_Emote(11, 0x102, 20);
    API_Func_8092adc(5, 0x3000, 0);
    API_Func_8092adc(11, 0x3000, 20);
    API_MapActor_DoAnim(10, 4);
    API_MapActor_DoAnim(11, 3);
    API_Func_8092adc(11, 0xb000, 20);
    API_MapActor_DoAnim(11, 3);
    API_MapActor_DoAnim(13, 3);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnim(5, 0x1b0, 0x13c);
    API_MapActor_TravelToAnimWait(13, 0x1a6, 0x137);
    API_MapActor_SetAnim(5, 1);
    API_Func_8092adc(5, 0x3000, 0);
    API_Func_8092adc(13, 0x3000, 20);
    API_Func_80925cc(10, 2);
    API_Func_8092adc(10, 0xd000, 20);
    API_ActorMessage_Wait(0x100a, 0, 0x28);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(9, 0xb000, 30);
    API_MapActor_SetSpeed(9, 0x8000, 0x4000);
    API_MapActor_TravelToAnimWait(9, 0x1eb, 0x128);
    API_Func_8092adc(9, 0x5000, 0x28);
    API_MapActor_SetSpeed(10, 0x10000, 0x8000);
    API_MapActor_SetSpeed(11, 0x10000, 0x8000);
    API_MapActor_SetSpeed(13, 0x10000, 0x8000);
    API_MapActor_SetSpeed(14, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(10, 0x1d7, 0x134);
    API_Func_8092adc(10, 0x5000, 0);
    API_MapActor_TravelToAnimWait(11, 0x1c7, 0x134);
    API_Func_8092adc(11, 0x3000, 0);
    API_MapActor_TravelToAnimWait(14, 0x1e7, 0x134);
    API_Func_8092adc(10, 0xc000, 0);
    API_Func_8092adc(11, 0xd000, 0);
    API_Func_8092adc(14, 0xb000, 0);
    API_Func_8092adc(5, 0xd000, 0);
    API_Func_8092adc(13, 0xd000, 0);
    API_Func_80933d4(0x8000, 0x1000);
    API_Func_80933f8(0x1d80000, -1, 0x12c0000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    API_SetFlag(0x246);
    API_MapActor_SetSpeed(10, 0x8000, 0x4000);
    API_MapActor_SetSpeed(11, 0x8000, 0x4000);
    API_MapActor_SetSpeed(14, 0x8000, 0x4000);
    API_MapActor_DoAnim(10, 3);
    OvlFunc_897_2008e30(10);
    API_Func_80925cc(9, 2);
    OvlFunc_897_2008e30(9);
    API_MapActor_DoAnim(11, 3);
    OvlFunc_897_2008e30(11);
    API_Func_8092adc(5, 0x9000, 0x28);
    API_Func_809259c(5, 2);
    API_ActorMessage_Wait(0x2005, 0, 0x28);
    API_Func_8092adc(13, 0x3000, 0);
    API_Func_8092adc(5, 0xb000, 30);
    API_Func_8092adc(13, 0xe000, 0);
    OvlFunc_897_2008e30(5);
    OvlFunc_897_2008e30(13);
    API_Func_8092adc(14, 0x7000, 0x28);
    API_ActorMessage_Wait(14, 0, 30);
    API_MapActor_DoAnim(14, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(14, 0, 30);
    OvlFunc_897_2008e30(14);
    OvlFunc_897_2009410();
    __Func_8091890(5);
}

static inline void API_Func_8092950(int a, int b) { extern void __Func_8092950(int, int); __Func_8092950(a, b); }

void OvlFunc_897_2008e30(int arg0)
{
    extern struct Actor *Eruption8e30_GetActor(int) __asm__("__MapActor_GetActor");
    extern void __Actor_SetSpriteFlags(void *, int);

    struct Actor *actor8;
    struct Actor *actor;
    unsigned char i;

    actor8 = Eruption8e30_GetActor(8);
    actor8->scale.x = 0x10000;
    actor8->scale.y = 0x10000;
    API_MapActor_TravelToAnimWait(arg0, 0x1d7, 0x122);
    API_Func_8092adc(arg0, 0xc000, 0);
    API_CutsceneWait(10);
    API_MapActor_SetPos(8, 0x1d70000, 0x1220000);
    actor = Eruption8e30_GetActor(arg0);
    __Actor_SetSpriteFlags(Eruption8e30_GetActor(arg0), 0);
    API_Func_8092950(arg0, 0x100);
    actor->__unk55 = 0;
    API_PlaySound(0xc9);
    for (i = 0; i != 60; i++) {
        actor->pos.y += 0x8000;
        API_CutsceneWait(1);
    }
    API_PlaySound(0xbe);
    for (i = 0; i != 90; i++) {
        actor->pos.y += 0x1999;
        actor->scale.x -= 655;
        actor->scale.y -= 655;
        actor8->scale.x -= 655;
        actor8->scale.y -= 655;
        API_CutsceneWait(1);
    }
    API_MapActor_SetPos(arg0, 0, 0);
    API_MapActor_SetPos(8, 0, 0);
}

void OvlFunc_897_2008f28(void) {}
void OvlFunc_897_2008f2c(void) {}

#include "state/global_state.h"
#include "actor.h"

extern GlobalState gState;

int ElementalStarsEruption_MapInit(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0xa) {
        __StartEarthquake();
        OvlFunc_897_2008054();
    }
    return 0;
}

unsigned int OvlFunc_897_2008f54(unsigned int arg0) {
    unsigned short val;
    unsigned int ptr;

    val = *((unsigned short *)((char *)arg0 + 6));
    ptr = *((unsigned int *)((char *)arg0 + 0x50));
    val += 0x4000;
    *((unsigned short *)((char *)ptr + 0x1e)) = val;
    return 1;
}

void OvlFunc_897_2008f64(void)
{
    extern struct Actor *Eruption8f64_GetActor(int) __asm__("__MapActor_GetActor");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void Eruption8f64_SetAnim(void *, int) __asm__("__Actor_SetAnim");
    extern int __cos(int);
    extern int __sin(int);

    unsigned int i;

    for (i = 16; i <= 31; i++) {
        struct Actor *actor = Eruption8f64_GetActor(i);
        API_MapActor_SetIdle(i);
        __Actor_SetSpriteFlags(actor, 0);
        Eruption8f64_SetAnim(actor, 2);
        actor->sprite->oam.priority = 0;
        actor->__unk55 = 0;
        actor->speed = 0x80 << 12;
        actor->accel = 0xc0 << 8;
        actor->scale.x = 0x1cccc;
        actor->scale.y = 0x1cccc;
        actor->pos.x = 0xe8 << 16;
        actor->pos.y = 0xa0 << 13;
        actor->pos.z = 0x84 << 16;
    }

    API_PlaySound(0x91);

    for (i = 0; i <= 15; i++) {
        struct Actor *actor = Eruption8f64_GetActor(i + 16);
        int theta;
        int fx;
        int fz;
        actor->sprite->rotation = (i << 12) - 0x4000;
        theta = i << 12;
        fx = fx32_multiply(__cos(theta), 0x80 << 17);
        fz = fx32_multiply(__sin(theta), 0x80 << 17);
        API_Actor_TravelTo(actor, actor->pos.x + fx, actor->pos.y, actor->pos.z + fz);
    }

    API_CutsceneWait(0x14);
    API_MapActor_WaitMovement(0x10);

    for (i = 16; i <= 31; i++) {
        struct Actor *actor = Eruption8f64_GetActor(i);
        API_MapActor_SetIdle(i);
        actor->scale.x = 0x10000;
        actor->scale.y = 0x10000;
        actor->pos.x = 0;
        actor->pos.y = 0;
        actor->pos.z = 0;
        actor->motion.x = 0;
        actor->motion.y = 0;
        actor->motion.z = 0;
        actor->prevPos.x = 0x80000000;
        actor->prevPos.y = 0x80000000;
        actor->prevPos.z = 0x80000000;
    }
}

extern unsigned char L3b68[] __asm__(".Lm897_3b68");
extern unsigned char L3b00[] __asm__(".Lm897_3b00");
extern unsigned char L3b6c[] __asm__(".Lm897_3b6c");
extern unsigned char L3b70[] __asm__(".Lm897_3b70");
extern unsigned char L3ac0[] __asm__(".Lm897_3ac0");

void OvlFunc_897_2009084(void)
{
    unsigned int *r2;
    unsigned int *r3;
    unsigned int cnt;
    unsigned int r1;

    *(unsigned int *)L3b68 = 0x3f;
    *(unsigned int *)L3b00 = 0;
    *(unsigned int *)L3b6c = 0;
    *(unsigned int *)L3b70 = 0x78;
    r2 = (unsigned int *)L3ac0;
    cnt = 0;
    r1 = 0;
    do {
        cnt += 1;
        *r2++ = r1;
    } while (cnt <= 0xf);
}

extern unsigned char *CS897_EffectState __asm__("iwram_3001ec4");
extern unsigned int CS897_Fade __asm__(".Lm897_3b00");
extern unsigned int CS897_Ages[16] __asm__(".Lm897_3ac0");
extern unsigned int CS897_SpawnMask __asm__(".Lm897_3b68");
extern unsigned int CS897_Frame __asm__("iwram_3001e40");
extern struct Actor *CS897_GetActor(int) __asm__("__MapActor_GetActor");
extern void CS897_SetAnim(void *, int) __asm__("__Actor_SetAnim");
extern void CS897_SetSpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
extern void CS897_SetScript(void *, void *) __asm__("__Actor_SetScript");
extern void CS897_ActorMode(void *, int) __asm__("__Func_80929d8");
extern unsigned int CS897_UnsignedDivide(unsigned int, unsigned int) __asm__("_udivsi3_RAM");
extern unsigned int CS897_UnsignedRemainder(unsigned int, unsigned int) __asm__("_umodsi3_RAM");
extern unsigned int CS897_Random(void) __asm__("__Random");
extern int CS897_Cos(int) __asm__("__cos");
extern int CS897_Sin(int) __asm__("__sin");
extern unsigned char gScript_897__0200ba00[];

void OvlFunc_897_20090c4(void)
{
    unsigned char *effect = CS897_EffectState;
    unsigned int scale;
    unsigned char i;
    int stopped, targetX, targetZ;
    short signedAngle;
    unsigned short angle;
    unsigned int unusedAge;
    scale = CS897_UnsignedDivide(CS897_Fade, 10);
    if (scale != 0) {
        *(int *)(effect + 0x40c) = 0;
        API_Func_8012330(scale << 16, scale << 16, 0x10000);
    } else {
        *(int *)(effect + 0x40c) = 1;
        API_Func_8012330(-1, -1, 0xe666);
    }
    if (CS897_Fade != 0)
        CS897_Fade -= 3;
    for (i = 0; i <= 15; i++) {
        if (CS897_Ages[i] != 0) {
            struct Actor *actor = CS897_GetActor(i + 16);
            if (actor->prevPos.x == (int)0x80000000) {
                stopped = actor->prevPos.z;
                if (stopped == actor->prevPos.x) {
                    CS897_Ages[i]++;
                    if (CS897_Ages[i] == 2)
                        CS897_SetAnim(actor, 3);
                    if (CS897_Ages[i] == 19) {
                        actor->pos.x = 0;
                        actor->pos.y = 0;
                        actor->pos.z = 0;
                        actor->motion.x = 0;
                        actor->motion.y = 0;
                        actor->motion.z = 0;
                        actor->prevPos.x = stopped;
                        actor->prevPos.y = stopped;
                        actor->prevPos.z = stopped;
                        CS897_ActorMode(actor, 15);
                    } else if (CS897_Ages[i] == 20) {
                        CS897_Ages[i] = 0;
                    }
                }
            }
        }
    }
    if (CS897_SpawnMask == 999 || (CS897_Frame & CS897_SpawnMask) != 0)
        return;
    for (i = 0; i <= 15; i++) {
        struct Actor *actor;
        signedAngle = CS897_UnsignedRemainder(CS897_Random(), 0xffff);
        actor = CS897_GetActor(i + 16);
        unusedAge = CS897_Ages[i];
        if (unusedAge == 0) {
            if (!API_GetFlag(0x246))
                API_PlaySound(0xf6);
            CS897_Ages[i] = 1;
            actor->__unk55 = unusedAge;
            actor->speed = 0x80000;
            actor->accel = 0x10000;
            CS897_SetSpriteFlags(actor, 0);
            actor->sprite->oam.priority = 1;
            CS897_SetAnim(actor, 2);
            CS897_SetScript(actor, gScript_897__0200ba00);
            angle = signedAngle;
            actor->pos.x = fx32_multiply(CS897_Cos(angle), (((CS897_Random() << 8) >> 16) << 16) + 0x1000000) + 0x1450000;
            actor->pos.y = unusedAge;
            actor->pos.z = fx32_multiply(CS897_Sin(angle), (((CS897_Random() << 8) >> 16) << 16) + 0x1000000) + 0x12e0000;
            targetX = fx32_multiply(CS897_Cos(angle), ((CS897_Random() & 0x3f) << 16) + 0x80000);
            targetZ = fx32_multiply(CS897_Sin(angle), ((CS897_Random() & 0x3f) << 16) + 0x80000);
            API_Actor_TravelTo(actor, targetX + 0x1450000, 0, targetZ + 0x11e0000);
            CS897_ActorMode(actor, 0);
            CS897_Fade = 30;
            break;
        }
    }
}

extern int __Random(void);

void OvlFunc_897_200935c(void)
{
    unsigned int *p;

    if (*(unsigned int *)L3b70 != 0) {
        (*(unsigned int *)L3b70)--;
        return;
    }

    if (*(unsigned int *)L3b6c != 0) {
        (*(unsigned int *)L3b6c)--;
    } else {
        *(unsigned int *)L3b6c = (unsigned int)(__Random() * 4) >> 16;
    }

    switch (*(unsigned int *)L3b6c) {
    case 3:
        *(unsigned int *)L3b68 = 3;
        p = (unsigned int *)L3b70;
        *p = ((unsigned int)(__Random() * 20) >> 16) + 0x28;
        break;
    case 2:
        *(unsigned int *)L3b68 = 0xf;
        p = (unsigned int *)L3b70;
        *p = ((unsigned int)(__Random() * 40) >> 16) + 0x50;
        break;
    case 1:
        *(unsigned int *)L3b68 = 0x3f;
        p = (unsigned int *)L3b70;
        *p = ((unsigned int)(__Random() * 80) >> 16) + 0xa0;
        break;
    default:
        *(unsigned int *)L3b68 = 0x7f;
        p = (unsigned int *)L3b70;
        *p = ((unsigned int)(__Random() * 160) >> 16) + 0x140;
        break;
    }
}
/* pooled literal (ldr rN, =0x10f8 in the original) */
__asm__(".equ .Lconst_10f8, 0x10f8");

static inline void EruptionSetRotation(unsigned char *sprite, int value)
{
    *(unsigned short *)(sprite + 0x1e) = value;
}

struct EruptionSpriteAttr { unsigned char pad[5]; unsigned char attr0Low:5; unsigned char colorDepth:1; unsigned char attr0High:2; unsigned char pad6[3]; unsigned char tileHigh:2; unsigned char priority:2; unsigned char palette:4; unsigned char padA[0x1c]; unsigned char flags, layers; };

static inline void EruptionWriteFlagByte(unsigned char *address, int value)
{
    *address = value;
}

void OvlFunc_897_2009410(void)
{
    extern unsigned char CS_897_3b68[] __asm__(".Lm897_3b68");
    extern void OvlFunc_897_20090c4(void);
    extern void OvlFunc_897_200935c(void);
    extern void OvlFunc_897_200a93c(void);
    extern void OvlFunc_897_200a970(void);
    extern void OvlFunc_897_200b00c(void);
    extern unsigned char CS_iwram_3001ec4[] __asm__("iwram_3001ec4");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_800fe9c(void);
    extern void __Func_808f140(void *, int);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8092950(int, int);
    extern unsigned int * __Func_8093554(void);
    extern void __LoadItemIcon(unsigned int);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_897_200a820(unsigned int);
    extern void OvlFunc_897_200a84c(int);
    extern void OvlFunc_897_200a8dc(int);
    extern void OvlFunc_897_200a9a4(int);
    extern void OvlFunc_897_200ac1c(int, int);
    extern void OvlFunc_897_200ac9c(void);
    extern void OvlFunc_897_200ad48(unsigned int, unsigned int, unsigned int);
    extern void OvlFunc_897_200ad94(unsigned int);
    extern void OvlFunc_897_200aff0(void);
    extern void OvlFunc_897_200b000(void);
    extern int __ShowActorMessage_NoWait(int, int);
    extern unsigned int __UploadSpriteGFX(unsigned int, unsigned int, void *);
    extern void * __galloc_iwram(int, unsigned int);
    extern void __gfree(int);
    unsigned char *actor1;
    unsigned char *actor2;
    unsigned char *actor3;
    unsigned char *actor4;
    unsigned char *actor5;
    unsigned char *actor6;
    unsigned char *actor7;
    unsigned char *actor8;
    unsigned char *actor9;
    unsigned char *actor10;
    unsigned char *actor11;
    unsigned char *actor12;
    unsigned char *actor13;
    unsigned char *actor14;
    extern unsigned char EruptionMessage10f8[] __asm__(".Lconst_10f8");
    int messageBase;
    unsigned char * fieldState;
    unsigned char * npc;
    unsigned char actorIndex;
    unsigned int frame;
    unsigned char * player0;
    unsigned char * player1;
    unsigned char * sprite0;
    unsigned char * sprite1;
    unsigned char * scratchSprite0;
    unsigned char * scratchSprite1;
    int *introMode;
    int *summonMode;
    int delay;
    unsigned char * createdActor;
    unsigned char * iconSprite;
    unsigned char * iconBuffer;
    unsigned int * cameraActor;
    int choice2;
    int choice3;
    int choice4;
    int choice5;

    /* Capture the field state and actor 15 for the complete sequence. */
    fieldState = (unsigned char *)(*(int *)CS_iwram_3001ec4);
    npc = __MapActor_GetActor(15);
    API_StopTask(OvlFunc_897_200935c);
    *(int *)CS_897_3b68 = 3;
    API_CutsceneWait(0x50);
    API_PlaySound(17);
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(0x28);
    API_CutsceneWait(0x28);
    API_StopTask(OvlFunc_897_20090c4);
    /* Hide actors 16 through 31. */
    actorIndex = 0;
    do {
        API_MapActor_SetPos((actorIndex + 16), 0, 0);
        actorIndex++;
    } while (actorIndex <= 15);
    API_WaitFrames(1);
    API_MapActor_SetPos(15, 0, 0);
    OvlFunc_897_200a820(0);
    OvlFunc_897_200a820(1);
    frame = 0;
    *(int *)(fieldState + 0x40c) = frame;
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x50);
    OvlFunc_897_200ac9c();
    cameraActor = __Func_8093554();
    *(unsigned char *)(((unsigned char *)cameraActor) + 0x55) = frame;
    *(int *)(((unsigned char *)cameraActor) + 8) = 0xe70000;
    *(int *)(((unsigned char *)cameraActor) + 16) = 0x900000;
    *(int *)(((unsigned char *)cameraActor) + 0x38) = 0x80000000;
    *(int *)(((unsigned char *)cameraActor) + 0x3c) = 0x80000000;
    *(int *)(((unsigned char *)cameraActor) + 0x40) = 0x80000000;
    *(int *)(((unsigned char *)cameraActor) + 12) = frame;
    *(int *)(((unsigned char *)cameraActor) + 0x24) = frame;
    *(int *)(((unsigned char *)cameraActor) + 0x2c) = frame;
    API_WaitFrames(4);
    __Func_800fe9c();
    API_WaitFrames(4);
    API_Func_8092b08(0, 3);
    API_Func_8092b08(1, 3);
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(0x28);
    API_CutsceneWait(0x28);
    player0 = __MapActor_GetActor(0);
    player1 = __MapActor_GetActor(1);
    /* Rotate the two sprites in opposite directions while separating the actors. */
    sprite0 = (unsigned char *)(*(int *)(player0 + 0x50));
    sprite1 = (unsigned char *)(*(int *)(player1 + 0x50));
    do {
        ((struct Sprite *)sprite0)->rotation += 0x100;
        ((struct Sprite *)sprite1)->rotation -= 0x100;
        ((struct Actor *)player0)->pos.x += 0x6000;
        ((struct Actor *)player1)->pos.x += -0x6000;
        API_WaitFrames(1);
        frame++;
    } while (frame <= 19);
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(0, 0x20000, 0x10000);
    API_MapActor_SetSpeed(1, 0x20000, 0x10000);
    actor1 = __MapActor_GetActor(0);
    scratchSprite0 = (unsigned char *)(*(int *)(actor1 + 0x50));
    EruptionSetRotation(scratchSprite0, 0);
    actor2 = __MapActor_GetActor(1);
    scratchSprite1 = (unsigned char *)(*(int *)(actor2 + 0x50));
    EruptionSetRotation(scratchSprite1, 0);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 0);
    API_MapActor_TravelTo(0, 0xf6, 0x96);
    API_MapActor_TravelToWait(1, 0xdc, 0x96);
    API_Func_8092b08(0, 2);
    API_Func_8092b08(1, 2);
    actor3 = __MapActor_GetActor(0);
    *(unsigned char *)(actor3 + 0x23) = (*(unsigned char *)(actor3 + 0x23) | 1);
    actor4 = __MapActor_GetActor(1);
    EruptionWriteFlagByte(actor4 + 0x23, 1 | *(unsigned char *)(actor4 + 0x23));
    API_MapActor_SetIdle(0);
    API_MapActor_SetIdle(1);
    API_Func_8092adc(0, 0x2000, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0xe000, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0, 0x9000, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(1, 0x5000, 0);
    API_CutsceneWait(0x50);
    API_Func_8092adc(0, 0x8000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x1000, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(1, 2);
    messageBase = (int)EruptionMessage10f8;
    API_MessageID(messageBase);
    __ShowActorMessage_NoWait(1, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        API_MapActor_DoAnim(1, 3);
        API_MessageID(messageBase + 1);
    } else {
        API_Func_80925cc(1, 1);
        API_MessageID(messageBase + 2);
    }
    API_ActorMessage_Wait(1, 0, 0x3c);
    API_Func_8092adc(1, 0x3000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Jump(1, 2, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x28);
    API_MessageID(0x10fb);
    API_ActorMessage_Wait(1, 0, 10);
    API_MapActor_Jump(0, 2, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x2000, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(0, 0x102, 0);
    API_CutsceneWait(0x50);
    API_Func_8092adc(1, 0x1000, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    __ShowActorMessage_NoWait(1, 0);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 0) {
        API_CutsceneWait(10);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(10);
        API_Func_8092adc(1, 0x3000, 0);
        API_CutsceneWait(0x3c);
        API_Func_8092adc(1, 0x1000, 0);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(1, 4);
        API_MessageID(0x10fd);
    } else {
        API_CutsceneWait(10);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(10);
        API_Func_8092adc(1, 0x3000, 0);
        API_CutsceneWait(0x3c);
        API_Func_8092adc(1, 0x1000, 0);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(1, 4);
        API_MessageID(0x10fe);
    }
    API_ActorMessage_Wait(1, 0, 0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(1, 0x7000, 0);
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0x11c0000, -1, 0x5c0000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x5000, 0);
    API_Func_80933d4(0x18000, 0x3000);
    API_Func_80933f8(0x7f0000, -1, 0xa20000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    API_Func_8092adc(0, 0x2000, 0);
    API_Func_8092adc(1, 0x3000, 0);
    API_Func_80933d4(0x40000, 0x8000);
    API_Func_80933f8(0x1300000, -1, 0x1260000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0x1000, 0);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x1900000, -1, 0xd70000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x3c);
    API_Func_80933d4(0x40000, 0x8000);
    API_Func_80933f8(0x1110000, -1, 0x910000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_Func_80925cc(1, 2);
    API_MessageID(0x10ff);
    API_ActorMessage_Wait(1, 0, 20);
    API_Func_8092adc(1, 0x3000, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(1, 0xd000, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(1, 0xf000, 0);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(1, 0x3000, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(1, 0xf000, 0);
    API_CutsceneWait(10);
    API_ActorMessage_Wait(1, 0, 10);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(10);
    API_PlaySound(23);
    OvlFunc_897_200ad48(1, 4, 0);
    introMode = (int *)((fieldState + 0x40c));
    *(int *)introMode = 0;
    API_Func_8012330(0x50000, 0x50000, 0x10000);
    API_CutsceneWait(10);
    OvlFunc_897_200ad48(0, 0x28, 0);
    API_MapActor_SetSpeed(0, 0x20000, 0x10000);
    API_MapActor_SetSpeed(1, 0x20000, 0x10000);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 0);
    API_MapActor_TravelTo(0, 0xf3, 0x90);
    API_MapActor_TravelTo(1, 0xca, 0x90);
    API_MapActor_WaitMovement(0);
    API_CutsceneWait(20);
    *(int *)introMode = 1;
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x50);
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    API_MapActor_SetSpeed(1, 0x6666, 0x3333);
    API_MapActor_TravelToAnim(1, 0xdc, 0x96);
    API_MapActor_TravelToAnimWait(0, 0xf6, 0x96);
    API_MapActor_SetAnim(1, 1);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(1, 0x7000, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x3000, 0);
    API_CutsceneWait(0x28);
    __ShowActorMessage_NoWait(1, 0);
    choice4 = __Func_8091c7c(0, 0);
    if (choice4 == 0) {
        API_Func_8092adc(1, 0x1000, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(1, 3);
    } else {
        API_Func_8092adc(1, 0x1000, 0);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(1, 4);
        API_MessageID(0x1103);
    }
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_MapActor_SetPos(15, 0x6e0000, 0x980000);
    API_WaitFrames(1);
    API_MapActor_SetSpeed(15, 0x13333, 0x9999);
    API_MapActor_TravelTo(15, 0xab, 0x98);
    API_Func_8092adc(15, 0, 0);
    actor5 = __MapActor_GetActor(15);
    __Actor_SetSpriteFlags(actor5, 1);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_TravelToAnim(1, 0xd9, 0xb6);
    API_Func_8092adc(0, 0x7000, 0);
    API_CutsceneWait(10);
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0xd90000, -1, 0xb00000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_MapActor_Surprise(0, 0x102);
    API_CutsceneWait(20);
    API_MapActor_Jump(0, 2, 0);
    API_CutsceneWait(10);
    API_MapActor_Jump(0, 4, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_SetAnim(1, 1);
    API_CutsceneWait(0x28);
    API_Func_8092adc(1, 0x2000, 0);
    API_CutsceneWait(4);
    API_MapActor_TravelToAnimWait(1, 0xe7, 0xaf);
    API_Func_8092adc(1, 0xe000, 0);
    API_MessageID(0x1104);
    API_ActorMessage(1, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(1, 0x101, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(1, 0xa000, 0);
    API_CutsceneWait(0x3c);
    API_Func_809259c(1, 1);
    API_MapActor_Surprise(1, 0x102);
    API_CutsceneWait(0x28);
    OvlFunc_897_200ad48(1, 20, 0);
    summonMode = (int *)((fieldState + 0x40c));
    *(int *)summonMode = 0;
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x28);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_PlaySound(0x121);
    API_Func_8091200(0x10000, 1);
    API_Func_8091254(0x28);
    *(int *)summonMode = 1;
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(0x78);
    API_ActorMessage(15, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x64);
    API_ActorMessage(15, 0);
    API_CutsceneWait(20);
    OvlFunc_897_200ad48(1, 10, 0);
    *(int *)summonMode = 0;
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0x20000, 0x10000);
    API_MapActor_SetSpeed(1, 0x20000, 0x10000);
    actor6 = __MapActor_GetActor(0);
    *(unsigned char *)(actor6 + 0x5a) = (0xfe & *(unsigned char *)(actor6 + 0x5a));
    actor7 = __MapActor_GetActor(1);
    *(unsigned char *)(actor7 + 0x5a) = (0xfe & *(unsigned char *)(actor7 + 0x5a));
    API_MapActor_Jump(0, 4, 0);
    API_MapActor_Jump(1, 4, 0);
    API_MapActor_TravelTo(0, 0x100, 0x96);
    API_MapActor_TravelTo(1, 0xe7, 0xb4);
    API_MapActor_WaitMovement(1);
    OvlFunc_897_200ad48(0, 0x28, 0);
    API_CutsceneWait(20);
    actor8 = __MapActor_GetActor(0);
    *(unsigned char *)(actor8 + 0x5a) = (*(unsigned char *)(actor8 + 0x5a) | 1);
    actor9 = __MapActor_GetActor(1);
    EruptionWriteFlagByte(actor9 + 0x5a, 1 | *(unsigned char *)(actor9 + 0x5a));
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(1, 0x103, 0);
    API_CutsceneWait(0x28);
    API_ActorMessage(1, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(15, 0x101, 0);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0, 0x5000, 0);
    API_Func_8092adc(1, 0xd000, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(1, 0xb000, 0);
    API_CutsceneWait(10);
    API_PlaySound(0x6b);
    API_StartTask(OvlFunc_897_200a93c, 0xc80);
    API_CutsceneWait(10);
    API_MapActor_Emote(15, 0x100, 0);
    API_CutsceneWait(0x28);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0xba0000, -1, 0xa60000, 1);
    API_MapActor_TravelTo(15, 0x82, 0x71);
    API_MapActor_WaitMovement(15);
    API_Func_8092adc(15, 0x3000, 0);
    API_CutsceneWait(20);
    *(int *)summonMode = 0;
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_Func_8091200(0x20119e, 1);
    API_Func_8091254(20);
    API_CutsceneWait(20);
    OvlFunc_897_200aff0();
    API_MapActor_DoAnim(15, 2);
    frame = 0;
    do {
        OvlFunc_897_200ad94((unsigned int)npc);
        frame++;
        API_WaitFrames(1);
    } while (frame <= 0x27);
    API_StartTask(OvlFunc_897_200b00c, 0xc80);
    API_Func_8091200(0x10000, 1);
    API_Func_8091254(0x3c);
    API_CutsceneWait(30);
    API_PlaySound(0x121);
    API_StopTask(OvlFunc_897_200a93c);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    /* Include the zero-delay iteration; the final -1 is reused by later calls. */
    delay = 15;
    do {
        OvlFunc_897_200a84c(0);
        API_WaitFrames(delay);
        OvlFunc_897_200a84c(1);
        API_WaitFrames(delay);
        delay--;
    } while (delay != -1);
    OvlFunc_897_200a84c(0);
    *(int *)(fieldState + 0x40c) = 1;
    API_Func_8012330(delay, delay, 0xe666);
    API_Func_8012350();
    API_MapActor_DoAnim(15, 3);
    API_StopTask(OvlFunc_897_200b00c);
    API_WaitFrames(1);
    __Func_8092950(15, 0);
    API_CutsceneWait(0x3c);
    API_ActorMessage(15, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0xda0000, delay, 0xb50000, 1);
    API_MapActor_SetSpeed(15, 0x10000, 0x8000);
    API_MapActor_TravelTo(15, 0xa9, 0x97);
    API_MapActor_WaitMovement(15);
    API_CutsceneWait(10);
    API_Func_8092adc(15, 0x1000, 0);
    API_CutsceneWait(0x28);
    API_ActorMessage(15, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x5000, 0);
    API_Func_8092adc(1, 0xd000, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(15, 0xf000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x7000, 0);
    API_Func_8092adc(1, 0xb000, 0);
    API_Func_80933f8(0xe00000, delay, 0x9e0000, 1);
    API_Func_8093530();
    OvlFunc_897_200a9a4(0);
    API_Func_80925cc(15, 2);
    API_CutsceneWait(20);
    API_ActorMessage(15, 0);
    API_CutsceneWait(0x28);
    __ShowActorMessage_NoWait(15, 0);
    choice5 = __Func_8091c7c(0, 0);
    if (choice5 == 0) {
        API_CutsceneWait(0x28);
    } else {
        API_Func_801776c(0x110c, 1);
        API_CutsceneWait(0x28);
    }
    actor10 = __MapActor_GetActor(0);
    /* Create and populate the temporary item-icon actor. */
    createdActor = API_CreateActor(22, *(int *)(actor10 + 0x8), (*(int *)(actor10 + 0xc) + 0x240000), *(int *)(actor10 + 0x10));
    if (createdActor != 0) {
        iconBuffer = __galloc_iwram(17, 0x608);
        iconSprite = (unsigned char *)(*(int *)(createdActor + 0x50));
        ((struct EruptionSpriteAttr *)iconSprite)->flags = 0;
        ((struct EruptionSpriteAttr *)iconSprite)->layers = 0;
        ((struct EruptionSpriteAttr *)iconSprite)->colorDepth = 0;
        ((struct EruptionSpriteAttr *)iconSprite)->palette = 0;
        ((struct EruptionSpriteAttr *)iconSprite)->priority = 1;
        __LoadItemIcon(0xde);
        __UploadSpriteGFX(*(unsigned char *)(iconSprite + 0x1c), 0x80, (iconBuffer + 0x400));
        __gfree(17);
        API_MapActor_SetAnim(0, 28);
        __Func_808f140(createdActor, 3);
        API_MapActor_SetAnim(0, 28);
    }
    /* The original scale animation runs here even if actor creation returned zero. */
    OvlFunc_897_200ad48(1, 20, 0);
    frame = 0;
    do {
        OvlFunc_897_200ad94((unsigned int)npc);
        API_WaitFrames(1);
        OvlFunc_897_200ad94((unsigned int)npc);
        API_WaitFrames(1);
        *(int *)(createdActor + 0x18) = 0x6666;
        *(int *)(createdActor + 0x1c) = 0x6666;
        OvlFunc_897_200ad94((unsigned int)npc);
        API_WaitFrames(1);
        OvlFunc_897_200ad94((unsigned int)npc);
        frame++;
        API_WaitFrames(1);
        *(int *)(createdActor + 0x18) = 0x10000;
        *(int *)(createdActor + 0x1c) = 0x10000;
    } while (frame <= 23);
    __Func_8092950(15, 0);
    OvlFunc_897_200ad48(0, 20, 0);
    API_MessageID(0x110d);
    API_ActorMessage_Wait(15, 0, 20);
    if (createdActor != 0) {
        API_DeleteActor((int)createdActor);
    }
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(1, 0xa000, 0x3c);
    API_ActorMessage(15, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(15, 0x4000, 0);
    API_Func_80933d4(0x40000, 0x8000);
    OvlFunc_897_200ac1c(0xe8, 0x1d0);
    OvlFunc_897_200a9a4(1);
    API_ActorMessage(15, 0);
    OvlFunc_897_200ac1c(0x2c7, 0x90);
    OvlFunc_897_200a9a4(2);
    API_ActorMessage(15, 0);
    OvlFunc_897_200ac1c(0x2c7, 0x1d0);
    OvlFunc_897_200a9a4(3);
    API_ActorMessage(15, 0);
    API_Func_8092adc(15, 0x1000, 0);
    API_MapActor_SetPos(1, 0x2460000, 0x1590000);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_MapActor_SetPos(1, 0xe70000, 0xb40000);
    API_Func_8092adc(1, 0xb000, 0);
    API_WaitFrames(20);
    OvlFunc_897_200ac1c(0xdb, 0xab);
    API_ActorMessage(15, 0);
    API_CutsceneWait(10);
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_ActorMessage(15, 0);
    API_CutsceneWait(20);
    API_ActorMessage(15, 0);
    API_CutsceneWait(0x28);
    *(int *)(fieldState + 0x40c) = 0;
    API_Func_8012330(0x40000, 0x40000, 0x10000);
    API_Func_8091200(0x20119e, 1);
    API_Func_8091254(20);
    API_CutsceneWait(20);
    API_PlaySound(0x6b);
    API_StartTask(OvlFunc_897_200a970, 0xc80);
    API_CutsceneWait(20);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0xb80000, -1, 0x840000, 1);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 0);
    actor11 = __MapActor_GetActor(0);
    *(unsigned char *)(actor11 + 0x5a) = (0xfe & *(unsigned char *)(actor11 + 0x5a));
    actor12 = __MapActor_GetActor(1);
    *(unsigned char *)(actor12 + 0x5a) = (0xfe & *(unsigned char *)(actor12 + 0x5a));
    API_MapActor_TravelTo(0, 0xf5, 0x91);
    API_MapActor_TravelTo(1, 0xd7, 0xa8);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(0x50);
    actor13 = __MapActor_GetActor(0);
    *(unsigned char *)(actor13 + 0x5a) = (*(unsigned char *)(actor13 + 0x5a) | 1);
    actor14 = __MapActor_GetActor(1);
    EruptionWriteFlagByte(actor14 + 0x5a, 1 | *(unsigned char *)(actor14 + 0x5a));
    API_MapActor_TravelTo(15, 0xb8, 0x57);
    API_MapActor_WaitMovement(15);
    API_Func_8092adc(15, 0x4000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(15, 2);
    frame = 0;
    do {
        OvlFunc_897_200ad94((unsigned int)npc);
        frame++;
        API_WaitFrames(1);
    } while (frame <= 0x27);
    API_StartTask(OvlFunc_897_200b00c, 0xc80);
    API_Func_8091200(0x10000, 1);
    API_Func_8091254(0x3c);
    API_CutsceneWait(30);
    API_PlaySound(0x121);
    API_StopTask(OvlFunc_897_200a970);
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    delay = 7;
    do {
        OvlFunc_897_200a8dc(0);
        API_WaitFrames(delay);
        OvlFunc_897_200a8dc(1);
        API_WaitFrames(delay);
        delay--;
    } while (delay != -1);
    OvlFunc_897_200a8dc(0);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_MapActor_DoAnim(15, 3);
    API_StopTask(OvlFunc_897_200b00c);
    API_WaitFrames(1);
    __Func_8092950(15, 0);
    API_CutsceneWait(0x3c);
    API_Func_8012330(0x40000, 0x40000, 0x10000);
    API_Func_8091200(0x20119e, 1);
    API_Func_8091254(20);
    API_CutsceneWait(20);
    API_PlaySound(0x6b);
    API_StartTask(OvlFunc_897_200a93c, 0xc80);
    API_CutsceneWait(0x28);
    API_MapActor_TravelToWait(15, 0x7f, 0x6e);
    API_Func_8092adc(15, 0x4000, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(15, 2);
    frame = 0;
    do {
        OvlFunc_897_200ad94((unsigned int)npc);
        frame++;
        API_WaitFrames(1);
    } while (frame <= 0x27);
    API_StartTask(OvlFunc_897_200b00c, 0xc80);
    API_Func_8091200(0x10000, 1);
    API_Func_8091254(0x3c);
    API_PlaySound(0x121);
    API_CutsceneWait(30);
    API_StopTask(OvlFunc_897_200a93c);
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    delay = 7;
    do {
        OvlFunc_897_200a84c(0);
        API_WaitFrames(delay);
        OvlFunc_897_200a84c(1);
        API_WaitFrames(delay);
        delay--;
    } while (delay != -1);
    OvlFunc_897_200a84c(0);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_PlaySound(0x6b);
    API_PlaySound(0x3f);
    API_Func_8012330(0x40000, 0x40000, 0x10000);
    API_Func_8091200(0x20119e, 1);
    API_Func_8091254(20);
    API_CutsceneWait(20);
    API_PlaySound(0x6b);
    API_StartTask(OvlFunc_897_200a970, 0xc80);
    API_MapActor_DoAnim(15, 3);
    API_StopTask(OvlFunc_897_200b00c);
    API_WaitFrames(1);
    __Func_8092950(15, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_TravelToWait(15, 0xb8, 0x57);
    API_Func_8092adc(15, 0x4000, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(15, 3);
    API_StopTask(OvlFunc_897_200b00c);
    API_WaitFrames(1);
    __Func_8092950(15, 0);
    API_PlaySound(0x8d);
    API_CutsceneWait(0x64);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_ActorMessage(15, 0);
    API_Func_80925cc(1, 3);
    API_ActorMessage(1, 0);
    API_CutsceneWait(20);
    API_PlaySound(0x121);
    API_Func_8092adc(15, 0x3000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(15, 0);
    API_CutsceneWait(20);
    frame = 0;
    do {
        OvlFunc_897_200ad94((unsigned int)npc);
        frame++;
        API_WaitFrames(1);
    } while (frame <= 0x27);
    API_StartTask(OvlFunc_897_200b00c, 0xc80);
    API_CutsceneWait(20);
    API_Func_8091200(0x7fff, 2);
    API_Func_8091254(0x3c);
    API_WaitFrames(0x64);
    API_Func_8091200(0x7fff, 1);
    API_Func_8091254(0x3c);
    API_WaitFrames(0x3c);
    API_StopTask(OvlFunc_897_200b00c);
    *(int *)(fieldState + 0x40c) = 1;
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_8012350();
    OvlFunc_897_200b000();
    API_SetFlag(0x814);
    API_SetFlag(0x83f);
    API_Func_8091e9c(5);
    API_SetFlag(0x100);
}

void OvlFunc_897_200a820(unsigned int arg0)
{
  unsigned char *r6;
  long long new_var2;
  int new_var;
  unsigned short v;
  new_var2 = 0xfa << 15;
  r6 = __MapActor_GetActor(arg0);
  new_var = new_var2;
  __MapActor_SetPos(arg0, 0xe8 << 16, new_var);
  v = 0x80 << 7;
  *((unsigned short *) (r6 + 6)) = v;
  __Func_8092b08(arg0, 3);
}

void OvlFunc_897_200a84c(int arg0)
{
    extern void __Func_800fe9c(void);

    if (arg0 != 0) {
        API_CopyMapTiles(8, 0x2f, 0x40, 7, 1, 1);
        API_CopyMapTiles(7, 0x30, 0x3f, 8, 2, 1);
        API_CopyMapTiles(7, 0x31, 0x3f, 9, 2, 1);
    } else {
        API_CopyMapTiles(0x38, 0, 0x40, 7, 1, 1);
        API_CopyMapTiles(0x38, 0, 0x3f, 8, 1, 1);
        API_CopyMapTiles(0x38, 0, 0x3f, 9, 2, 1);
        API_CopyMapTiles(0x3a, 0x19, 0x40, 8, 1, 1);
    }
    __Func_800fe9c();
}

void OvlFunc_897_200a8dc(int arg0) {
    extern void __Func_800fe9c(void);

    if (arg0 != 0) {
        API_CopyMapTiles(9, 0x2d, 0x41, 5, 2, 2);
        API_CopyMapTiles(0xb, 0x2e, 0x43, 6, 1, 2);
    } else {
        API_CopyMapTiles(0x59, 2, 0x41, 5, 2, 2);
        API_CopyMapTiles(0x66, 0x20, 0x43, 6, 1, 2);
    }
    __Func_800fe9c();
}

extern unsigned char iwram_3001e40[];
extern void OvlFunc_897_200a84c(int arg0);
extern int _umodsi3_RAM(int a, int b);

void OvlFunc_897_200a93c(void)
{
    if ((*(unsigned int *)iwram_3001e40 & 1) == 0) {
        if ((unsigned int)_umodsi3_RAM(__Random(), 100) > 0x32) {
            OvlFunc_897_200a84c(1);
        } else {
            OvlFunc_897_200a84c(0);
        }
    }
}

extern void OvlFunc_897_200a8dc(int arg0);

void OvlFunc_897_200a970(void)
{
    if ((*(unsigned int *)iwram_3001e40 & 1) == 0) {
        if ((unsigned int)_umodsi3_RAM(__Random(), 100) > 0x32) {
            OvlFunc_897_200a8dc(1);
        } else {
            OvlFunc_897_200a8dc(0);
        }
    }
}

extern void __DeleteFieldActor(int);
extern struct Actor *__CreateActor(int, int, int, int);
extern void __Actor_SetAnim(struct Actor *, int);

extern unsigned char Lm897_3684[] __asm__(".Lm897_3684");

extern unsigned int Lm897_3b40[] __asm__(".Lm897_3b40");

extern unsigned int Lm897_3b10[] __asm__(".Lm897_3b10");

extern void OvlFunc_897_200aba0(void);

struct Entry_3684 {
    unsigned int x;
    unsigned int y;
};

void OvlFunc_897_200a9a4(unsigned int arg0)
{
    unsigned int i;
    unsigned int zero;
    struct Entry_3684 *entry;

    for (i = 0; i <= 15; i++) {
        __DeleteFieldActor(i + 0x10);
    }

    switch (arg0) {
    case 0:
        API_Func_8091200(0x4039d2, 1);
        break;
    case 1:
        API_Func_8091200(0x4049d2, 1);
        break;
    case 2:
        API_Func_8091200(0x404a4e, 1);
        break;
    case 3:
        API_Func_8091200(0x403a52, 1);
        break;
    }

    API_Func_8091254(0x3c);
    API_PlaySound(0xd6);

    zero = i = 0;
    entry = (struct Entry_3684 *)Lm897_3684;

    for (; i <= 9; i++) {
        unsigned int x = entry->x;
        unsigned int z = 0;
        unsigned int y = entry->y;
        struct Actor *actor;
        struct Sprite *sprite;

        switch (arg0) {
        case 0:
            x += 0xe8 << 16;
            z = 0x90 << 16;
            break;
        case 1:
            x += 0xe8 << 16;
            z = 0xe8 << 17;
            break;
        case 2:
            x += 0x2c70000;
            z = 0x90 << 16;
            break;
        case 3:
            x += 0x2c70000;
            z = 0xe8 << 17;
            break;
        }

        Lm897_3b40[i] = zero;
        actor = __CreateActor(0x8e << 1, x, y, z);
        Lm897_3b10[i] = (unsigned int)actor;
        actor->__unk55 = zero;
        sprite = actor->sprite;
        sprite->flags = zero;
        sprite->oam.priority = 1;
        __Actor_SetAnim(actor, 6);
        API_WaitFrames(6);
        entry++;
    }

    if (arg0 == 0) {
        API_MapActor_Emote(0, 0x80 << 1, 0);
        API_MapActor_Emote(1, 0x80 << 1, 0);
    }

    API_WaitFrames(0x14);
    API_StartTask(OvlFunc_897_200aba0, 0xc8 << 4);
    API_PlaySound(0xf6);

    Lm897_3b40[0] = 1;
    API_WaitFrames(6);
    Lm897_3b40[1] = 1;
    API_WaitFrames(6);
    Lm897_3b40[2] = 1;
    API_WaitFrames(6);
    Lm897_3b40[3] = 1;
    API_WaitFrames(6);
    Lm897_3b40[4] = 1;
    API_WaitFrames(6);
    Lm897_3b40[5] = 1;
    API_WaitFrames(6);
    Lm897_3b40[6] = 1;
    API_WaitFrames(6);
    Lm897_3b40[7] = 1;
    API_WaitFrames(6);
    Lm897_3b40[8] = 1;
    API_WaitFrames(6);
    Lm897_3b40[9] = 1;
    API_WaitFrames(6);

    while (1) {
        for (i = 0; i <= 9; i++) {
            if (Lm897_3b40[i] != 0) {
                i = 0xde << 2;
                break;
            }
        }
        if (i != (0xde << 2)) {
            break;
        }
        API_WaitFrames(1);
    }

    API_WaitFrames(0x28);
    API_StopTask(OvlFunc_897_200aba0);
    API_Func_8091200(0x80 << 9, 1);
    API_Func_8091254(0x28);
}
extern unsigned int L3b40[] __asm__(".Lm897_3b40");
extern struct Actor *L3b10[] __asm__(".Lm897_3b10");

void OvlFunc_897_200aba0(void)
{
    unsigned int i;
    unsigned int c;
    struct Actor *p;

    for (i = 0; i < 10; i++) {
        c = L3b40[i];
        if (c != 0) {
            p = L3b10[i];
            if (c <= 8) {
                p->scale.x += -0x1ccc;
                p->scale.y += 0x8000;
                p->pos.y += 0x4ccc;
                p->prevPos.y += 0x4ccc;
            } else {
                p->pos.y += 0x140000;
                p->prevPos.y += 0x140000;
            }
            L3b40[i] = L3b40[i] + 1;
            if (L3b40[i] > 14) {
                L3b40[i] = 0;
            }
        }
    }
}
extern void __Func_8091200(unsigned int arg0, unsigned int arg1);
extern void __Func_8091254(unsigned int arg0);
unsigned int *__Func_8093554(void);
void __Func_80933f8(int, int, int, int);
void __WaitFrames(int);
void __Func_800fe9c(void);

void OvlFunc_897_200ac1c(int arg0, int arg1) {
    int *r5;

    r5 = (int *)__Func_8093554();
    arg1 <<= 16;
    arg0 <<= 16;
    __Func_80933f8(arg0, -1, arg1, 1);
    __Func_8091200(0, 0);
    __Func_8091254(0x14);
    __WaitFrames(0x28);
    *(int *)((char *)r5 + 8) = arg0;
    *(int *)((char *)r5 + 0x10) = arg1;
    *(int *)((char *)r5 + 0x38) = 0x80 << 24;
    *(int *)((char *)r5 + 0x40) = 0x80 << 24;
    *(int *)((char *)r5 + 0x24) = 0;
    *(int *)((char *)r5 + 0x2c) = 0;
    __WaitFrames(5);
    __Func_800fe9c();
    __WaitFrames(5);
    __Func_8091200(0x80 << 9, 0);
    __Func_8091254(0x14);
    __WaitFrames(0x1e);
}
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_897_200ac9c(void)
{
    __Func_8010704(0xe, 8, 1, 1, 0xa, 0);
    __Func_8010704(0xe, 0x1c, 1, 1, 0xb, 0);
    __Func_8010704(0x2c, 8, 1, 1, 0xc, 0);
    __Func_8010704(0x2c, 0x1c, 1, 1, 0xd, 0);
    __Func_8010704(0xd, 8, 1, 1, 0xe, 8);
    __Func_8010704(0xd, 0x1c, 1, 1, 0xe, 0x1c);
    __Func_8010704(0x2b, 8, 1, 1, 0x2c, 8);
    __Func_8010704(0x2b, 0x1c, 1, 1, 0x2c, 0x1c);
}

extern void __PlaySound(unsigned int arg0);
extern void __CutsceneWait(unsigned int arg0);
extern unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_897_200aeb0(unsigned int a);

void OvlFunc_897_200ad48(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    if (arg0 == 1) {
        __PlaySound(0x9a << 1);
        __Func_8091200(0x203a52, 1);
    } else {
        __PlaySound(0x121);
        __Func_8091200(0x80 << 9, 1);
    }
    __Func_8091254(arg1);
    if (arg2 != 0) {
        __CutsceneWait(arg2);
    }
}
void OvlFunc_897_200ad94(unsigned int arg0)
{
    if (iwram_3001e40__a2 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40__a2 & 0xf) == 0) {
        OvlFunc_897_200aeb0(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a3 __asm__("iwram_3001e40");

void OvlFunc_897_200add0(arg0) unsigned int arg0;
{
    if (iwram_3001e40__a3 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a3 >> 1, 6));
    }
    if ((iwram_3001e40__a3 & 0xf) == 0) {
        OvlFunc_897_200aeb0(arg0);
    }
}

extern int __sin(int angle);

void OvlFunc_897_200ae0c(struct Actor *actor)
{
    struct Actor *anchor;
    int next;
    int timer;
    int s;

    next = (unsigned short)actor->waveCounter + 1;
    anchor = actor->linkedActor;
    actor->waveCounter = next;
    timer = (short)next;
    if (timer > 0x1f) {
        API_DeleteActor((int)actor);
    } else {
        s = __sin(timer << 10);
        actor->scale.x = s;
        actor->scale.y = s;
        actor->pos.x = anchor->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = anchor->pos.z + (0x10000 - s) * 5 + 0x80000;
    }
}

void OvlFunc_897_200ae5c(struct Actor *actor) {
    struct Actor *target;
    s32 sinVal;

    target = actor->linkedActor;

    if (++actor->waveCounter > 0x1f) {
        API_DeleteActor((int)actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = -sinVal;
        actor->pos.x = target->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = target->pos.z - (0x10000 - sinVal) * 5 + 0x100000;
    }
}

extern void OvlFunc_897_200ae0c(struct Actor *actor);
extern void OvlFunc_897_200ae5c(struct Actor *actor);

struct SpriteOamBitView897 {
    void *dest;
    u16 posY : 8;
    u16 affineMode : 2;
    u16 objMode : 2;
    u16 mosaic : 1;
    u16 bpp : 1;
    u16 shape : 2;
    u16 posX : 9;
    u16 affineParam : 5;
    u16 size : 2;
    u16 tileNum : 10;
    u16 priority : 2;
    u16 palette : 4;
};

struct E30SlotView897 {
    unsigned char pad[0x46];
    u16 slot;
};

void OvlFunc_897_200aeb0(unsigned int arg0)
{
    extern struct E30SlotView897 *iwram_3001f30_view __asm__("iwram_3001f30");
    extern struct SpriteSlot gSpriteSlots[];
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern void __Func_8003f3c(int);
    extern struct Actor *EruptionAeb0_GetActor(int) __asm__("__MapActor_GetActor");

    struct E30SlotView897 *e30 = iwram_3001f30_view;
    struct Actor *parent = (struct Actor *)arg0;
    struct Actor *actors[2];
    int i;

    API_PlaySound(0x92 << 1);

    for (i = 0; i <= 1; i++) {
        struct Actor *actor = API_CreateActor(0x1a, parent->pos.x, parent->pos.y, parent->pos.z);
        actors[i] = actor;
        if (actor != NULL) {
            struct Sprite *sprite;

            actor->floorPos = parent->floorPos;
            sprite = actor->sprite;
            actor->__unk55 = 0;
            actor->waveCounter = 0;
            actor->linkedActor = parent;
            if (sprite != NULL) {
                struct SpriteOamBitView897 *oam = (struct SpriteOamBitView897 *)&sprite->oam;

                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = e30->slot;
                sprite->flags1D.bit0 = 1;
                oam->tileNum = gSpriteSlots[sprite->slot].vramOffset >> 5;
                oam->bpp = 0;
                oam->shape = 1;
                oam->size = 2;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    actors[0]->update = OvlFunc_897_200ae5c;
    ((struct SpriteOamBitView897 *)&actors[0]->sprite->oam)->priority =
        ((struct SpriteOamBitView897 *)&EruptionAeb0_GetActor(0xf)->sprite->oam)->priority;
    ((struct SpriteOamBitView897 *)&actors[1]->sprite->oam)->priority =
        ((struct SpriteOamBitView897 *)&EruptionAeb0_GetActor(0xf)->sprite->oam)->priority;
    actors[1]->update = (actorfun_t)OvlFunc_897_200ae0c;
    actors[1]->flags = 2;
}


extern void __Func_8096fb0(int a, int b);

void OvlFunc_897_200aff0(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_897_200b000(void) {
    __Func_8097194();
}

extern void __MapActor_GetActor(int);

void OvlFunc_897_200b00c(void) {
    __MapActor_GetActor(0xf);
    OvlFunc_897_200add0();
}

struct CS897_FloatingActor {
    struct Actor *actor;
    int savedX, savedY, savedZ;
    int phaseX, phaseY, phaseZ;
    int scale, scaleStep;
    unsigned char tick, hiddenFrames;
    unsigned char pad[2];
};

struct CS897_FloatingState {
    struct CS897_FloatingActor actors[10];
    unsigned short count;
};

extern struct CS897_FloatingState *CS897_Alloc(int, unsigned int) __asm__("__galloc_ewram");
extern unsigned int CS897_Random(void) __asm__("__Random");
extern unsigned int _udivsi3_RAM(unsigned int, unsigned int);
extern int CS897_Sin(int) __asm__("__sin");
extern int CS897_Cos(int) __asm__("__cos");
extern unsigned char CS897_Ranges[] __asm__(".Lm897_3a0c");
extern signed char CS897_Directions[] __asm__(".Lm897_3a48");
extern unsigned char CS897_PhaseFactors[] __asm__(".Lm897_3a2a");
extern int CS897_MaxScale[] __asm__(".Lm897_3a68");
extern int CS897_ScaleSteps[] __asm__(".Lm897_3a90");

void OvlFunc_897_200b01c(void)
{
    struct CS897_FloatingState *state;
    struct CS897_FloatingActor *entry;
    struct Actor *actor;
    unsigned int index;
    int phaseX, phaseY, phaseZ, scale, scaleStep;
    unsigned char tick, hiddenFrames;
    int savedX, savedY, savedZ;
    unsigned int stepX, stepY, stepZ;
    unsigned int randomX, randomY, randomZ;
    int x, y, z;
    state = CS897_Alloc(0x21, 0x194);
    entry = state->actors;
    for (index = 0; index != state->count; index++, entry++) {
        actor = entry->actor;
        phaseX = entry->phaseX;
        phaseY = entry->phaseY;
        phaseZ = entry->phaseZ;
        scale = entry->scale;
        scaleStep = entry->scaleStep;
        hiddenFrames = entry->hiddenFrames;
        savedX = entry->savedX;
        savedY = entry->savedY;
        savedZ = entry->savedZ;
        tick = entry->tick;
        tick--;
        if (tick == 0) {
            tick = 3;
            if (hiddenFrames == 0) {
                scale += scaleStep;
                if (scale >= CS897_MaxScale[index])
                    scaleStep = -CS897_ScaleSteps[index];
                else if (scale <= 0x1999) {
                    scaleStep = CS897_ScaleSteps[index];
                    scale = 0x1999;
                    hiddenFrames = 24;
                    savedX = actor->pos.x;
                    savedY = actor->pos.y;
                    savedZ = actor->pos.z;
                    actor->pos.x = 0;
                    actor->pos.y = 0;
                    actor->pos.z = 0;
                }
                actor->scale.x = scale;
                actor->scale.y = scale;
            }
            randomX = (CS897_Random() * CS897_Ranges[index * 3]) >> 16;
            randomY = (CS897_Random() * CS897_Ranges[index * 3 + 1]) >> 16;
            randomZ = (CS897_Random() * CS897_Ranges[index * 3 + 2]) >> 16;
            if (randomX != 0)
                stepX = _udivsi3_RAM(randomX << 16, 1000);
            else
                stepX = 0;
            if (randomY != 0)
                stepY = _udivsi3_RAM(randomY << 16, 1000);
            else
                stepY = 0;
            if (randomZ != 0)
                stepZ = _udivsi3_RAM(randomZ << 16, 1000);
            else
                stepZ = 0;
            if (CS897_Directions[index * 3] == 1)
                phaseX += stepX;
            else {
                phaseX -= stepX;
                if (CS897_Directions[index * 3] != -1)
                    phaseX = 0;
            }
            if (CS897_Directions[index * 3 + 1] == 1)
                phaseY += stepY;
            else {
                phaseY -= stepY;
                if (CS897_Directions[index * 3 + 1] != -1)
                    phaseY = 0;
            }
            if (CS897_Directions[index * 3 + 2] == 1)
                phaseZ += stepZ;
            else {
                phaseZ -= stepZ;
                if (CS897_Directions[index * 3 + 2] != -1)
                    phaseZ = 0;
            }
            x = 2 * CS897_Sin(phaseX * CS897_PhaseFactors[index * 3]);
            y = 2 * CS897_Sin(phaseY * CS897_PhaseFactors[index * 3 + 1]);
            z = 2 * CS897_Cos(phaseZ * CS897_PhaseFactors[index * 3 + 2]);
            if (hiddenFrames != 0) {
                savedX += x;
                savedY += y;
                savedZ += z;
                hiddenFrames--;
                if (hiddenFrames == 0) {
                    actor->pos.x = savedX;
                    actor->prevPos.x = savedX;
                    if (stepY != 0) {
                        actor->pos.y = savedY;
                        actor->prevPos.y = savedY;
                    }
                    actor->pos.z = savedZ;
                    actor->prevPos.z = savedZ;
                }
            } else {
                actor->pos.x += x;
                actor->prevPos.x = actor->pos.x;
                if (stepY != 0) {
                    actor->pos.y += y;
                    actor->prevPos.y = actor->pos.y;
                }
                actor->pos.z += z;
                actor->prevPos.z = actor->pos.z;
            }
        }
        entry->phaseX = phaseX;
        entry->phaseY = phaseY;
        entry->phaseZ = phaseZ;
        entry->scale = scale;
        entry->scaleStep = scaleStep;
        entry->hiddenFrames = hiddenFrames;
        entry->savedX = savedX;
        entry->savedY = savedY;
        entry->savedZ = savedZ;
        entry->tick = tick;
    }
}





extern void *__galloc_ewram(unsigned int, unsigned int);
extern void __Func_800c548(struct Actor *, int);
extern int __StartTask(void (*)(void), unsigned int);
extern void OvlFunc_897_200b01c(void);
extern int L3a68[] __asm__(".Lm897_3a68");
extern int L3a90[] __asm__(".Lm897_3a90");
extern struct Actor *Eruption_GetActor(int) __asm__("__MapActor_GetActor");

void OvlFunc_897_200b30c(unsigned int arg0, unsigned int arg1)
{
    struct CS897_FloatingState *state;
    struct CS897_FloatingActor *entry;
    unsigned int i;
    struct Actor *actor;

    state = (struct CS897_FloatingState *)__galloc_ewram(0x21, sizeof(*state));
    entry = state->actors;
    DMA3_FILL(state, 0, sizeof(*state));

    if (arg1 > 10) {
        arg1 = 10;
    }

    for (i = 0; i != arg1; i++, entry++, arg0++) {
        actor = Eruption_GetActor(arg0);
        actor->sprite->flags = 0;
        entry->actor = actor;
        actor->__unk55 = 0;
        __Func_800c548(Eruption_GetActor(arg0), 1);
        entry->scale = L3a68[i];
        entry->scaleStep = -L3a90[i];
        entry->tick = 3;
    }

    state->count = arg1;
    __StartTask(OvlFunc_897_200b01c, 0xc80);
}

INCLUDE_ASM("asm/maps/elemental_stars_eruption/elemental_stars_eruption_data.s");

INCLUDE_ASM("asm/maps/elemental_stars_eruption/imports.s");
