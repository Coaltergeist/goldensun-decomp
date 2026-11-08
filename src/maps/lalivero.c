/* rom_7f148c (overlay file 966): consolidated TU — lalivero map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/lalivero/exports.s");

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_966_2008030(void) {
    __Func_80955b0(0x17, 2, 6);
}

extern unsigned char gOvl_0200975c[];

unsigned int Lalivero_GetEntrances(void) {
    return (unsigned int)gOvl_0200975c;
}

unsigned int Lalivero_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098c4[];

void *Lalivero_GetExits(void) {
    return (void *)gOvl_020098c4;
}

extern unsigned char L1a98[] __asm__(".Lm966_1a98");
extern unsigned char L1900[] __asm__(".Lm966_1900");

unsigned int *Lalivero_GetActors(void)
{
    if (__GetFlag(0x9a7))
        return (unsigned int *)L1a98;
    return (unsigned int *)L1900;
}

extern unsigned char ActorCmd_ARRAY_966__02009638[];
void __Func_8092adc(int, int, int);

void OvlFunc_966_2008078(int a)
{
    *(int *)((char *)__MapActor_GetActor(a) + 0x18) = 0x10000;
    *(int *)((char *)__MapActor_GetActor(a) + 0x1c) = 0x10000;
    __MessageID(0x26af);
    __ActorMessage(a, 0);
    API_Func_8092adc(a, 0xc000, 0);
    __CutsceneWait(0x14);
    __MapActor_SetBehavior(a, ActorCmd_ARRAY_966__02009638);
}
extern unsigned char Lconst_28be[] __asm__(".Lconst_28be");
__asm__(".equ .Lconst_28be, 0x28be");

void OvlFunc_966_20080c4(int a)
{
    int msg = (int)Lconst_28be;

    __MessageID(msg);
    __ShowActorMessage_NoWait(a, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(10);
        __MessageID(msg + 1);
    } else {
        __MessageID(msg + 2);
    }
    __ActorMessage(a, 0);
}
void __SetFlag(int);
void __MessageID(int);
void __ActorMessage(int, int);
void __MapActor_SetSpeed(int, int, int);
void __Func_8092304(int, int, int);
void __Func_8092adc(int, int, int);
void __CutsceneWait(int);

void OvlFunc_966_200810c(void)
{
    __SetFlag(0x9bb);
    __MessageID(0x28b8);
    __ActorMessage(0x12, 0);
    API_MapActor_SetSpeed(0x12, 0x10000, 0x8000);
    API_Func_8092304(0x12, -16, 0);
    __Func_8092adc(0x12, 0, 0);
    __CutsceneWait(10);
}
extern unsigned char iwram_3001ebc[];
extern short L1ca8[][2] __asm__(".Lm966_1ca8");
extern unsigned char L1cee[] __asm__(".Lm966_1cee");
extern unsigned char L1cd8[] __asm__(".Lm966_1cd8");

void __PlaySound(int);
int __Func_8010560(void *, unsigned short, unsigned short);
void __Func_80922c4(int, int, int);
void __Func_8092208(int, int, int);
void __Func_8091e9c(int);

void OvlFunc_966_2008158(void)
{
    short r7;
    short r5, r6;

    r7 = *(short *)((char *)*(unsigned int *)iwram_3001ebc + 0xb6 * 2);
    r5 = L1ca8[r7][0];
    r6 = L1ca8[r7][1];
    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 2;
    __PlaySound(0x9e);
    if (r7 == 6) {
        __Func_8010560(L1cee, r5, r6);
        API_Func_80922c4(0, 0, -16);
    } else {
        __Func_8010560(L1cd8, r5, r6);
        API_Func_8092208(0, 2, -16);
    }
    __CutsceneWait(10);
    *(unsigned int *)((char *)*(unsigned int *)iwram_3001ebc + 0xe4 * 2) = 0x10;
    __Func_8091e9c(r7);
}

void OvlFunc_966_20081f0(void) {
    unsigned int r2;
    unsigned int r3;

    r2 = *(unsigned int *)iwram_3001ebc;
    r3 = *(short *)((char *)r2 + 0xb6 * 2);
    *(unsigned int *)((char *)r2 + 0xe4 * 2) = 0x10;
    __Func_8091e9c(r3);
}

void __MapActor_DoAnim(int, int);
void __Func_80925cc(int, int);
void __MapActor_Emote(int, int, int);

static inline void MapActor_Emote(int actor, int emote, int c) {
    __MapActor_Emote(actor, emote << 1, c);
}

void API_MapActor_SetPos(int, int, int);

void API_MapActor_SetAnim(int, int);

void API_MapTransitionIn(void);

void API_WaitMapTransition(void);

void API_Func_809233c(int, int, int, int);

void API_MapActor_WaitMovement(int);

void API_MapActor_Face(int, int, int);

void API_MapActor_TravelToAnimWait(int, int, int);

void API_MapActor_TravelTo(int, int, int);

void OvlFunc_966_2008218(void)
{
    API_CutsceneStart();
    API_MessageID(0x2694);
    API_MapActor_SetPos(0, 0xf80000, 0x1a80000);
    API_Func_8092adc(0, 0xc000, 0);
    API_MapActor_SetAnim(8, 0);
    API_MapActor_SetAnim(9, 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x14);
    API_Func_809233c(0x16, 8, -0x10, 0xc000);
    API_MapActor_WaitMovement(0x16);
    API_CutsceneWait(0x14);
    MapActor_Emote(0x16, 0x81, 0x3c);
    API_MapActor_SetSpeed(0x16, 0x10000, 0x8000);
    API_Func_8092304(0x16, 0, -0x10);
    API_CutsceneWait(0xa);
    API_MapActor_Face(0x16, 8, 0x28);
    API_MapActor_Face(0x16, 9, 0x28);
    API_MapActor_Face(0x16, 8, 0x28);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0x16, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0x16, 0x4000, 0);
    API_CutsceneWait(0x1e);
    API_ShowActorMessage_NoWait(0x16, 0);
    API_Func_8091c7c(0, 0);
    API_CutsceneWait(0x1e);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Face(0x16, 8, 0x1e);
    API_Func_80925cc(0x16, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_MapActor_SetAnim(8, 1);
    API_CutsceneWait(0x14);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x1e);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0x16, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(9, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Face(0x16, 9, 0);
    API_MapActor_Face(0, 9, 0x1e);
    API_MapActor_SetAnim(9, 1);
    API_CutsceneWait(0xa);
    MapActor_Emote(0x16, 0x84, 0x28);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x14);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0x16, 0x4000, 0);
    API_CutsceneWait(0x1e);
    API_Func_80925cc(0x16, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x1e);
    API_ActorMessage(9, 0);
    API_CutsceneWait(0xa);
    MapActor_Emote(0x16, 0x81, 0x32);
    API_MapActor_Face(0x16, 9, 0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0x16, 0x4000, 0);
    API_CutsceneWait(0x1e);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x14);
    API_CutsceneWait(0x14);
    MapActor_Emote(0x16, 0x81, 0x32);
    API_MapActor_SetSpeed(0x16, 0x1cccc, 0xe666);
    API_MapActor_TravelToAnimWait(0x16, 0x100, 0x168);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0x16, 0, 0);
    API_CutsceneWait(0x1e);
    API_Func_8092adc(0x16, 0x8000, 0);
    API_CutsceneWait(0x1e);
    API_Func_8092adc(0x16, 0xc000, 0);
    API_CutsceneWait(0x1e);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(9, 0);
    API_CutsceneWait(0xa);
    MapActor_Emote(0x16, 0x80, 0x28);
    API_Func_8092adc(0x16, 0x2000, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(0x1e);
    API_ActorMessage(9, 0);
    API_CutsceneWait(0x14);
    API_Func_80925cc(0x16, 2);
    API_CutsceneWait(0x14);
    API_MapActor_SetSpeed(0x16, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(0x16, 0x100, 0x180);
    API_Func_8092adc(0x16, 0, 0);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0x16, 0x8000, 0);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(0x16, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_MapActor_SetSpeed(0x16, 0x13333, 0x9999);
    API_Func_8092304(0x16, 0, 0x10);
    API_CutsceneWait(0xa);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    MapActor_Emote(0, 0x81, 0x50);
    API_MapActor_Emote(0x16, 0x101, 0x50);
    API_MapActor_Face(0x16, 8, 0x28);
    API_MapActor_Face(0x16, 9, 0x28);
    API_Func_8092adc(0x16, 0x4000, 0);
    API_CutsceneWait(0x1e);
    API_Func_80925cc(0x16, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(9, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0x16, 0, 0);
    API_MapActor_Face(0, 9, 0x1e);
    API_CutsceneWait(0xa);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0xa);
    API_Func_8092adc(0x16, 0x8000, 0);
    API_MapActor_Face(0, 8, 0x46);
    API_Func_8092adc(0x16, 0x4000, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0, 0xc000, 0);
    API_CutsceneWait(0x28);
    API_Func_80925cc(0x16, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage(0x16, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(0x16, 3);
    API_CutsceneWait(0x1e);
    API_MapActor_SetSpeed(0x16, 0x13333, 0x9999);
    API_MapActor_SetAnim(0x16, 2);
    {
        void *actor = (void *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(0x16, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
    }
    }
    API_MapActor_WaitMovement(0x16);
    API_MapActor_SetPos(0x16, 0, 0);
    API_CutsceneWait(0xa);
    API_CutsceneEnd();}

static inline void LaliveroTiles(int x, int y, int width, int height, int destX, int destY) {
    extern void __Func_8010788(int, int, int, int, int, int);
    __Func_8010788(x, y, width, height, destX, destY);
}

static inline void LaliveroByte(unsigned char *p, int v) { *p = v; }

void OvlFunc_966_20087c4(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_8010788(int, int, int, int, int, int);
    extern int __Func_8091a58(int, int);
    extern int __Func_8091c7c(int, int);
    extern unsigned char *LaliveroSceneActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_966_2009090(void);
    extern int __ShowActorMessage_NoWait(int, int);
    int choice1;
    int choice2;
    int flagValue3;
    unsigned char *actor;

    API_SetFlag(0x9ba);
    API_CutsceneStart();
    API_MessageID(0x288e);
    API_MapActor_TravelToAnimWait(0, 0x68, 0x178);
    API_Func_8092adc(0, 0, 0);
    API_Func_809233c(1, -0x20, 0, 0);
    API_Func_809233c(3, -16, 16, 0xe000);
    API_Func_809233c(2, 0, 16, 0xc000);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(30);
    __ShowActorMessage_NoWait(1, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x8000, 0);
    API_CutsceneWait(10);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(3, 4);
        API_CutsceneWait(20);
        API_ActorMessage(3, 0);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(3, 4);
        API_CutsceneWait(20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage(3, 0);
    }
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x108, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_Func_8092304(0, -16, 0);
    API_Func_80922c4(2, 0, -16);
    API_Func_80922c4(3, 0, -8);
    API_Func_8092304(0, 0, -16);
    API_MapActor_SetAnim(3, 1);
    API_MapActor_SetAnim(2, 1);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(22, 0x4000, 0);
    API_CutsceneWait(0x50);
    API_MapActor_SetSpeed(22, 0xcccc, 0x6666);
    actor = LaliveroSceneActor(22);
    actor += 0x55;
    LaliveroByte(actor, 2);
    API_Func_8092b08(22, 2);
    LaliveroTiles(0x22, 0, 1, 2, 4, 18);
    API_PlaySound(0x9e);
    API_CutsceneWait(20);
    API_MapActor_SetPos(22, 0x480000, 0x1380000);
    API_CutsceneWait(20);
    API_Func_8092304(22, 0, 16);
    LaliveroTiles(0x20, 0, 1, 2, 4, 18);
    API_PlaySound(0x9f);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x28);
    API_Func_8092304(22, 16, 0);
    API_Func_8092adc(22, 0x4000, 0);
    API_CutsceneWait(20);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(22, 0x102, 0x28);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x100, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_TurnToFaceActor(1, 0, 0);
    API_MapActor_TurnToFaceActor(3, 2, 0);
    API_CutsceneWait(0x3c);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_Func_8092adc(2, 0xc000, 0);
    API_Func_8092adc(3, 0xc000, 0);
    API_CutsceneWait(0x28);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x102, 0x28);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0xe000, 0);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(1, 0);
    choice2 = __Func_8091c7c(0, 0);
    if (choice2 == 0) {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(22, 4);
        API_CutsceneWait(20);
        API_ActorMessage(22, 0);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    } else {
        API_CutsceneWait(20);
        API_MapActor_DoAnim(22, 4);
        API_CutsceneWait(20);
        *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        API_ActorMessage(22, 0);
    }
    API_CutsceneWait(10);
    API_MapActor_Emote(2, 0x102, 0x28);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0xc000, 0);
    API_MapActor_Emote(22, 0x106, 0x32);
    API_ActorMessage(22, 0);
    API_CutsceneWait(20);
    API_MapActor_SetPos(25, 0x580000, 0x14c0000);
    API_ActorMessage(-1, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(3, 0x100, 0x28);
    API_MapActor_Jump(3, 4, 13);
    API_MapActor_Jump(3, 4, 30);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    flagValue3 = API_GetFlag(0x9bf);
    if (flagValue3 != 0) {
        OvlFunc_966_2009090();
    }
    API_MessageID(0x28a5);
    API_CutsceneWait(10);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(1, 0x100, 0x28);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(22, 2);
    API_CutsceneWait(20);
    API_ActorMessage(22, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(25, 0xcccc, 0x6666);
    API_MapActor_TravelBy(25, 0, 16);
    API_Func_8092304(22, 0, 16);
    API_CutsceneWait(30);
    API_MapActor_SetPos(25, 0, 0);
    *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
    __Func_8091a58(0xf2, 0);
    API_CutsceneWait(10);
    actor = LaliveroSceneActor(22);
    actor += 0x5a;
    LaliveroByte(actor, 0xfe & *actor);
    API_Func_8092304(22, 0, -16);
    actor = LaliveroSceneActor(22);
    actor += 0x5a;
    LaliveroByte(actor, 1 | *actor);
    API_Func_8092adc(22, 0x4100, 0);
    API_CutsceneWait(30);
    API_CutsceneWait(10);
    API_MapActor_Emote(22, 0x100, 0x28);
    API_ActorMessage(22, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_ActorMessage(22, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(0x32);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(30);
    API_Func_8092304(22, -16, 0);
    API_Func_8092adc(22, 0xc000, 0);
    API_CutsceneWait(20);
    LaliveroTiles(0x22, 0, 1, 2, 4, 18);
    API_PlaySound(0x9e);
    API_CutsceneWait(10);
    API_Func_8092304(22, 0, -16);
    API_MapActor_SetPos(22, 0, 0);
    API_CutsceneWait(10);
    LaliveroTiles(0x20, 0, 1, 2, 4, 18);
    API_PlaySound(0x9f);
    API_CutsceneWait(0x32);
    API_Func_8092adc(0, 0x4000, 0);
    API_MapActor_Face(1, 0, 0);
    API_MapActor_Face(2, 0, 0);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(3, 2);
    API_CutsceneWait(20);
    API_ActorMessage(3, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(2, 3);
    API_CutsceneWait(30);
    API_ActorMessage(2, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(3, 3);
    API_CutsceneWait(30);
    API_MapActor_SetSpeed(1, 0x13333, 0x9999);
    API_MapActor_SetSpeed(3, 0x13333, 0x9999);
    API_MapActor_SetSpeed(2, 0x13333, 0x9999);
    API_MapActor_SetAnim(1, 2);
    actor = LaliveroSceneActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetAnim(3, 2);
    actor = LaliveroSceneActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(3, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(3);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_SetAnim(2, 2);
    actor = LaliveroSceneActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(2, *(short *)(actor + 0xa), *(short *)(actor + 0x12));
    }
    API_MapActor_WaitMovement(2);
    API_MapActor_SetPos(2, 0, 0);
    API_CutsceneWait(10);
    API_CutsceneEnd();
}


void OvlFunc_966_2009090(void)
{
    __MessageID(0x28b0);
    __CutsceneWait(0x14);
    __Func_80925cc(0x16, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0x16, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0x16, 4);
    __CutsceneWait(0x14);
    __ActorMessage(0x16, 0);
    __CutsceneWait(0xa);
    MapActor_Emote(0, 0x80, 0);
    MapActor_Emote(1, 0x80, 0);
    MapActor_Emote(3, 0x80, 0);
    MapActor_Emote(2, 0x80, 0x37);
    __CutsceneWait(0xa);
    __Func_80925cc(1, 2);
    __CutsceneWait(0x14);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0x16, 4);
    __CutsceneWait(0x14);
    __ActorMessage(0x16, 0);
    __CutsceneWait(0xa);
    MapActor_Emote(3, 0x81, 0x28);
    __ActorMessage(3, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(1, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __Func_8092adc(2, 0x8000, 0);
    __CutsceneWait(0x41);
    __Func_8092adc(2, 0xc000, 0);
    __CutsceneWait(0x28);
    __MapActor_DoAnim(2, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(2, 0);
}

void OvlFunc_966_20091bc(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  unsigned long new_var3;
  unsigned long long new_var4;
  unsigned long new_var5;
  unsigned long long new_var6;
  __CutsceneStart();
  __MessageID(0x28b7);
  new_var = 1;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __ActorMessage(new_var2, 0);
  new_var4 = 0x10;
 do { new_var4 = (unsigned long) new_var4; } while (0);
  new_var3 = new_var4;
  new_var6 = 0;
 do { new_var6 = (unsigned long) new_var6; } while (0);
  new_var5 = new_var6;
  __Func_8092304(new_var5, 0, -(int) new_var3);
  __CutsceneEnd();
}

extern unsigned char L1ee4[] __asm__(".Lm966_1ee4");
extern unsigned char L1d04[] __asm__(".Lm966_1d04");

unsigned int *Lalivero_GetEvents(void)
{
    if (__GetFlag(0x9a7))
        return (unsigned int *)L1ee4;
    return (unsigned int *)L1d04;
}

#include "state/global_state.h"
extern GlobalState gState;

void __Actor_SetSpriteFlags(void *, int);
void *__galloc_iwram(int, int);
void __LoadItemIcon(int);
void __UploadSpriteGFX(int, int, void *);
void __gfree(int);
void __Func_8010704(int, int, int, int, int, int);
void __MapActor_SetPos(int, int, int);
void OvlFunc_966_2008218(void);

INCLUDE_ASM("asm/maps/lalivero/Lalivero_MapInit.s");
INCLUDE_ASM("asm/maps/lalivero/lalivero_data.s");

INCLUDE_ASM("asm/maps/lalivero/imports.s");
