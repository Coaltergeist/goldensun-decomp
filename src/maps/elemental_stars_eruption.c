/* rom_791794 (overlay file 897): consolidated TU — elemental_stars_eruption map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

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
INCLUDE_ASM("asm/maps/elemental_stars_eruption/OvlFunc_897_2008e30.s");

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

INCLUDE_ASM("asm/maps/elemental_stars_eruption/OvlFunc_897_2008f64.s");

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

INCLUDE_ASM("asm/maps/elemental_stars_eruption/OvlFunc_897_20090c4.s");
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
INCLUDE_ASM("asm/maps/elemental_stars_eruption/OvlFunc_897_2009410.s");

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
INCLUDE_ASM("asm/maps/elemental_stars_eruption/OvlFunc_897_200aba0.s");
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

void OvlFunc_897_200ae0c(unsigned char *actor)
{
    unsigned char *anchor;
    short timer;
    int s;

    anchor = *(unsigned char **)(actor + 0x68);
    timer = ++*(short *)(actor + 0x64);
    if (timer > 0x1f) {
        API_DeleteActor((int)actor);
    } else {
        s = __sin(timer << 10);
        *(int *)(actor + 0x18) = s;
        *(int *)(actor + 0x1c) = s;
        *(int *)(actor + 0x8) = *(int *)(anchor + 0x8);
        *(int *)(actor + 0xc) += 0x10000;
        *(int *)(actor + 0x10) = *(int *)(anchor + 0x10) + (0x10000 - s) * 5 + 0x80000;
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

INCLUDE_ASM("asm/maps/elemental_stars_eruption/OvlFunc_897_200aeb0.s");

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

INCLUDE_ASM("asm/maps/elemental_stars_eruption/OvlFunc_897_200b01c.s");
INCLUDE_ASM("asm/maps/elemental_stars_eruption/OvlFunc_897_200b30c.s");
INCLUDE_ASM("asm/maps/elemental_stars_eruption/elemental_stars_eruption_data.s");

INCLUDE_ASM("asm/maps/elemental_stars_eruption/imports.s");
