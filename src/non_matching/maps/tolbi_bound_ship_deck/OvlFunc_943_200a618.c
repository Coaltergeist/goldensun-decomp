#include "api.h"

__asm__(".equ .LShipTransition, 0x202\n.equ .LShipCameraMode, 0\n.equ .LShipBattleArea, 0x6f\n.equ .LShipReturnArea, 0x6d");
extern unsigned char ShipTransition[] __asm__(".LShipTransition");
extern unsigned char ShipCameraMode[] __asm__(".LShipCameraMode");
extern unsigned char ShipBattleArea[] __asm__(".LShipBattleArea");
extern unsigned char ShipReturnArea[] __asm__(".LShipReturnArea");

struct ShipBattleStateView {
    unsigned char prefix[0x1c4];
    unsigned short destinationArea, destinationRoom;
    unsigned char middle[0x22b - 0x1c8];
    unsigned char field22b;
};
static inline void ShipHalf(unsigned short *field, int value) { *field = value; }
static inline void ShipByte(unsigned char *field, int value) { *field = value; }

void OvlFunc_943_200a618(void)
{
    extern unsigned char CS_943_5418[] __asm__(".Lm943_5418");
    extern void OvlFunc_943_20088c0(int *);
    extern struct ShipBattleStateView ShipBattleState __asm__("gState");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void ShipBattleSpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
    extern void __Func_8091f90(unsigned short, unsigned short);
    extern void __LoadFieldActors(void *);
    extern int ShipBattleActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_943_2008bb8(void);
    extern void OvlFunc_943_200ba00(int, int);
    extern void __StartMapBattle(int, int);
    unsigned char *actor;

    API_CutsceneStart();
    __LoadFieldActors(CS_943_5418);
    API_WaitFrames(1);
    API_SetCameraTarget(25, 1);
    API_WaitFrames(1);
    API_MapActor_SetAnim(21, 5);
    actor = (unsigned char *)ShipBattleActor(21);
    ShipBattleSpriteFlags(actor, 0);
    API_MapActor_SetPos(0, 0, 0);
    actor = (unsigned char *)ShipBattleActor(0);
    ShipHalf((unsigned short *)(actor + 6), 0x4000);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = (int)ShipTransition;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(20);
    OvlFunc_943_2008bb8();
    API_CutsceneWait(10);
    API_MapActor_SetPos(0, 0xd80000, 0x24a0000);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0xd8, 0x256);
    API_CutsceneWait(20);
    OvlFunc_943_200ba00(0, 0x6000);
    API_MapActor_Jump(0, 2, 10);
    API_MapActor_SetSpeed(0, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(0, 0xc2, 0x270);
    API_PlaySound(0xb5);
    API_Func_8012330(0x40000, 0x40000, 0x10000);
    API_CutsceneWait(20);
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0xc000, 20);
    actor = (unsigned char *)ShipBattleActor(25);
    actor += 0x55;
    ShipByte(actor, (int)ShipCameraMode);
    API_MapActor_SetSpeed(25, 0x20000, 0x10000);
    API_MapActor_TravelTo(25, 0xd8, 0x264);
    API_PlaySound(0x95);
    API_Func_8092b08(22, 2);
    API_MapActor_SetAnim(22, 5);
    actor = (unsigned char *)ShipBattleActor(22);
    *(int *)(actor + 0x28) = 0x80000;
    *(int *)(actor + 0x48) = 0xb333;
    *(int *)(actor + 0x18) = 0x1a000;
    *(int *)(actor + 0x1c) = 0x1a000;
    *(void (**)(int *))(actor + 0x6c) = OvlFunc_943_20088c0;
    *(int *)(actor + 0x44) = 0x8000;
    API_MapActor_SetSpeed(22, 0x60000, 0x30000);
    API_MapActor_TravelToWait(22, 0xb6, 0x26a);
    actor = (unsigned char *)ShipBattleActor(22);
    ShipBattleSpriteFlags(actor, 0);
    OvlFunc_943_200ba00(0, 0xa000);
    API_MapActor_Jump(0, 6, 0x50);
    API_MapActor_TravelTo(25, 0xe8, 0x234);
    API_MapActor_TravelToAnimWait(0, 0xcc, 0x262);
    API_MapActor_TravelToAnimWait(0, 0xd0, 0x256);
    API_MapActor_TravelToAnimWait(0, 0xf8, 0x256);
    actor = (unsigned char *)ShipBattleActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = (unsigned char *)ShipBattleActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    actor = (unsigned char *)ShipBattleActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(3, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    API_MapActor_TravelToAnim(0, 0xfa, 0x248);
    API_MapActor_TravelToAnim(1, 0xf0, 0x258);
    API_MapActor_TravelToAnim(2, 0xfe, 0x258);
    API_MapActor_TravelToAnimWait(3, 0xf8, 0x268);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(2, 1);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 20);
    API_PlaySound(0x95);
    API_CutsceneWait(0x28);
    API_MapActor_Surprise(0, 0x102);
    API_MapActor_Surprise(1, 0x102);
    API_MapActor_Surprise(2, 0x102);
    API_MapActor_Surprise(3, 0x102);
    API_CutsceneWait(0x3c);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(3, 0xcccc, 0x6666);
    API_MapActor_TravelToAnim(0, 0xf8, 0x234);
    API_MapActor_TravelToAnim(1, 0xf8, 0x234);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnim(2, 0xf8, 0x234);
    API_MapActor_TravelToAnim(3, 0xf8, 0x234);
    API_CutsceneWait(20);
    ShipBattleState.destinationArea = (int)ShipBattleArea;
    ShipBattleState.destinationRoom = 30;
    ShipBattleState.field22b = 3;
    __Func_8091f90((int)ShipReturnArea, 16);
    __StartMapBattle(0x3e, 3);
    API_CutsceneEnd();
}
