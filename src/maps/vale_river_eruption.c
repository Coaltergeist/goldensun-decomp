/* rom_78ac38 (overlay file 889): consolidated TU — vale_river_eruption map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/vale_river_eruption/exports.s");

extern unsigned char gOvl_02008cf0[];

unsigned int ValeRiverEruption_GetEntrances(void) {
    return (unsigned int)gOvl_02008cf0;
}

unsigned int ValeRiverEruption_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008d38[];

void *ValeRiverEruption_GetExits(void) {
    return (void *)gOvl_02008d38;
}
extern unsigned char gOvl_02008d44[];

void *ValeRiverEruption_GetActors(void) {
    return (void *)gOvl_02008d44;
}
extern unsigned char gOvl_02008e94[];

void *ValeRiverEruption_GetEvents(void) {
    return (void *)gOvl_02008e94;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern void OvlFunc_889_2008074(void);

int ValeRiverEruption_MapInit(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0xf) {
        OvlFunc_889_2008074();
    }
    return 0;
}

extern unsigned char iwram_3001ebc[];
extern unsigned char ActorCmd_ARRAY_889__02008c00[];
extern unsigned char gScript_889__02008c64[];
extern unsigned char gScript_889__02008cb4[];
extern unsigned char Lm889_ea0[] __asm__(".Lm889_ea0");



extern unsigned char iwram_3001ebc[];
extern unsigned char ActorCmd_ARRAY_889__02008c00[];
extern unsigned char gScript_889__02008c64[];
extern unsigned char gScript_889__02008cb4[];
extern unsigned char Lm889_ea0[] __asm__(".Lm889_ea0");

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_TravelToWait(int, int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern void __MapActor_Emote(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_WaitScript(int);
extern void __Func_8092adc(int, int, int);
extern void __Func_80925cc(int, int);
extern void __Func_809259c(int, int);
extern void __StartThunder2(int, int);
extern void __Func_8095240(void);
extern void __WaitFrames(int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);
extern void __Func_8093500(int, int);
extern void __Func_800fe9c(void);
extern void __MapTransitionIn(void);
extern void __MapTransitionOut(void);
extern void __Func_80933d4(int, int);
extern void __CutsceneWait(int);
extern void __Func_8012330(int, int, int);
extern void __Func_8012350(void);
extern void __PlaySound(int);
extern void __MessageID(int);
extern int __ShowActorMessage_NoWait();
extern void __ActorMessage(int, int);
extern int __Func_8091c7c(int, int);
extern int __Func_8010560(void *, int, int);
extern void __SetFlag(int);
extern void __ClearFlag(int);
extern void __Func_8091e9c(int);

void OvlFunc_889_2008074(void) {
    unsigned int r1;
    unsigned short *r2;
    unsigned short r3;
    void *script;

    __CutsceneStart();
    __MapActor_SetAnim(14, 0);
    __MapActor_SetAnim(15, 0);
    __MapActor_SetAnim(16, 0);
    __MapActor_SetAnim(17, 0);
    __MapActor_SetAnim(18, 0);
    __MapActor_SetAnim(19, 0);
    API_MapActor_TravelToAnimWait(11, 0x109, 0x1e7);
    API_Func_8092adc(11, 0xa000, 0);
    API_MapActor_TravelToAnimWait(12, 0x100, 0x1f4);
    API_Func_8092adc(12, 0xa000, 0);
    __StartThunder2(0x10003, 0x10006);
    __Func_8095240();
    __WaitFrames(0x3c);
    API_Func_80933f8(0x1000000, -1, 0x2640000, 0);
    __Func_8093530();
    __Func_800fe9c();
    r1 = *(unsigned int *)iwram_3001ebc;
    *(int *)(r1 + (0xe0 << 1)) = 0;
    *(int *)(r1 + (0xe4 << 1)) = 0x20;
    __MapTransitionIn();
    API_Func_80933d4(0xcccc, 0x1999);
    API_Func_80933f8(0x1000000, -1, 0x1f40000, 1);
    __CutsceneWait(0x14);
    API_Func_8012330(0x10000, 0x20000, 0x10000);
    __Func_8095240();
    __PlaySound(0x91);
    __CutsceneWait(0x1e);
    __Func_8095240();
    __PlaySound(0x91);
    __Func_8093530();
    API_Func_8012330(0x20000, 0x30000, 0x10000);
    __Func_8095240();
    __PlaySound(0x91);
    API_Func_8012330(-1, -1, 0xe666);
    __Func_8012350();
    __CutsceneWait(0x3c);
    API_MessageID(0x1122);
    API_MapActor_Emote(8, 0x102, 0);
    __CutsceneWait(0x3c);
    __ActorMessage(8, 0);
    API_Func_8092adc(9, 0x5000, 0);
    __CutsceneWait(0x1e);
    __ActorMessage(9, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(11, 4);
    __ActorMessage(11, 0);
    API_Func_8092adc(9, 0x3000, 0);
    __MapActor_Face(12, 11, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(12, 4);
    __ActorMessage(12, 0);
    __Func_80925cc(13, 1);
    __ActorMessage(13, 0);
    __MapActor_Face(10, 13, 0);
    __CutsceneWait(0x1e);
    __Func_80925cc(10, 1);
    __ActorMessage(10, 0);
    __MapActor_Face(9, 10, 0);
    __CutsceneWait(0x1e);
    __Func_80925cc(9, 1);
    __ActorMessage(9, 0);
    __MapActor_Face(10, 9, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(10, 4);
    __ActorMessage(10, 0);
    __CutsceneWait(0x3c);
    API_Func_8012330(0x20000, 0x30000, 0x10000);
    __Func_8095240();
    __PlaySound(0x91);
    __CutsceneWait(0x3c);
    __MapActor_TurnToFaceActor(8, 9, 0);
    __MapActor_TurnToFaceActor(10, 11, 0);
    __MapActor_TurnToFaceActor(12, 13, 0);
    __Func_809259c(8, 2);
    __Func_809259c(9, 2);
    __Func_809259c(10, 2);
    __Func_809259c(11, 2);
    __Func_809259c(12, 2);
    __Func_809259c(13, 2);
    API_Func_8012330(-1, -1, 0xe666);
    __Func_8012350();
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    API_MapActor_SetSpeed(1, 0x8000, 0x4000);
    API_MapActor_SetPos(0, 0x780000, 0x1020000);
    API_Func_80933d4(0x18000, 0x3000);
    API_Func_80933f8(0x700000, -1, 0x1400000, 1);
    __CutsceneWait(0x28);
    __MapActor_SetAnim(0, 2);
    __MapActor_SetAnim(1, 2);
    API_MapActor_TravelTo(0, 0x78, 0x140);
    API_MapActor_TravelToWait(1, 0x68, 0x140);
    __MapActor_SetAnim(0, 1);
    __MapActor_SetAnim(1, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);
    API_Func_8092adc(1, 0x3000, 0);
    API_MapActor_Emote(1, 0x100, 0);
    __CutsceneWait(0x32);
    API_MapActor_SetSpeed(1, 0x18000, 0xc000);
    __MapActor_SetAnim(1, 2);
    API_MapActor_TravelToWait(1, 0x69, 0x156);
    __MapActor_SetAnim(1, 1);
    __Func_80925cc(1, 2);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __Func_809259c(0, 1);
    __MapActor_TurnToFaceActor(0, 1, 0);
    __CutsceneWait(0x14);
    __ShowActorMessage_NoWait(1, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x3c);
        __MapActor_SetAnim(0, 3);
        __MapActor_SetAnim(1, 3);
        __CutsceneWait(0x32);
        API_Func_8092adc(0, 0xc000, 0);
        __MapActor_SetAnim(1, 2);
        API_MapActor_SetSpeed(1, 0x10000, 0x8000);
        API_MapActor_TravelToWait(1, 0x67, 0x140);
        __MapActor_SetAnim(1, 1);
    } else {
        __CutsceneWait(0x3c);
        __MapActor_SetAnim(0, 3);
        __MapActor_SetAnim(1, 3);
        __CutsceneWait(0x32);
        API_Func_8092adc(1, 0x3000, 0);
        __MapActor_SetAnim(0, 2);
        API_MapActor_TravelToWait(0, 0x78, 0x154);
        __MapActor_SetAnim(0, 1);
    }
    __ActorMessage(12, 0);
    API_MapActor_Surprise(1, 0x102);
    __Func_80925cc(1, 2);
    __CutsceneWait(0x28);
    API_Func_8092adc(9, 0xa000, 0);
    API_Func_8092adc(11, 0xa000, 0);
    API_Func_8092adc(10, 0xa000, 0);
    API_Func_8092adc(12, 0xa000, 0);
    API_Func_8092adc(13, 0xa000, 0);
    API_Func_80933d4(0x30000, 0x6000);
    __Func_8093500(10, 1);
    __Func_8093530();
    __CutsceneWait(0x32);
    __Func_80925cc(10, 2);
    __ActorMessage(10, 0);
    __CutsceneWait(0x1e);
    __Func_80925cc(8, 1);
    __ActorMessage(8, 0);
    __CutsceneWait(0x28);
    __Func_80925cc(9, 1);
    __ActorMessage(9, 0);
    __CutsceneWait(0x28);
    API_Func_8092adc(0, 0x3000, 0);
    API_Func_8092adc(1, 0x3000, 0);
    API_Func_80933f8(0x700000, -1, 0x1400000, 1);
    __Func_8093530();
    __Func_809259c(0, 2);
    __Func_809259c(1, 2);
    __MapActor_WaitScript(1);
    __CutsceneWait(0x32);
    __MapActor_SetAnim(0, 3);
    __MapActor_SetAnim(1, 3);
    __MapActor_WaitScript(1);
    __CutsceneWait(0x3c);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0xd60000, -1, 0x1d80000, 1);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    __MapActor_SetBehavior(0, ActorCmd_ARRAY_889__02008c00);
    __CutsceneWait(0x1e);
    __MapActor_SetBehavior(1, gScript_889__02008c64);
    __MapActor_WaitScript(1);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0, 0);
    __Func_8093530();
    API_Func_8092adc(9, 0x8000, 0);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    __MapActor_SetAnim(8, 2);
    API_MapActor_TravelToWait(8, 0x109, 0x1c7);
    API_MapActor_TravelToWait(8, 0xf6, 0x1c7);
    __MapActor_SetAnim(8, 1);
    __CutsceneWait(0x1e);
    __Func_80925cc(9, 1);
    __ActorMessage(9, 0);
    API_MapActor_Emote(0, 0x102, 0);
    __CutsceneWait(0x32);
    API_MapActor_Emote(1, 0x102, 0);
    __CutsceneWait(0x32);
    __Func_80925cc(8, 1);
    __ActorMessage(8, 0);
    __CutsceneWait(0x28);
    __MapActor_TurnToFaceActor(0, 1, 0);
    __CutsceneWait(0x32);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0, 0);
    __CutsceneWait(0x14);
    __MapActor_SetAnim(0, 4);
    __MapActor_DoAnim(1, 4);
    __CutsceneWait(0x28);
    API_MapActor_Emote(10, 0x102, 0);
    __CutsceneWait(0x32);
    API_Func_8092adc(1, 0x3000, 0);
    __CutsceneWait(0xa);
    __ShowActorMessage_NoWait(10, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x28);
        __MapActor_TurnToFaceActor(8, 9, 0);
        __CutsceneWait(0x32);
        API_Func_8092adc(8, 0x8000, 0);
        API_Func_8092adc(9, 0x8000, 0);
        __CutsceneWait(0x28);
        __Func_80925cc(9, 1);
        __ActorMessage(9, 0);
        r2 = *(unsigned short **)iwram_3001ebc;
        r2 += 0xec;
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
    } else {
        __CutsceneWait(0x28);
        __MapActor_TurnToFaceActor(8, 9, 0);
        __CutsceneWait(0x32);
        API_Func_8092adc(8, 0x8000, 0);
        API_Func_8092adc(9, 0x8000, 0);
        __CutsceneWait(0x28);
        __Func_80925cc(9, 1);
        r2 = *(unsigned short **)iwram_3001ebc;
        r2 += 0xec;
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        __ActorMessage(9, 0);
    }
    __CutsceneWait(0x1e);
    API_Func_8092adc(1, 0, 0);
    __CutsceneWait(0x1e);
    __Func_809259c(0, 2);
    __Func_80925cc(1, 2);
    __CutsceneWait(0x28);
    __MapActor_SetAnim(0, 4);
    __MapActor_DoAnim(1, 4);
    __CutsceneWait(0x3c);
    __Func_80925cc(8, 1);
    __ActorMessage(8, 0);
    __MapActor_Face(8, 9, 0);
    __CutsceneWait(0x1e);
    __Func_80925cc(8, 1);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(8, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(8, 0);
    __CutsceneWait(0x14);
    __Func_80925cc(9, 1);
    API_Func_8092adc(9, 0xb000, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(9, 3);
    __CutsceneWait(0x32);
    API_Func_8092adc(8, 0x8000, 0);
    __CutsceneWait(0x14);
    __Func_80925cc(8, 1);
    __ActorMessage(8, 0);
    __CutsceneWait(0x28);
    __MapActor_TurnToFaceActor(8, 9, 0);
    __CutsceneWait(0x28);
    __MapActor_SetAnim(8, 3);
    __MapActor_DoAnim(9, 3);
    __CutsceneWait(0x1e);
    API_MapActor_TravelToAnimWait(8, 0xff, 0x1bd);
    __CutsceneWait(0x28);
    __Func_8010560(Lm889_ea0, 0x2d, 0xb);
    __PlaySound(0xbc);
    __CutsceneWait(0x1e);
    API_MapActor_TravelToAnim(8, 0xff, 0x186);
    __CutsceneWait(0x14);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(10, 0xcccc, 0x6666);
    API_MapActor_TravelToAnim(9, 0xff, 0x186);
    API_MapActor_TravelToAnimWait(10, 0xff, 0x1cc);
    API_Func_8092adc(10, 0x8000, 0);
    __CutsceneWait(0x28);
    __MapActor_DoAnim(10, 3);
    __CutsceneWait(0x1e);
    __Func_809259c(0, 1);
    __Func_80925cc(1, 1);
    __CutsceneWait(0x28);
    API_MapActor_TravelToAnim(10, 0xff, 0x186);
    script = gScript_889__02008cb4;
    __MapActor_SetBehavior(0, script);
    __CutsceneWait(0x28);
    __MapActor_SetBehavior(1, script);
    __MapActor_WaitScript(1);
    API_MapActor_Emote(11, 0x102, 0);
    API_MapActor_Emote(12, 0x102, 0);
    __CutsceneWait(0x28);
    API_Func_8012330(0x20000, 0x30000, 0x10000);
    __Func_8095240();
    __PlaySound(0x91);
    __CutsceneWait(0x1e);
    r1 = *(unsigned int *)iwram_3001ebc;
    *(int *)(r1 + (0xe0 << 1)) = 0;
    *(int *)(r1 + (0xe4 << 1)) = 0x40;
    __MapTransitionOut();
    API_Func_8012330(-1, -1, 0xe666);
    __Func_8012350();
    API_ClearFlag(0x12f);
    API_SetFlag(0x879);
    __Func_8091e9c(1);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/vale_river_eruption/vale_river_eruption_data.s");

INCLUDE_ASM("asm/maps/vale_river_eruption/imports.s");
