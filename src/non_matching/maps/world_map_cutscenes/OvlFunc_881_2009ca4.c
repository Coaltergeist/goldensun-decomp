#include "api.h"
__asm__(".equ .LWorldMapSpinStep, 0x1000");
extern unsigned char WorldMapSpinStep[] __asm__(".LWorldMapSpinStep");

__asm__(".equ .LWorldMapTutorialMessage, 0xc64");
extern unsigned char WorldMapTutorialMessage[] __asm__(".LWorldMapTutorialMessage");
static inline void WorldMapHalf(unsigned short *p,int value) { *p=value; }
static inline void WorldMapByte(unsigned char *p,int value) { *p=value; }
static inline void WorldMapDjinni(unsigned int a,unsigned int b,unsigned int c) { extern int __GiveDjinni(unsigned int,unsigned int,unsigned int); __GiveDjinni(a,b,c); }
static inline void WorldMapDjinniState(unsigned int a,unsigned int b,unsigned int c) { extern void __Func_807a458(unsigned int,unsigned int,unsigned int); __Func_807a458(a,b,c); }
static inline unsigned char *WorldMapMode(unsigned char *actor,int value) { unsigned char *p=actor+0x55; *p=value; return p; }
void OvlFunc_881_2009ca4(void)
{
    extern unsigned char CS_iwram_3001e40[] __asm__("iwram_3001e40");
    extern void __Actor_SetColorswap(void *, int);
    extern void __Func_8019908(unsigned int, unsigned int);
    extern unsigned int __Func_802899c(unsigned int, unsigned int);
    extern void __Func_807808c(unsigned int);
    extern void __Func_807a458(unsigned int, unsigned int, unsigned int);
    extern void __Func_808c44c(void);
    extern void __Func_808c4c0(void);
    extern int __Func_8091c7c(int, int);
    extern void __Func_80936a0(unsigned int, unsigned int);
    extern void __Func_8093710(void);
    extern void __Func_80955b0(unsigned int, unsigned int, unsigned int);
    extern void __Func_8096fb0(int, int);
    extern void __Func_8097194(void);
    extern int __Func_80aa56c(void);
    extern int __GiveDjinni(unsigned int, unsigned int, unsigned int);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_881_2009c08(void);
    extern void OvlFunc_881_200c058(unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    unsigned char * djinn;
    int midpointX, midpointZ, counter, replies, message;
    unsigned char *spriteMode;
    int flagValue1;
    int choice2;
    int choice3;
    int choice4;
    unsigned char *actor;
    
    djinn = __MapActor_GetActor(8);
    actor = __MapActor_GetActor(0);
    midpointX = (int)((unsigned int)*(int *)(actor + 8) - 0x15d00000u) / 2 + 0x15d00000;
    midpointZ = (int)((unsigned int)*(int *)(actor + 0x10) - 0x5300000u) / 2 + 0x5300000;
    flagValue1 = API_GetFlag(0x16e);
    if (flagValue1 == 0) {
        __Func_807808c(1);
        API_SetFlag(0x16e);
        API_CutsceneStart();
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(8, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
        }
        WorldMapDjinni(0, 0, 0);
        WorldMapDjinniState(0, 0, 0);
        __Func_808c44c();
        API_MapActor_Face(0, 8, 0);
        API_CutsceneWait(10);
        API_MapActor_Emote(0, 0x101, 0x3c);
        WorldMapHalf((unsigned short *)(djinn + 0x66), 1);
        API_MapActor_Face(8, 0, 0);
        API_WaitFrames(16);
        API_MessageID(0xc4f);
        API_ActorMessage(8, 0);
        __Func_808c4c0();
        __Func_80936a0(0x13333, 6);
        __Func_8093710();
        __Func_808c44c();
        spriteMode = WorldMapMode(djinn, 2);
        *(int *)(djinn + 0x48) = 0x4000;
        *(int *)(djinn + 0x30) = 0x10000;
        *(int *)(djinn + 0x34) = 0x10000;
        *(int *)(djinn + 0x28) = 0;
        *(int *)(djinn + 0x14) = 0;
        API_Actor_TravelTo(djinn, 0x15d00000, 0, 0x5300000);
        for (counter = 15; counter >= 0; counter--) {
            *(int *)(djinn + 0x18) = (*(int *)(djinn + 0x18) + 0x800);
            *(int *)(djinn + 0x1c) = (*(int *)(djinn + 0x1c) + 0x800);
            API_WaitFrames(1);
        }
        API_MapActor_Face(8, 0, 0);
        API_MapActor_Face(0, 8, 0);
        API_WaitFrames(16);
        *(int *)(djinn + 0x6c) = 0;
        __Actor_SetColorswap(djinn, 0);
        *(int *)(djinn + 0x48) = 0x10000;
        API_ActorMessage(8, 0);
        API_PlaySound(0x83);
        __Func_8096fb0(0x8c, 0);
        for (counter = 59; counter >= 0; counter--) {
            if ((*(int *)CS_iwram_3001e40 & 2) != 0) {
                __Actor_SetColorswap(djinn, 7);
            } else {
                __Actor_SetColorswap(djinn, 0);
            }
            if ((*(int *)CS_iwram_3001e40 & 15) == 0) {
                OvlFunc_881_200c058((unsigned int)djinn);
            }
            API_WaitFrames(1);
        }
        __Func_8097194();
        __Actor_SetColorswap(djinn, 0);
        API_Func_80925cc(8, 2);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(0, 0x102, 30);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(0, 0x101, 30);
        API_MapActor_TravelToAnimWait(8, (midpointX >> 16), (midpointZ >> 16));
        API_MapActor_SetAnim(0, 22);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(0, 0x101, 0x28);
        API_MapActor_Jump(8, 4, 30);
        __Func_8019908(0x12c, 4);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(0, 0x100, 30);
        API_ActorMessage(8, 0);
        API_Func_80925cc(0, 2);
        API_ActorMessage(8, 0);
        API_MapActor_Jump(8, 2, 30);
        API_ActorMessage(8, 0);
        *(unsigned char *)spriteMode = 0;
        API_Actor_TravelTo(djinn, midpointX, 0x100000, midpointZ);
        for (counter = 15; counter >= 0; counter--) {
            *(unsigned short *)(djinn + 0x6) = (*(unsigned short *)(djinn + 0x6) + (int)WorldMapSpinStep);
            API_WaitFrames(1);
        }
        API_MapActor_SetAnim(0, 1);
        API_ActorMessage(8, 0);
        *(unsigned char *)spriteMode = 2;
        *(int *)(djinn + 0x28) = 0;
        *(int *)(djinn + 0x14) = 0;
        for (counter = 7; counter >= 0; counter--) {
            *(unsigned short *)(djinn + 0x6) = (*(unsigned short *)(djinn + 0x6) + (int)WorldMapSpinStep);
            API_WaitFrames(1);
        }
        API_MapActor_SetAnim(0, 22);
        API_ActorMessage(8, 0);
        API_MapActor_Emote(8, 0x102, 30);
        API_MapActor_Face(8, 0, 0);
        API_Func_80925cc(8, 2);
        API_ActorMessage(8, 0);
        API_MapActor_Jump(8, 2, 30);
        __ShowActorMessage_NoWait(8, 0);
        replies = 0;
L881_1fd2:;
        choice2 = __Func_8091c7c(0, 0);
        if (choice2 != 1) goto L881_201a;
        API_MapActor_Jump(8, 2, 20);
        API_MapActor_Jump(8, 2, 20);
        if (replies != 6) goto L881_2006;
        API_MessageID(0xc62);
        API_ActorMessage(8, 0);
        goto L881_2044;
L881_2006:;
        API_MessageID((replies + 0xc5c));
        __ShowActorMessage_NoWait(8, 0);
        replies++;
        goto L881_1fd2;
L881_201a:;
        API_MapActor_SetAnim(0, 22);
        API_MapActor_Jump(8, 2, 20);
        API_MapActor_Jump(8, 4, 20);
        API_MessageID(0xc63);
        API_ActorMessage(8, 0);
L881_2044:;        __Func_8019908(0x12c, 4);
        API_PlaySound(0x51);
        message = (int)WorldMapTutorialMessage;
        API_Func_801776c(message++, 3);
        API_MessageID(message);
        API_MapActor_Jump(8, 2, 20);
        API_ActorMessage(8, 0);
        API_PlaySound(9);
        OvlFunc_881_2009c08();
        __Func_808c4c0();
    } else {
        API_CutsceneStart();
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(8, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
        }
        *(int *)(djinn + 0x28) = 0xa0000;
        API_Actor_TravelTo(djinn, midpointX, 0, midpointZ);
        API_CutsceneWait(30);
        __Func_808c44c();
        API_MapActor_Face(8, 0, 0);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_SetAnim(0, 22);
        API_MessageID(0xc68);
        API_MapActor_Jump(8, 2, 20);
        API_MapActor_Jump(8, 2, 20);
        API_ActorMessage(8, 0);
        API_Func_80925cc(8, 2);
        API_ActorMessage(8, 0);
        API_PlaySound(0x6f);
        __Func_802899c(0, 2);
        API_SetFlag(0x16f);
        API_ClearFlag(0x171);
        __Func_80aa56c();
        API_MessageID(0xc6a);
        API_Actor_TravelTo(djinn, 0x15d00000, 0, 0x5300000);
        API_CutsceneWait(30);
        API_ActorMessage(8, 0);
        API_MapActor_Face(8, 0, 0);
        API_ActorMessage(8, 0);
        __ShowActorMessage_NoWait(8, 0);
        choice3 = __Func_8091c7c(0, 0);
        if (choice3 != 1) goto L881_21b0;
        API_MapActor_SetAnim(0, 22);
        API_Func_80925cc(8, 2);
        API_MessageID(0xc6d);
        __ShowActorMessage_NoWait(8, 0);
        choice4 = __Func_8091c7c(0, 0);
        if (choice4 == 1) goto L881_21b0;
        API_ActorMessage(8, 0);
        API_MapActor_TravelToAnimWait(8, (midpointX >> 16), (midpointZ >> 16));
        OvlFunc_881_2009c08();
        __Func_808c4c0();
        return;
L881_21b0:;
        API_MapActor_SetAnim(0, 22);
        API_MessageID(0xc6f);
        API_MapActor_Jump(8, 2, 20);
        API_MapActor_Jump(8, 2, 20);
        API_MapActor_DoAnim(0, 3);
        API_MapActor_Emote(8, 0x100, 30);
        API_ActorMessage(8, 0);
        API_SetFlag(0x16f);
        API_SetFlag(0x171);
        __Func_80aa56c();
        API_MapActor_Jump(8, 2, 20);
        API_ActorMessage(8, 0);
        __Func_808c4c0();
        __Func_80955b0(8, 0, 0);
        API_PlaySound(0x2a);
        API_CutsceneEnd();
        API_ClearFlag(0x16e);
        API_ClearFlag(0x16f);
        API_ClearFlag(0x171);
    }
}
