#include "api.h"
#include "actor.h"
static inline void AltinCollapseByte(unsigned char *p,int value) { *p = value; }
static inline void AltinCollapseHalf(unsigned short *p,int value) { *p = value; }
static inline void AltinCollapseFacing(unsigned char *a,int value) { *(unsigned short *)(a+6) = value; }

void OvlFunc_932_2008ec0(int delay)
{

    extern void OvlFunc_932_200abe0(void);
    extern unsigned char gScript_932__0200bd78[];
    extern unsigned char gScript_932__0200bdec[];
    extern int AltinCollapseActor(int) __asm__("__MapActor_GetActor");
    extern void __PlayMapMusic(void);
    struct Actor *isaac;
    struct Actor *movingActor;
    struct Actor *effectActor;
    struct Actor *obstacle;
    int flagValue1;
    int flagValue2;
    int flagValue3;
    int flagValue4;
    unsigned char *actor;
    int resetMode;
    int collapseX;

    isaac = (struct Actor *)AltinCollapseActor(0);
    movingActor = (struct Actor *)AltinCollapseActor(8);
    effectActor = (struct Actor *)AltinCollapseActor(9);
    obstacle = (struct Actor *)AltinCollapseActor(10);
    API_MapActor_Surprise(0, 0x102);
    API_CutsceneWait(0x28);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x3100000, -1, 0x740000, 1);
    API_MapActor_SetSpeed(0, 0x20000, 0x10000);
    API_MapActor_SetAnim(0, 6);
    API_MapActor_TravelToWait(0, 0x318, 0x8c);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(0, 0xc000, 0x64);
    API_MapActor_Emote(0, 0x101, 0x3c);
    API_PlaySound(0xb7);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_CutsceneWait(20);
    effectActor->scale.x = 0x13333;
    effectActor->scale.y = 0x13333;
    AltinCollapseByte(&effectActor->flags, 2 | effectActor->flags);
    resetMode = 0;
    effectActor->update = (actorfun_t *)OvlFunc_932_2008098;
    API_MapActor_SetAnim(8, 4);
    movingActor->bounce = 0x8000;
    collapseX = 0x3120000;
    movingActor->pos.x = collapseX;
    movingActor->pos.y = 0x200000;
    movingActor->pos.z = 0x5a0000;
    movingActor->scale.x = 0x20000;
    movingActor->scale.y = 0x20000;
    API_CutsceneWait(10);
    API_PlaySound(0xb7);
    API_Func_8012330(0x40000, 0x20000, 0x10000);
    API_CutsceneWait(20);
    obstacle->pos.x = (unsigned int)obstacle->pos.x + 0xe0000;
    obstacle->pos.y = (obstacle->pos.y + 0xfff80000);
    AltinCollapseHalf((unsigned short *)((unsigned char *)obstacle->sprite + 30), 0xc000);
    API_PlaySound(0x6b);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_MapActor_Emote(0, 0x102, 0x50);
    API_PlaySound(0x37);
    API_Func_8012330(0x10000, 0x30000, 0x10000);
    API_Func_8092b08(8, 0);
    API_Func_8092b08(0, 0);
    API_MapActor_Surprise(0, 0x101);
    API_MapActor_SetSpeed(0, 0x28000, 0x14000);
    AltinCollapseHalf((unsigned short *)&isaac->waveCounter, resetMode);
    API_MapActor_SetBehavior(0, (int)gScript_932__0200bdec);
    flagValue1 = API_GetFlag(0x205);
    if (flagValue1 != 0) {
        API_MapActor_SetPos(1, 0x36e0000, 0x2100000);
        actor = (unsigned char *)AltinCollapseActor(1);
        AltinCollapseFacing(actor, 0x5000);
    }
    API_Func_80933d4(0x14000, 0x2800);
    API_Func_80933f8(collapseX, -1, 0x22c0000, 1);
    API_CutsceneWait(delay);
    API_Func_8092b08(8, 1);
    API_MapActor_SetSpeed(8, 0x195c2, 0xcae1);
    AltinCollapseHalf((unsigned short *)&movingActor->waveCounter, resetMode);
    API_MapActor_SetBehavior(8, (int)gScript_932__0200bd78);
    do {
        API_WaitFrames(1);
    } while (isaac->waveCounter == 0);
    API_MapActor_Surprise(0, 0);
    do {
        API_WaitFrames(1);
    } while (movingActor->waveCounter == 0);
    API_Func_8092b08(0, 2);
    actor = (unsigned char *)AltinCollapseActor(0);
    actor += 0x23;
    AltinCollapseByte(actor, 1 | *actor);
    API_PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    effectActor->pos.x = 0x3120000;
    effectActor->update = 0;
    effectActor->pos.z = 0x26a0000;
    effectActor->pos.y = 0xffc00000;
    API_MapActor_SetSpeed(8, 0x19999, 0xcccc);
    movingActor->bounce = 0x1999;
    movingActor->gravity = 0x3333;
    movingActor->motion.y = 0x40000;
    API_MapActor_TravelToWait(8, 0x312, 0x25c);
    API_MapActor_SetSpeed(8, 0x33333, 0x19999);
    API_MapActor_TravelTo(8, 0x312, 0x284);
    API_CutsceneWait(15);
    API_Func_8012330(0x50000, 0x70000, 0x10000);
    API_CopyMapTiles(25, 0x24, 0x2b, 0x24, 11, 9);
    API_Func_8010704(25, 0x23, 10, 5, 0x2b, 0x23);
    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_SetPos(9, 0, 0);
    API_StartTask(OvlFunc_932_200abe0, 0xc80);
    API_CutsceneWait(0x50);
    API_StopTask(OvlFunc_932_200abe0);
    API_CutsceneWait(0x3c);
    API_PlaySound(17);
    API_Func_8012330(-1, -1, 0xe666);
    API_CutsceneWait(0x78);
    flagValue2 = API_GetFlag(0x205);
    if (flagValue2 != 0) {
        API_MapActor_SetSpeed(1, 0x10000, 0x8000);
        API_MapActor_TravelToAnim(1, 0x338, 0x22e);
    }
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);
    API_MapActor_TravelToAnimWait(0, 0x356, 0x248);
    flagValue3 = API_GetFlag(0x205);
    if (flagValue3 != 0) {
        API_MapActor_SetAnim(1, 1);
        API_Func_8092adc(1, 0x4000, 0);
    }
    API_Func_8092adc(0, 0x6000, 0x28);
    API_MapActor_Emote(1, 0x102, 0);
    API_MapActor_Emote(0, 0x102, 0x3c);
    API_Func_80933f8(0x3140000, 0xffc00000, 0x2620000, 1);
    API_Func_8093530();
    API_PlaySound(0x94);
    API_CutsceneWait(0xf0);
    flagValue4 = API_GetFlag(0x205);
    if (flagValue4 != 0) {
        API_Func_80933d4(0x40000, 0x8000);
        API_Func_80933f8(0x3560000, 0, 0x2480000, 1);
        API_Func_8093530();
        API_MapActor_TravelToAnimWait(1, 0x348, 0x228);
        API_MapActor_TravelToAnimWait(1, 0x356, 0x232);
        API_MapActor_SetAnim(1, 2);
        actor = (unsigned char *)AltinCollapseActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
    }
    __PlayMapMusic();
    API_SetFlag(0x908);
}
