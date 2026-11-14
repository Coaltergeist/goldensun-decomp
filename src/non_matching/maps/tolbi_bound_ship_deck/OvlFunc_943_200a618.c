/*
 * Exact size match (0x3bc == 0x3bc, 948/956 bytes identical).
 * Remaining diff at +0x36e..+0x374:
 *   ref: mov r3, #30; strh r3, [r1]; add r0, #0x67; add r2, r0
 *   new: add r0, #0x67; mov r3, #30; add r2, r0; strh r3, [r1]
 * In sched1, ldr =0x22b for field22b has higher priority than mov #30 for
 * destinationRoom, placing add r0, #0x67 ahead of mov r3, #30 in sched2's
 * equal-priority LUID tiebreaker unless field22b = 3 is emitted inside a
 * statement-macro loop note (do { ... } while (0)).
 */
#include "api.h"
#include "actor.h"

__asm__(".equ .LShipBattleArea, 0x6f\n.equ .LShipReturnArea, 0x6d");
extern unsigned char ShipBattleArea[] __asm__(".LShipBattleArea");
extern unsigned char ShipReturnArea[] __asm__(".LShipReturnArea");

struct ShipBattleStateView {
    unsigned char prefix[0x1c4];
    unsigned short destinationArea, destinationRoom;
    unsigned char middle[0x22b - 0x1c8];
    unsigned char field22b;
};

void OvlFunc_943_200a618(void)
{
    extern unsigned char CS_943_5418[] __asm__(".Lm943_5418");
    extern void OvlFunc_943_20088c0(int *);
    extern struct ShipBattleStateView ShipBattleState __asm__("gState");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void ShipBattleSpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
    extern void __Func_8091f90(int, int);
    extern void __LoadFieldActors(void *);
    extern struct Actor *ShipBattleActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_943_2008bb8(void);
    extern void OvlFunc_943_200ba00(int, int);
    extern void __StartMapBattle(int, int);
    struct Actor *actor;

    API_CutsceneStart();
    __LoadFieldActors(CS_943_5418);
    API_WaitFrames(1);
    API_SetCameraTarget(25, 1);
    API_WaitFrames(1);
    API_MapActor_SetAnim(21, 5);
    actor = ShipBattleActor(21);
    ShipBattleSpriteFlags(actor, 0);
    API_MapActor_SetPos(0, 0, 0);
    ShipBattleActor(0)->facing = 0x4000;
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x202;
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
    ShipBattleActor(25)->__unk55 = 0;
    API_MapActor_SetSpeed(25, 0x20000, 0x10000);
    API_MapActor_TravelTo(25, 0xd8, 0x264);
    API_PlaySound(0x95);
    API_Func_8092b08(22, 2);
    API_MapActor_SetAnim(22, 5);
    actor = ShipBattleActor(22);
    actor->motion.y = 0x80000;
    actor->gravity = 0xb333;
    actor->scale.x = 0x1a000;
    actor->scale.y = 0x1a000;
    actor->update = (actorfun_t)OvlFunc_943_20088c0;
    actor->bounce = 0x8000;
    API_MapActor_SetSpeed(22, 0x60000, 0x30000);
    API_MapActor_TravelToWait(22, 0xb6, 0x26a);
    actor = ShipBattleActor(22);
    ShipBattleSpriteFlags(actor, 0);
    OvlFunc_943_200ba00(0, 0xa000);
    API_MapActor_Jump(0, 6, 0x50);
    API_MapActor_TravelTo(25, 0xe8, 0x234);
    API_MapActor_TravelToAnimWait(0, 0xcc, 0x262);
    API_MapActor_TravelToAnimWait(0, 0xd0, 0x256);
    API_MapActor_TravelToAnimWait(0, 0xf8, 0x256);
    actor = ShipBattleActor(0);
    if (actor != NULL) {
        API_MapActor_SetPos(1, actor->pos.x, actor->pos.z);
    }
    actor = ShipBattleActor(0);
    if (actor != NULL) {
        API_MapActor_SetPos(2, actor->pos.x, actor->pos.z);
    }
    actor = ShipBattleActor(0);
    if (actor != NULL) {
        API_MapActor_SetPos(3, actor->pos.x, actor->pos.z);
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
