#include "api.h"
#include "actor.h"

void OvlFunc_956_200876c(void)
{
    extern unsigned char CS956_State[] __asm__("gState");
    extern unsigned int CS956_Keys __asm__("gKeyHeld");
    extern unsigned short CS956_Directions[] __asm__(".Lm956_4c38");
    extern struct Actor *CS956_GetActor(unsigned int) __asm__("__MapActor_GetActor");
    extern void CS956_Translate(int, unsigned int, vec3_t *) __asm__("__vec3_translate");
    extern void CS956_SetAnim(struct Actor *, int) __asm__("__Actor_SetAnim");
    extern void CS956_WaitMovement(struct Actor *) __asm__("__Actor_WaitMovement");
    extern unsigned char *CS956_Alloc(int, int) __asm__("__galloc_ewram");
    extern void CS956_CameraTarget(void *, struct Actor *) __asm__("__Camera_SetTarget");
    extern int OvlFunc_956_2008714(int, int);
    extern void OvlFunc_common1_2060(void);
    extern void OvlFunc_956_20085e0(void);
    struct Actor *leader;
    struct Actor *block;
    int *leaderIdField;
    unsigned int stateBase;
    int leaderId;
    int x, z, nextX;
    int dx;
    int distance;
    int animation, leaderStep;
    int direction;
    unsigned char *scene;
    vec3_t projected;

    stateBase = (unsigned int)CS956_State;
    leaderIdField = (int *)(stateBase + 0x1f4);
    leader = CS956_GetActor(*leaderIdField);
    block = CS956_GetActor(31);
    direction = CS956_Directions[leader->facing >> 13];
    distance = 0;
    leaderId = *leaderIdField;
    projected.x = (leader->pos.x & ~0xfffff) + 0x80000;
    projected.y = leader->pos.y;
    projected.z = (leader->pos.z & ~0xfffff) + 0x80000;
    CS956_Translate(0x100000, direction, &projected);
    x = block->pos.x;
    z = block->pos.z;
    dx = projected.x - x;
    if (dx < 0) dx = x - projected.x;
    if (dx <= 0x80000 && ((projected.z - z >= 0) ? projected.z - z : z - projected.z) <= 0x200000) {
        if (CS956_Keys & 0x20) {
            animation = 2;
            leaderStep = -8;
            do {
                nextX = x - 0x100000;
                if (OvlFunc_956_2008714(nextX, z) == 0) {
                    ++distance;
                    x = nextX;
                } else {
                    break;
                }
            } while (1);
        } else if (CS956_Keys & 0x10) {
            animation = 3;
            leaderStep = 8;
            do {
                nextX = x + 0x100000;
                if (OvlFunc_956_2008714(nextX, z) == 0) {
                    ++distance;
                    x = nextX;
                } else {
                    break;
                }
            } while (1);
        } else {
            return;
        }
        if (distance == 0) return;
        API_Func_8010704(0x4a, 8, 1, 4, block->pos.x >> 20, 9);
        API_Func_8010704(0x78, 0x3c, 8, 5, 0x4a, 0x3c);
        API_CutsceneStart();
        API_MapActor_SetAnim(leaderId, 8);
        API_CutsceneWait(6);
        block->speed = 0x8000;
        block->accel = 0x3333;
        CS956_SetAnim(block, animation);
        API_Actor_TravelTo(block, x, 0, z);
        API_CutsceneWait(6);
        API_MapActor_SetAnim(leaderId, 2);
        scene = CS956_Alloc(27, 0xccc);
        CS956_CameraTarget(*(void **)(scene + 0x1e0), block);
        API_MapActor_SetSpeed(leaderId, 0x8000, 0x3333);
        API_PlaySound(0xef);
        CS956_SetAnim(leader, 2);
        API_Actor_TravelTo(leader, leader->pos.x + (distance * leaderStep) * 0x10000, 0, leader->pos.z);
        CS956_WaitMovement(leader);
        CS956_SetAnim(leader, 1);
        CS956_WaitMovement(block);
        if (x >= 0x5300000) {
            API_SetFlag(0x369);
            API_MapActor_SetAnim(31, 3);
            API_MapActor_TravelBy(31, 18, 6);
            API_CutsceneWait(30);
            CS956_SetAnim(block, 8);
            CS956_WaitMovement(block);
            block->flags = 2;
            API_Func_8010704(0x56, 10, 1, 2, 0x54, 10);
            API_Func_8010704(0x56, 9, 1, 1, 0x54, 12);
            API_PlaySound(0x120);
            API_PlaySound(0xf0);
        } else {
            CS956_SetAnim(block, 1);
            API_PlaySound(0x120);
            API_PlaySound(0xd5);
            API_Func_8010704(0x55, 9, 1, 4, x >> 20, 9);
            API_Func_8010704(0x55, 9, 1, 4, x >> 20, 0x3d);
        }
        API_CutsceneWait(15);
        API_CutsceneEnd();
    } else {
        OvlFunc_common1_2060();
        OvlFunc_956_20085e0();
    }
}
