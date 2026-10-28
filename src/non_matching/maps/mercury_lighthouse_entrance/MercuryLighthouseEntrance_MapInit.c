#include "api.h"

__asm__(".equ .Lentrance_field240_value, 0x39");
extern unsigned char EntranceField240Value[] __asm__(".Lentrance_field240_value");

static inline void EntranceHardwareHalf(volatile unsigned short *field, int value) { *field = value; }

static inline void EntranceByte(unsigned char *field, int value) { *field = value; }

int MercuryLighthouseEntrance_MapInit(void)
{
    extern void OvlFunc_923_2008d98(void);
    #define REG_BLDCNT ((unsigned char *)0x4000050)
    extern unsigned char ewram_2001000[];
    struct EntranceStateView { unsigned char pad0[0x1c2]; short room; unsigned char pad1[0x7c]; unsigned short field240; unsigned short field242; };
    extern struct EntranceStateView EntranceState __asm__("gState");
    extern int __cos(int);
    extern int __sin(int);
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void EntranceSpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
    extern void __Func_800fe9c(void);
    extern void __Func_8019aa0(int, int, int);
    extern void __Func_8091494(int);
    extern void __Func_8091ff0(unsigned int);
    extern void __Func_8092950(unsigned int, unsigned int);
    extern int EntranceGetActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_923_2008e3c(void);
    extern void OvlFunc_923_2009208(void);
    extern void OvlFunc_923_2009730(void);
    extern void OvlFunc_923_200996c(void);
    extern void OvlFunc_923_2009a3c(int, int *);
    struct EffectData effect;
    int motion[3];
    unsigned int particle;
    unsigned char *effectActor;
    int flagValue1;
    int flagValue2;
    int flagValue3;
    int flagValue4;
    int flagValue5;
    int flagValue6;
    int flagValue7;
    int flagValue8;
    unsigned char *actor;

    EntranceHardwareHalf((volatile unsigned short *)REG_BLDCNT, 0x3f40);
    EntranceHardwareHalf((volatile unsigned short *)(REG_BLDCNT + 2), 0x1010);
    OvlFunc_923_2009a3c(21, (int *)ewram_2001000);
    API_SetFlag(0x111);
    EntranceState.field242 = 11;
    EntranceState.field240 = (unsigned int)EntranceField240Value;
    __Func_8091494(0);
    flagValue1 = API_GetFlag(0x875);
    if (flagValue1 != 0) {
        API_StartTask(OvlFunc_923_2008d98, 0xc80);
    } else {
        OvlFunc_923_2008e3c();
    }
    *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x204;
    switch (EntranceState.room) {
        case 1:
        flagValue2 = API_GetFlag(0x872);
        if (flagValue2 == 0) {
            API_Func_8091e9c(20);
        }
        case 2:
        actor = (unsigned char *)EntranceGetActor(12);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = (unsigned char *)EntranceGetActor(13);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = (unsigned char *)EntranceGetActor(14);
        *(int *)(actor + 0x18) = 0xffff0000;
        API_WaitFrames(1);
        break;
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        flagValue3 = API_GetFlag(0x875);
        if (flagValue3 == 0) break;
        API_Func_8010704(0x54, 5, 10, 7, 20, 5);
        API_Func_8010704(0x65, 5, 12, 7, 0x25, 5);
        break;
        case 3:
        case 4:
        case 5:
        case 6:
        API_StartTask(OvlFunc_923_2008d98, 0xc80);
        flagValue4 = API_GetFlag(0x875);
        if (flagValue4 != 0) {
            API_CopyMapTiles(0x25, 0x62, 10, 0x61, 5, 3);
            __Func_800fe9c();
            API_WaitFrames(1);
            API_Func_8010704(0x46, 0x20, 13, 7, 6, 0x20);
        }
        if (EntranceState.room != 6) break;
        flagValue5 = API_GetFlag(0x251);
        if (flagValue5 != 0) break;
        API_SetFlag(0x251);
        API_CutsceneStart();
        API_Func_80933f8(-1, -1, -1, 0);
        __Func_800fe9c();
        API_WaitFrames(1);
        actor = (unsigned char *)EntranceGetActor(0);
        *(int *)(actor + 0xc) = 0x820000;
        actor = (unsigned char *)EntranceGetActor(0);
        *(int *)(actor + 0x48) = 0x8000;
        actor = (unsigned char *)EntranceGetActor(0);
        *(int *)(actor + 0x44) = flagValue5;
        actor = (unsigned char *)EntranceGetActor(0);
        actor += 0x55;
        EntranceByte(actor, flagValue5);
        API_MapTransitionIn();
        API_WaitMapTransition();
        API_CutsceneWait(30);
        actor = (unsigned char *)EntranceGetActor(0);
        actor += 0x55;
        EntranceByte(actor, 3);
        API_PlaySound(0xcc);
        API_CutsceneWait(24);
        effectActor = (unsigned char *)EntranceGetActor(0);
        effect.unk4 = 7;
        for (particle = 0; particle <= 16; particle++) {
            motion[0] = __cos(particle << 12);
            motion[1] = 0;
            motion[2] = __sin(particle << 12);
            motion[0] -= motion[0] / 4;
            motion[2] -= motion[2] / 2;
            OvlFunc_common0_10c(*(int *)(effectActor + 8), *(int *)(effectActor + 12), *(int *)(effectActor + 16), motion[0], motion[1], motion[2], 0x10001, &effect);
        }
        API_PlaySound(0xbc);
        API_MapActor_Surprise(0, 0x101);
        API_MapActor_SetAnim(0, 22);
        API_Func_8012330(0x50000, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_MapActor_Surprise(0, 0x100);
        actor = (unsigned char *)EntranceGetActor(0);
        *(int *)(actor + 0x48) = 0x10000;
        actor = (unsigned char *)EntranceGetActor(0);
        *(int *)(actor + 0x44) = 0x4000;
        flagValue6 = API_GetFlag(0x875);
        if (flagValue6 == 0) {
            API_Func_8091220(0x10000, 0);
            API_Func_8091200(0x10003, 1);
            API_Func_8091254(30);
            API_WaitMapTransition();
            API_MapActor_SetAnim(0, 1);
            API_CutsceneWait(30);
            __Func_8019aa0(0x1632, 0, 0);
            API_Func_8091200(0x10000, 0);
            API_Func_8091254(30);
        }
        API_CutsceneEnd();
        break;
        case 18:
        case 19:
        case 20:
        OvlFunc_923_2009208();
        case 17:
        __Func_8091ff0(0xaa);
        break;
        case 25:
        __Func_8092950(0, 15);
        actor = (unsigned char *)EntranceGetActor(0);
        EntranceSpriteFlags(actor, 0);
        API_CutsceneStart();
        __Func_800fe9c();
        API_WaitFrames(1);
        *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x100;
        API_MapTransitionIn();
        API_WaitMapTransition();
        API_CutsceneWait(0x78);
        API_Func_8091e9c(0x32);
        API_CutsceneEnd();
        break;
        case 30:
        flagValue7 = API_GetFlag(0x109);
        if (flagValue7 == 0) {
            OvlFunc_923_2009730();
        } else {
            API_Func_8010704(0, 0, 3, 3, 7, 9);
        }
        break;
        case 31:
        flagValue8 = API_GetFlag(0x109);
        if (flagValue8 == 0) {
            OvlFunc_923_200996c();
        }
        break;
    }
    return 0;
}
