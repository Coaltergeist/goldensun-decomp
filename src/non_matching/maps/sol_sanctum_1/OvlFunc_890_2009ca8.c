#include "api.h"

static inline void Sanctum890_Byte(unsigned char *p, int value) { *p = value; }

void OvlFunc_890_2009ca8(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_8092950(unsigned int, unsigned int);
    extern int Sanctum890_GetActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_890_200a5fc(unsigned int, unsigned int);
    unsigned char * risingActor;
    unsigned char * sprite;
    int frame;
    unsigned char * map;
    int flagValue1;
    int flagValue2;
    int flagValue3;

    flagValue1 = API_GetFlag(0x811);
    if (flagValue1 == 0) return;
    API_CutsceneStart();
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x11f0000, -1, 0x940000, 1);
    API_MapActor_TravelToAnimWait(0, 0x120, 0x78);
    API_MapActor_SetAnim(0, 0);
    API_MapActor_Jump(0, 4, 30);
    API_MapActor_SetPos(16, 0x1200000, 0x780000);
    API_MapActor_SetSpeed(16, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(16, 0x114, 0x88);
    API_MapActor_TravelToAnim(16, 0x108, 0x88);
    API_MapActor_TravelToAnimWait(0, 0x138, 0x88);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_SetAnim(16, 1);
    API_Func_8092adc(0, 0xb000, 0);
    API_Func_8092adc(16, 0xd000, 20);
    flagValue2 = API_GetFlag(0x819);
    if (flagValue2 == 0) {
        API_PlaySound(0xdc);
    }
    API_CutsceneWait(0x28);
    flagValue3 = API_GetFlag(0x819);
    if (flagValue3 == 0) {
        API_CopyMapTiles(0x24, 0x3e, 17, 0x24, 2, 3);
        API_CopyMapTiles(0x2c, 0x3b, 17, 0x26, 2, 1);
        API_CutsceneWait(10);
        API_CopyMapTiles(0x26, 0x3e, 17, 0x24, 2, 3);
        API_CopyMapTiles(0x2c, 0x3b, 17, 0x27, 2, 1);
        API_CutsceneWait(10);
        API_CopyMapTiles(0x28, 0x3e, 17, 0x24, 2, 3);
        API_CopyMapTiles(0, 0x20, 17, 0x27, 2, 1);
        API_CopyMapTiles(0x2c, 0x3b, 17, 0x28, 2, 1);
        API_CutsceneWait(10);
        API_MapActor_Emote(0, 0x100, 0);
        API_MapActor_Emote(16, 0x100, 0);
        API_CopyMapTiles(0x2a, 0x3e, 17, 0x24, 2, 3);
        API_CopyMapTiles(0, 0x20, 17, 0x28, 2, 1);
        API_CopyMapTiles(0x2c, 0x3b, 17, 0x29, 2, 1);
        API_CutsceneWait(10);
        API_CopyMapTiles(0, 0x20, 17, 0x29, 2, 1);
        API_CopyMapTiles(0x2c, 0x3b, 17, 0x2a, 2, 1);
        API_CutsceneWait(10);
        API_CopyMapTiles(0, 0x20, 17, 0x2a, 2, 3);
        API_CutsceneWait(0x50);
        API_Func_80118a8(9);
        API_Func_80118a8(10);
        API_SetFlag(0x819);
    }
    API_MapActor_TurnToFaceActor(16, 0, 30);
    API_MapActor_SetAnim(16, 3);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_SetAnim(16, 1);
    API_MapActor_SetAnim(0, 0);
    API_MessageID(0x102e);
    OvlFunc_890_200a5fc(0x8010, 6);
    API_MapActor_DoAnim(16, 3);
    API_MapActor_SetAnim(16, 1);
    API_ActorMessage(0x8010, 0);
    API_MapActor_SetAnim(0, 3);
    API_CutsceneWait(0x3c);
    risingActor = (unsigned char *)Sanctum890_GetActor(0);
    API_Func_80933d4(0x9999, 0x1333);
    API_Func_80933f8(0x11f0000, -1, 0x720000, 1);
    API_MapActor_TravelToAnimWait(0, 0x120, 0x78);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0xc000, 20);
    API_MapActor_SetSpeed(0, 0x4ccc, 0x2666);
    Sanctum890_Byte((risingActor + 0x5a), (0xfe & *(unsigned char *)(risingActor + 0x5a)));
    Sanctum890_Byte((risingActor + 0x55), 0);
    API_PlaySound(0xc9);
    __Func_8092950(0, 0x100);
    sprite = (unsigned char *)(*(int *)(risingActor + 0x50));
    frame = 0;
    Sanctum890_Byte((sprite + 0x26), frame);
    do {
        *(unsigned int *)(risingActor + 0xc) = (*(unsigned int *)(risingActor + 0xc) + 0x3333);
        API_WaitFrames(1);
        frame++;
    } while (frame != 0x78);
    API_PlaySound(0xbe);
    frame = 0;
    do {
        *(unsigned int *)(risingActor + 0xc) = (*(unsigned int *)(risingActor + 0xc) + 0x1999);
        *(unsigned int *)(sprite + 0x18) = (*(unsigned int *)(sprite + 0x18) + 0xfffffc00);
        API_WaitFrames(1);
        frame++;
    } while (frame != 0x3c);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_Jump(16, 4, 20);
    OvlFunc_890_200a5fc(16, 6);
    API_MapActor_TravelToAnimWait(16, 0x120, 0x78);
    API_Func_80925cc(16, 2);
    API_CutsceneWait(20);
    API_Func_8092adc(16, 0xc000, 20);
    API_MapActor_SetSpeed(16, 0x4ccc, 0x2666);
    risingActor = (unsigned char *)Sanctum890_GetActor(16);
    frame = 0;
    Sanctum890_Byte((risingActor + 0x5a), (0xfe & *(unsigned char *)(risingActor + 0x5a)));
    Sanctum890_Byte((risingActor + 0x55), frame);
    API_PlaySound(0xc9);
    __Func_8092950(16, 0x100);
    sprite = (unsigned char *)(*(int *)(risingActor + 0x50));
    Sanctum890_Byte((sprite + 0x26), frame);
    do {
        *(unsigned int *)(risingActor + 0xc) = (*(unsigned int *)(risingActor + 0xc) + 0x3333);
        API_WaitFrames(1);
        frame++;
    } while (frame != 0x78);
    API_PlaySound(0xbe);
    frame = 0;
    do {
        *(unsigned int *)(risingActor + 0xc) = (*(unsigned int *)(risingActor + 0xc) + 0x1999);
        *(unsigned int *)(sprite + 0x18) = (*(unsigned int *)(sprite + 0x18) + 0xfffffc00);
        API_WaitFrames(1);
        frame++;
    } while (frame != 0x3c);
    API_MapActor_SetPos(16, 0, 0);
    API_CutsceneWait(0x50);
    map = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    *(int *)(map + 0x1c0) = 0x203;
    *(int *)(map + 0x1c8) = 24;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091200(0, 0);
    API_Func_8091254(1);
    API_WaitFrames(1);
    API_Func_8091e9c(7);
    API_CutsceneEnd();
}
