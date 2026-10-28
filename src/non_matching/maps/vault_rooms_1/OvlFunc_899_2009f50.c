#include "api.h"
#include "actor.h"

static inline void CS899_StoreCounter(void *p, int value) { *(short *)p = value; }
void OvlFunc_899_2009f50(void)
{
    extern void OvlFunc_899_200aba0(void);
    extern void OvlFunc_899_200c8c8(void);
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_8097adc(void);
    extern void * CS899_Actor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_899_200a1c8(void);
    extern void OvlFunc_899_200c5f4(unsigned int, unsigned int);
    extern void OvlFunc_899_200c658(unsigned int, unsigned int);
    extern void OvlFunc_899_200c684(void);
    unsigned char * savedScene;
    int speaker;
    short *savedRoom;
    struct Actor *actor;
    unsigned char *transitionScene;
    unsigned char *counter;

    savedScene = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
    API_CutsceneStart();
    API_StopTask(OvlFunc_899_200c8c8);
    API_ClearFlag(0x107);
    API_ClearFlag(0x250);
    API_MapActor_SetAnim(24, 1);
    API_MapActor_SetAnim(25, 1);
    API_MapActor_SetAnim(2, 1);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_Face(1, 2, 0);
    API_MapActor_TurnToFaceActor(0, 2, 0);
    API_MapActor_Face(24, 2, 0);
    API_MapActor_Face(25, 2, 0);
    API_CutsceneWait(10);
    savedRoom = (short *)(savedScene + 0x182);
    speaker = 24;
    switch (*savedRoom) {
    case 0xca: case 0xcb:
        API_MessageID(0x12a4);
        API_MapActor_Surprise(25, 0x102);
        API_Func_80925cc(25, 2);
        OvlFunc_899_200c5f4(25, 20);
        speaker = 25;
        if (*savedRoom == 0xca) break;
    case 0xc9:
        API_MessageID(0x12a3);
        API_MapActor_Surprise(24, 0x102);
        API_Func_80925cc(24, 2);
        speaker = 24;
        OvlFunc_899_200c5f4(24, 20);
        break;
    }
    API_MapActor_SetAnim(2, 1);
    API_MapActor_Face(2, speaker, 0);
    API_MapActor_Face(1, 2, 0);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_MessageID(0x12a5);
    OvlFunc_899_200c5f4(1, 20);
    API_Func_80925cc(2, 2);
    API_CutsceneWait(20);
    OvlFunc_899_200c5f4(2, 20);
    OvlFunc_899_200c658(2, speaker);
    __Func_8097adc();
    API_CutsceneWait(0x3c);
    API_Func_80925cc(24, 2);
    OvlFunc_899_200c5f4(24, 20);
    API_Func_80925cc(25, 2);
    OvlFunc_899_200c5f4(25, 20);
    API_MapActor_Emote(2, 0x100, 0x3c);
    OvlFunc_899_200c684();
    API_Func_809259c(1, 2);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(20);
    OvlFunc_899_200c5f4(1, 20);
    API_MapActor_Face(2, 1, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(0x28);
    actor = CS899_Actor(0);
    actor->sprite->oam.priority = 1;
    actor = CS899_Actor(1);
    actor->sprite->oam.priority = 1;
    actor = CS899_Actor(2);
    actor->sprite->oam.priority = 1;
    transitionScene = *(unsigned char **)CS_iwram_3001ebc;
    *(int *)(transitionScene + 0x1c8) = 24;
    *(int *)(transitionScene + 0x1c0) = 0x201;
    API_MapTransitionOut();
    API_WaitMapTransition();
    OvlFunc_899_200a1c8();
    API_Func_8010704(14, 0x2d, 3, 1, 14, 0x2c);
    API_SetFlag(0x853);
    counter = CS899_Actor(24);
    counter += 0x64;
    CS899_StoreCounter(counter, 5);
    counter = CS899_Actor(25);
    counter += 0x64;
    CS899_StoreCounter(counter, 4);
    API_StartTask(OvlFunc_899_200aba0, 0xc80);
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x209;
    API_CutsceneEnd();
}
