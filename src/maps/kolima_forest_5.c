/* rom_7a4370 (overlay file 917): consolidated TU — kolima_forest_5 map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/kolima_forest_5/exports.s");

extern unsigned char gOvl_02009ba4[];

void *KolimaForest5_GetEntrances(void) {
    return (void *)gOvl_02009ba4;
}
extern unsigned char gScript_887__02009c04[];

void *KolimaForest5_GetSpecialExits(void) {
    return (void *)gScript_887__02009c04;
}
extern unsigned char gOvl_02009c24[];

void *KolimaForest5_GetExits(void) {
    return (void *)gOvl_02009c24;
}
extern unsigned char MapEntrance_ARRAY_941__02009c34[];

void *KolimaForest5_GetActors(void) {
    return (void *)MapEntrance_ARRAY_941__02009c34;
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_917_2008050(void) {
    int r5;
    int r3;
    r5 = *(int *)iwram_3001ebc;
    __CutsceneStart();
    __Func_8092304(0, 0, 0);
    r3 = 0xb6;
    r3 <<= 1;
    r5 += r3;
    r3 = 0;
    __Func_8091e9c(*(short *)(r5 + r3));
    __CutsceneEnd();
}

extern unsigned char gOvl_02009d3c[];

void *KolimaForest5_GetEvents(void) {
    return (void *)gOvl_02009d3c;
}

extern int __GetFlag(int);
extern void __SetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void OvlFunc_917_20092f4(int, int);
extern int _MSG_1520;

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

void OvlFunc_917_2008088(void) {
    __CutsceneStart();
    OvlFunc_917_20092f4(0xb, 1);
    if (GetFlag(0x845)) {
        __MessageID(0x151d);
        __ActorMessage(9, 0);
    } else if (GetFlag(0x84c)) {
        __MessageID(0x1525);
        __ActorMessage(9, 0);
    } else {
        __MessageID((int) (&_MSG_1520));
        __ActorMessage_Wait(9, 0, 0x14);
        OvlFunc_917_20092f4(0xb, 0);
        __CutsceneWait(0x3c);
        OvlFunc_917_20092f4(0xb, 1);
        __ActorMessage_Wait(9, 0, 0xa);
        __MapActor_DoAnim(0, 3);
        __CutsceneWait(0x28);
        __ActorMessage(9, 0);
        OvlFunc_917_20092f4(0xb, 0);
        __CutsceneWait(0x50);
        __ActorMessage_Wait(9, 0, 0x14);
        OvlFunc_917_20092f4(0xb, 1);
        __ActorMessage_Wait(9, 0, 0x14);
        __SetFlag(0x84c);
    }
    OvlFunc_917_20092f4(0xb, 0);
    __CutsceneEnd();
}

extern void __WaitFrames(int);
extern void __Func_80925cc(int, int);
extern int __CheckPartyItem(int);
extern void __Func_8091200(int, int);
extern void __Func_8091254(int);

void OvlFunc_917_2008158(void) {
    int r3;
    int r1;
    int r2;
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        OvlFunc_917_20092f4(10, 1);
        __MessageID(0x151c);
        __ActorMessage(8, 0);
        OvlFunc_917_20092f4(10, 0);
    } else if (__GetFlag(0x844)) {
        OvlFunc_917_20092f4(10, 1);
        __MessageID(0x14eb);
        __ActorMessage(8, 0);
        OvlFunc_917_20092f4(10, 0);
        if (__CheckPartyItem(0xb8) != -1) {
            r3 = *(int *)iwram_3001ebc;
            r1 = 0xb9;
            r1 <<= 1;
            r2 = r3 + r1;
            r3 = 1;
            *(short *)r2 = r3;
        }
    } else {
        __MessageID(0x14c9);
        __ActorMessage(8, 0);
        __Func_8091200(0x406218, 1);
        __Func_8091254(0x14);
        __WaitFrames(0x28);
        API_ActorMessage_Wait(0x200e, 0, 10);
        __Func_80925cc(0, 2);
        API_ActorMessage(0x200e, 0);
        __Func_8091200(0x80 << 9, 1);
        __Func_8091254(0x14);
        __WaitFrames(0x28);
    }
    __CutsceneEnd();
}


void OvlFunc_917_2008248(void) {
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        __MessageID(0x151f);
    } else {
        __MessageID(0x14c8);
    }
    __ActorMessage(9, 0);
    __CutsceneEnd();
}

void OvlFunc_917_2008284(void) {
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        __MessageID(0x151e);
    } else {
        __MessageID(0x14ec);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

extern void OvlFunc_917_20082ec(void);
extern void OvlFunc_917_2008488(void);

void OvlFunc_917_20082c0(void)
{
    __CutsceneStart();
    __Func_808e118();
    if (__GetFlag(0x844) == 0) {
        OvlFunc_917_20082ec();
    } else {
        OvlFunc_917_2008488();
    }
    __CutsceneEnd();
}

extern void *__MapActor_GetActor(int);
extern void __PlayMapMusic(void);
extern void OvlFunc_917_2009218(void);
extern int L1dd0 __asm__(".Lm917_1dd0");

void OvlFunc_917_20082ec(void) {
    struct Actor *a;

    a = (struct Actor *)__MapActor_GetActor(0);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_Func_8091200(0x406218, 1);
    API_Func_8091254(0x14);
    API_WaitFrames(0x28);
    API_PlaySound(0x11);
    L1dd0 = 1;
    API_StartTask(OvlFunc_917_2009218, 0xc8 << 4);
    API_WaitFrames(0x1e);
    L1dd0 = 0;
    API_Func_80933f8(0xa4 << 17, -1, 0xeb << 16, 1);
    API_Func_8092b08(0, 1);
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A &= 0xfe;
    API_MapActor_SetAnim(0, 0x10);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 10);
    API_PlaySound(0x85);
    a->motion.y = 0xa0 << 11;
    a->gravity = 0x80 << 7;
    a->bounce = 0xa0 << 8;
    API_MapActor_TravelToWait(0, 0x14f, 0x81 << 1);
    if (a->motion.y >= 0) {
        do {
            API_WaitFrames(1);
        } while (a->motion.y >= 0);
    }
    do {
        API_WaitFrames(1);
    } while (a->motion.y <= 0);
    API_PlaySound(0xa1);
    API_MapActor_SetAnim(0, 0x13);
    API_CutsceneWait(0x78);
    API_StopTask(OvlFunc_917_2009218);
    API_WaitFrames(0x28);
    a->bounce = 0x80 << 7;
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A |= 1;
    API_CutsceneWait(0x50);
    API_MessageID(0x14cc);
    API_ActorMessage_Wait(0x200e, 0, 0x14);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x200e, 0);
    __PlayMapMusic();
    API_Func_8091200(0x80 << 9, 1);
    API_Func_8091254(0x14);
    API_WaitFrames(0x28);
    a->facing = 0xc0 << 8;
    a->gravity = 0x80 << 9;
    a->bounce = 0x80 << 7;
    API_Func_80925cc(0, 2);
    API_CutsceneWait(0x28);
    API_MapActor_Jump(0, 4, 0);
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(0x14);
}


struct KolimaEffectPosition { int x, y, z; };
static inline void KolimaShowMessage(int speaker, int mode) { extern int __ShowActorMessage_NoWait(int, int); __ShowActorMessage_NoWait(speaker, mode); }
void OvlFunc_917_2008488(void)
{
    extern struct KolimaEffectPosition effectPosition __asm__(".Lm917_1dc0");
    extern unsigned char CS_917_1dcc[] __asm__(".Lm917_1dcc");
    extern unsigned char CS_917_1dd4[] __asm__(".Lm917_1dd4");
    extern unsigned char ActorCmd_ARRAY_917__02009ab8[];
    extern void OvlFunc_917_20092b4(void);
    extern void OvlFunc_917_20095a0(void);
    extern unsigned char gScript_917__02009af4[];
    extern unsigned char gScript_917__02009b30[];
    extern unsigned char gScript_917__02009b6c[];
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern void * __MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, int);
    extern void OvlFunc_917_20092f4(int, int);
    extern void OvlFunc_917_200972c(int, int);
    extern void OvlFunc_917_20098b8(int);
    extern int __ShowActorMessage_NoWait(int, int);
    unsigned int pulse;
    int fourthPartyMemberPresent;
    int choice2;
    int choice3;
    int choice4;
    struct Actor *actor;

    fourthPartyMemberPresent = API_GetFlag(3);
    API_MapActor_TravelToAnimWait(0, 0x148, 0xd4);
    API_Func_8092adc(0, 0xc000, 20);
    API_PlaySound(17);
    API_Func_801776c(0x14ed, 1);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, actor->pos.x, actor->pos.z);
    }
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, actor->pos.x, actor->pos.z);
    }
    API_MapActor_SetBehavior(1, (int)ActorCmd_ARRAY_917__02009ab8);
    API_MapActor_SetBehavior(2, (int)gScript_917__02009af4);
    if (fourthPartyMemberPresent != 0) {
        API_MapActor_SetSpeed(3, 0x10000, 0x8000);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(3, actor->pos.x, actor->pos.z);
        }
        API_MapActor_SetBehavior(3, (int)gScript_917__02009b30);
    }
    API_MapActor_WaitScript(2);
    API_CutsceneWait(0x28);
    OvlFunc_917_20098b8(0);
    API_Func_8091254(0x20);
    API_WaitFrames(0x28);
    *(int *)CS_917_1dd4 = 0;
    API_StartTask(OvlFunc_917_20092b4, 0xc80);
    API_CutsceneWait(0x28);
    API_Func_8092adc(1, 0x6000, 20);
    API_Func_80933d4(0x33333, 0x6666);
    API_Func_80933f8(0x1000000, -1, 0xfe0000, 1);
    API_Func_8093530();
    API_PlaySound(0xf6);
    API_CutsceneWait(0x28);
    API_Func_8092adc(2, 0x2000, 20);
    API_Func_80933f8(0x19d0000, -1, 0x1050000, 1);
    API_Func_8093530();
    API_PlaySound(0xf6);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(3, 0x4000, 20);
    API_Func_80933f8(0x1460000, -1, 0x1800000, 1);
    API_Func_8093530();
    API_PlaySound(0xf6);
    /* The scheduled effect advances this shared counter. */
    while (*(int *)CS_917_1dd4 != 24) {
        API_WaitFrames(1);
    }
    API_StopTask(OvlFunc_917_20092b4);
    API_WaitFrames(10);
    /* Four alternating effect pulses, preserving the increment before the wait. */
    pulse = 0;
    do {
        OvlFunc_917_20098b8(0);
        API_Func_8091254(6);
        API_WaitFrames(6);
        OvlFunc_917_20098b8(1);
        API_Func_8091254(6);
        pulse++;
        API_WaitFrames(6);
    } while (pulse <= 3);
    OvlFunc_917_20098b8(0);
    API_Func_8091254(0x28);
    API_WaitFrames(0x50);
    API_Func_80933f8(0x1480000, 0x80000, 0xd40000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(10, 1);
    API_CutsceneWait(0x28);
    API_PlaySound(7);
    API_MessageID(0x14ee);
    API_ActorMessage(8, 0);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 20);
    OvlFunc_917_20092f4(10, 2);
    API_CutsceneWait(20);
    OvlFunc_917_20092f4(10, 3);
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(10, 1);
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_MapActor_Emote(0, 0x105, 0);
    API_MapActor_Emote(1, 0x105, 0);
    API_MapActor_Emote(3, 0x105, 0);
    API_MapActor_Emote(2, 0x105, 0x28);
    API_Func_80933f8(0xea0000, 0, 0xe80000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(11, 1);
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(11, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4009, 0, 20);
    OvlFunc_917_20092f4(11, 2);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(2, 0x6000, 0);
    API_Func_8092adc(3, 0x6000, 20);
    OvlFunc_917_20092f4(11, 3);
    API_CutsceneWait(20);
    OvlFunc_917_20092f4(11, 2);
    API_CutsceneWait(20);
    OvlFunc_917_20092f4(11, 3);
    API_ActorMessage_Wait(0x4009, 0, 10);
    OvlFunc_917_20092f4(10, 0);
    API_CutsceneWait(20);
    API_ActorMessage(0x8008, 0);
    OvlFunc_917_20092f4(10, 1);
    API_CutsceneWait(20);
    KolimaShowMessage(0x8008, 0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        API_ActorMessage(0x4009, 0);
        API_ActorMessage(0x8008, 0);
    } else {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 2);
        API_MapActor_Emote(3, 0x103, 0);
        API_MapActor_Emote(1, 0x103, 0);
        API_MapActor_Emote(2, 0x103, 0x28);
        API_MapActor_SetAnim(1, 4);
        API_ActorMessage(1, 0);
        if (fourthPartyMemberPresent != 0) {
            API_Func_80925cc(3, 2);
            API_ActorMessage(3, 0);
        } else {
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        }
        API_MapActor_DoAnim(2, 3);
        API_ActorMessage(2, 0);
        API_ActorMessage(0x4009, 0);
        API_ActorMessage(0x8008, 0);
    }
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_Func_80933f8(0x1480000, 0x80000, 0xd40000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    OvlFunc_917_20092f4(10, 0);
    API_CutsceneWait(20);
    OvlFunc_917_20098b8(0);
    API_Func_8091254(1);
    API_WaitFrames(1);
    API_Func_8091200(0x406218, 1);
    API_Func_8091254(0x28);
    API_CutsceneWait(0x3c);
    *(int *)CS_917_1dcc = 0;
    effectPosition.x = 0x1480000;
    effectPosition.y = 0x300000;
    effectPosition.z = 0xcd0000;
    API_StartTask(OvlFunc_917_20095a0, 0xc80);
    API_CutsceneWait(0x64);
    API_StopTask(OvlFunc_917_20095a0);
    API_Func_8091200(0x7fff, 0);
    API_Func_8091254(0x3c);
    API_CutsceneWait(0x64);
    OvlFunc_917_20098b8(0);
    API_Func_8091254(20);
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(10, 1);
    API_CutsceneWait(10);
    API_MessageID(0x14fb);
    API_ActorMessage(0x8008, 0);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_Func_80933f8(0xea0000, 0, 0xe80000, 1);
    API_Func_8093530();
    API_CutsceneWait(20);
    API_ActorMessage(0x4009, 0);
    API_ActorMessage_Wait(0x8008, 0, 10);
    API_Func_80925cc(1, 2);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0xe000, 10);
    KolimaShowMessage(1, 0);
    choice3 = __Func_8091c7c(0, 0);
    if (choice3 == 0) {
        API_MapActor_Emote(1, 0x102, 0x28);
    } else {
        API_MapActor_DoAnim(1, 4);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    API_ActorMessage(1, 0);
    OvlFunc_917_20092f4(10, 4);
    API_CutsceneWait(20);
    API_MessageID(0x1501);
    API_ActorMessage(0x8008, 0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_ActorMessage(0x8008, 0);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    OvlFunc_917_20092f4(10, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x8008, 0, 20);
    OvlFunc_917_20092f4(11, 0);
    API_ActorMessage_Wait(0x4009, 0, 20);
    OvlFunc_917_20092f4(11, 3);
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(11, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4009, 0, 20);
    OvlFunc_917_20092f4(10, 2);
    API_CutsceneWait(20);
    API_ActorMessage(0x8008, 0);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_MapActor_Emote(3, 0x102, 0);
    API_MapActor_Emote(2, 0x102, 0x50);
    OvlFunc_917_20092f4(11, 5);
    API_CutsceneWait(0x3c);
    OvlFunc_917_20092f4(11, 3);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4009, 0, 20);
    OvlFunc_917_20092f4(10, 5);
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(10, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4008, 0, 20);
    API_Func_80925cc(1, 2);
    API_Func_8092adc(1, 0x8000, 10);
    API_ActorMessage(1, 0);
    API_Func_8092adc(2, 0x8000, 20);
    API_ActorMessage(0x8002, 0);
    OvlFunc_917_20092f4(11, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4009, 0, 20);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(0, 0x6000, 10);
    API_ActorMessage_Wait(1, 0, 20);
    OvlFunc_917_20092f4(10, 1);
    API_ActorMessage_Wait(0x8008, 0, 10);
    OvlFunc_917_20092f4(10, 2);
    API_CutsceneWait(20);
    OvlFunc_917_20092f4(11, 3);
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(11, 0);
    API_CutsceneWait(20);
    OvlFunc_917_20098b8(0);
    API_Func_8091254(1);
    API_WaitFrames(1);
    API_Func_8091200(0x406218, 1);
    API_Func_8091254(0x28);
    API_CutsceneWait(0x3c);
    *(int *)CS_917_1dcc = 0;
    effectPosition.x = 0x880000;
    effectPosition.y = 0x140000;
    effectPosition.z = 0x1020000;
    API_StartTask(OvlFunc_917_20095a0, 0xc80);
    API_CutsceneWait(0x64);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(3, 0x6000, 0);
    API_Func_8092adc(2, 0x6000, 0x28);
    API_Func_809259c(2, 1);
    API_MapActor_Emote(2, 0x100, 20);
    API_ActorMessage_Wait(0x8002, 0, 10);
    API_Func_80925cc(0, 2);
    API_Func_8092adc(0, 0x2000, 10);
    API_MapActor_DoAnim(0, 3);
    OvlFunc_917_20092f4(10, 4);
    API_CutsceneWait(20);
    API_ActorMessage(0x8008, 0);
    API_MapActor_Emote(2, 0x101, 0x3c);
    API_Func_8092adc(2, 0xc000, 10);
    API_ActorMessage_Wait(0x8002, 0, 10);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 20);
    API_ActorMessage_Wait(0x8008, 0, 10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x6000, 0);
    API_Func_8092adc(1, 0x6000, 0);
    API_Func_8092adc(3, 0x6000, 0);
    API_Func_8092adc(2, 0x6000, 0x78);
    API_StopTask(OvlFunc_917_20095a0);
    API_CutsceneWait(0x3c);
    OvlFunc_917_20098b8(0);
    API_Func_8091254(0x28);
    OvlFunc_917_20092f4(10, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x8008, 0, 20);
    OvlFunc_917_20092f4(11, 3);
    API_ActorMessage(0x4009, 0);
    API_ActorMessage(0x8008, 0);
    OvlFunc_917_20092f4(11, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4009, 0, 10);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(3, 2);
    API_Func_80925cc(2, 2);
    OvlFunc_917_20092f4(10, 1);
    KolimaShowMessage(0x8008, 0);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xe000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xa000, 0);
    choice4 = __Func_8091c7c(0, 0);
    if (choice4 == 1) {
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    }
    API_CutsceneWait(10);
    OvlFunc_917_20092f4(10, 2);
    API_CutsceneWait(20);
    OvlFunc_917_20092f4(11, 3);
    API_CutsceneWait(0x28);
    OvlFunc_917_20092f4(10, 1);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x8008, 0, 10);
    API_Func_8092adc(0, 0x4000, 0);
    API_Func_8092adc(1, 0, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0x8000, 10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_DoAnim(2, 3);
    API_PlaySound(17);
    API_MapActor_SetBehavior(1, (int)gScript_917__02009b6c);
    if (fourthPartyMemberPresent != 0) {
        API_MapActor_SetBehavior(3, (int)gScript_917__02009b6c);
    }
    __MapActor_RunScript(2, (int)gScript_917__02009b6c);
    OvlFunc_917_20092f4(10, 4);
    OvlFunc_917_20092f4(10, 4);
    API_CutsceneWait(20);
    API_MessageID(0x1519);
    API_ActorMessage(0x8008, 0);
    OvlFunc_917_20092f4(11, 4);
    OvlFunc_917_20092f4(11, 4);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(0x4009, 0, 10);
    API_MapActor_DoAnim(0, 3);
    API_SetFlag(0x845);
    API_PlaySound(1);
    OvlFunc_917_200972c(0xb8, 0xb9);
}
INCLUDE_ASM("asm/maps/kolima_forest_5/KolimaForest5_MapInit.s");

extern void __DeleteActor();

unsigned int OvlFunc_917_20091e8(int *p)
{
    *(unsigned int *)((char *)p + 0x18) += 0x1eb8;
    if (*(unsigned int *)((char *)p + 0x38) == 0x80000000) {
        if (*(unsigned int *)((char *)p + 0x3c) == 0x80000000) {
            if (*(unsigned int *)((char *)p + 0x40) == 0x80000000) {
                __DeleteActor();
            }
        }
    }
    return 1;
}



extern unsigned char iwram_3001e40[];
extern int L1dd0 __asm__(".Lm917_1dd0");
extern unsigned char gScript_917__02009d9c[];
extern void __PlaySound(int);
extern void __Actor_SetAnim(void *, int);
extern void __Actor_SetScript(void *, void *);

void OvlFunc_917_2009218(void) {
    int c = ~0xc;
    int r6 = *(int *)iwram_3001e40 & 3;
    if (r6 == 0) {
        char *p;
        char *sprite;
        if (L1dd0 != 0) {
            __PlaySound(0xc8);
        }
        p = (char *)API_CreateActor(0x1a, 0xa3 << 17, 0x80 << 14, 0xc0 << 16);
        if (p != 0) {
            sprite = *(char **)(p + 0x50);
            {
                unsigned char flags[1];
                flags[0] = *(unsigned char *)(p + 0x23);
                *(unsigned char *)(sprite + 0x26) = r6;
                *(unsigned char *)(p + 0x23) = flags[0] & 0xfe;
            }
            do {
                *(unsigned char *)(sprite + 9) = (*(unsigned char *)(sprite + 9) & c) | 4;
                *(int *)(p + 0x18) = 0x1999;
                *(int *)(p + 0x30) = 0x80 << 11;
                *(int *)(p + 0x34) = 0x80 << 11;
            } while (0);
            *(unsigned char *)(p + 0x55) = r6;
            __Actor_SetAnim(p, 2);
            API_Actor_TravelTo(p, 0xa3 << 17, 0, 0xf0 << 16);
            __Actor_SetScript(p, gScript_917__02009d9c);
        }
    }
}
extern int L1dd4 __asm__(".Lm917_1dd4");
extern void __Func_8091254(int);

void OvlFunc_917_20092b4(void) {
    if (L1dd4 == 0) {
        OvlFunc_917_20098b8(0);
        __Func_8091254(0x14);
    } else if (L1dd4 == 0x14) {
        OvlFunc_917_20098b8(1);
        __Func_8091254(8);
    }
    L1dd4++;
    if (L1dd4 == 0x1e) {
        L1dd4 = 0;
    }
}
void OvlFunc_917_20092f4(int tree, int sequence)
{
    if (tree == 10) {
        switch (sequence) {
        case 0:
            API_MapActor_SetAnim(8, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 3);
            break;
        case 1:
            API_MapActor_SetAnim(8, 1);
            break;
        case 2:
            API_MapActor_SetAnim(8, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 5);
            break;
        case 3:
            API_MapActor_SetAnim(8, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 4);
            break;
        case 4:
            API_MapActor_SetAnim(8, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 3);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 3);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 1);
            break;
        case 5:
            API_MapActor_SetAnim(8, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 2);
            break;
        case 6:
            API_MapActor_SetAnim(8, 6);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 8);
            break;
        case 8:
            API_MapActor_SetAnim(8, 6);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 9);
            break;
        case 9:
            API_MapActor_SetAnim(8, 6);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 10);
            break;
        case 10:
            API_MapActor_SetAnim(8, 6);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 8);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 6);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 8);
            API_WaitFrames(6);
            API_MapActor_SetAnim(8, 6);
            break;
        case 7:
        case 11:
            API_MapActor_SetAnim(8, 6);
            break;
        }
    } else {
        switch (sequence) {
        case 0:
            API_MapActor_SetAnim(9, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(9, 3);
            break;
        case 2:
            API_MapActor_SetAnim(9, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(9, 5);
            break;
        case 3:
            API_MapActor_SetAnim(9, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(9, 4);
            break;
        case 4:
            API_MapActor_SetAnim(9, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(9, 3);
            API_WaitFrames(6);
            API_MapActor_SetAnim(9, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(9, 3);
            API_WaitFrames(6);
            API_MapActor_SetAnim(9, 1);
            break;
        case 1:
            API_MapActor_SetAnim(9, 1);
            break;
        case 5:
            API_MapActor_SetAnim(9, 1);
            API_WaitFrames(6);
            API_MapActor_SetAnim(9, 2);
            break;
        }
    }
    API_WaitFrames(12);
}
extern void __vec3_translate(int, int, void *);
extern void __Func_8003f3c(int);

void OvlFunc_917_200952c(char *p) {
    short *cnt = (short *)(p + 0x64);
    if (*cnt <= 0x77) {
        int vec[3];
        short angle;
        vec[0] = *(int *)(p + 0x38);
        vec[1] = *(int *)(p + 0x3c);
        vec[2] = *(int *)(p + 0x40);
        angle = *(short *)(p + 0x66);
        __vec3_translate(*cnt << 16, (*cnt * 3 << 8) + angle, vec);
        *(int *)(p + 8) = vec[0];
        *(int *)(p + 0xc) = vec[1];
        *(int *)(p + 0x10) = vec[2];
        *(int *)(p + 0x18) += 0x147;
        *(int *)(p + 0x1c) += 0x147;
        (*cnt)++;
    } else {
        char *sprite = *(char **)(p + 0x50);
        __Func_8003f3c(*(unsigned char *)(sprite + 0x1c));
        __DeleteActor(p);
    }
}
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20095a0.s");
extern int __CheckPartyItem(int);
extern int __CheckItem(int, int);
extern void *__GetUnit(int);

void OvlFunc_917_200972c(int item, int replace_item) {
    int unit = __CheckPartyItem(item);
    if (unit != -1) {
        int slot = __CheckItem(unit, item);
        if (slot != -1) {
            void *u = __GetUnit(unit);
            int r3 = slot * 2;
            r3 += 0xd8;
            *(short *)((char *)u + r3) = replace_item;
        }
    }
}
extern void OvlFunc_917_2009838(void);
extern void OvlFunc_917_2009858(void);
extern unsigned short OvlFunc_917_20097d0(unsigned short, int);
extern void __Func_8091200(int, int);

void OvlFunc_917_2009768(int arg0) {
    unsigned int i;
    OvlFunc_917_2009838();
    i = 0;
    do {
        unsigned int idx = i >> 16;
        if (i + 0xffef0000 > 0x60000) {
            if ((unsigned int)((idx + 0xff3f) << 16) > 0x70000) {
                unsigned short *pltt = (unsigned short *)(0x5000000 + (idx << 1));
                *pltt = OvlFunc_917_20097d0(*pltt, arg0);
            }
        }
        {
            unsigned int next = i + 0x10000;
            i = next;
            if (next > 0xdf0000) break;
        }
    } while (1);
    OvlFunc_917_2009878();
    OvlFunc_917_2009858();
    __Func_8091200(0x10000, 0);
}
extern int _divsi3_RAM(int, int);

unsigned short OvlFunc_917_20097d0(unsigned short c, int factor) {
    short r = c & 0x1f;
    short g = ((unsigned int)c >> 5) & 0x1f;
    short b = ((unsigned int)c >> 10) & 0x1f;

    r += _divsi3_RAM(r, factor * 4);
    g -= _divsi3_RAM(g, factor);
    b -= _divsi3_RAM(b, factor);

    if (r > 0x1f) {
        r = 0x1f;
    }
    return (b << 10) | (g << 5) | r;
}

#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L1de0[] __asm__(".Lm917_1de0");

void OvlFunc_917_2009838(void) {
    DMA3_COPY((void *)iwram_3001ed0, L1de0, 0x380);
}

#include "dma.h"
extern unsigned char L24e0[] __asm__(".Lm917_24e0");

void OvlFunc_917_2009858(void) {
    DMA3_COPY((void *)iwram_3001ed0, L24e0, 0x380);
}

extern void __Func_8091220(int, int);

void OvlFunc_917_2009878(void) {
    void *dst = (void *)iwram_3001ed0;
    DMA3_COPY((void *)0x5000000, dst, 0x1c0);
    DMA3_COPY((void *)0x5000200, (char *)dst + 0x1c0, 0x1c0);
    __Func_8091220(0x10000, 0);
}
extern void __Func_8091200(int, int);

void OvlFunc_917_20098b8(int arg0) {
    void *dst = (void *)iwram_3001ed0;
    if (arg0 != 0) {
        DMA3_COPY(L24e0, dst, 0x380);
    } else {
        DMA3_COPY(L1de0, dst, 0x380);
    }
    __Func_8091200(0x10000, 0);
    OvlFunc_917_2009878();
}
INCLUDE_ASM("asm/maps/kolima_forest_5/kolima_forest_5_data.s");

INCLUDE_ASM("asm/maps/kolima_forest_5/imports.s");
