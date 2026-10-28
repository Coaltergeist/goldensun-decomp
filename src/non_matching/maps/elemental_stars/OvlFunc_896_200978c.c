#include "api.h"

__asm__(".equ .LStarsOfferMessage, 0x10b0");
__asm__(".equ .LStarsRefusalMessage, 0x10b2");
extern unsigned char StarsOfferMessage[] __asm__(".LStarsOfferMessage");
extern unsigned char StarsRefusalMessage[] __asm__(".LStarsRefusalMessage");
static inline void StarsByte(unsigned char *p, int value) { *p = value; }
void OvlFunc_896_200978c(void)
{
    extern void __Func_800fe9c(void);
    extern void __Func_8019aa0(int, int, int);
    extern int __Func_8091c7c(int, int);
    extern int StarsActorAddress(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_896_200c248(unsigned int, unsigned int);
    extern int __ShowActorMessage_NoWait(int, int);
    extern void *__GetUnit(unsigned int);
    unsigned short *items;
    unsigned int item;
    int slots, starCount, offerMessage, refusalMessage;
        unsigned char * isaacMotion;
    unsigned char * savedActor;
    unsigned char * garetMotion;
    int choice1;
    unsigned char *actor;

    API_PlaySound(0xa1);
    API_Func_80925cc(12, 3);
    API_CutsceneWait(0x28);
    actor = (unsigned char *)StarsActorAddress(12);
    if (actor != 0) {
        API_MapActor_SetPos(13, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    API_MapActor_SetPos(12, 0, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(13, 0x3000, 0x28);
    API_Func_80925cc(5, 3);
    API_Func_80925cc(5, 3);
    API_CutsceneWait(0x28);
    API_Func_80925cc(5, 2);
    OvlFunc_896_200c248(5, 20);
    API_MapActor_DoAnim(13, 3);
    API_CutsceneWait(10);
    API_Func_809259c(5, 3);
    API_Func_8092adc(9, 0x8000, 10);
    API_Func_80925cc(9, 2);
    OvlFunc_896_200c248(9, 0x28);
    API_MapActor_DoAnim(5, 3);
    API_CutsceneWait(0x28);
    API_Func_8092adc(9, 0xb000, 0x28);
    API_Func_80925cc(13, 2);
    OvlFunc_896_200c248(13, 20);
    API_Func_80925cc(5, 1);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(13, 3);
    API_CutsceneWait(10);
    OvlFunc_896_200c248(13, 0x28);
    API_Func_809259c(10, 1);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(10);
    OvlFunc_896_200c248(10, 10);
    API_Func_80925cc(11, 1);
    API_MapActor_SetAnim(11, 3);
    OvlFunc_896_200c248(11, 0x50);
    API_Func_80925cc(13, 2);
    OvlFunc_896_200c248(13, 0x28);
    API_Func_80925cc(5, 2);
    API_CutsceneWait(10);
    OvlFunc_896_200c248(5, 10);
    API_Func_809259c(13, 2);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x50);
    API_MapActor_DoAnim(5, 4);
    API_CutsceneWait(20);
    OvlFunc_896_200c248(5, 0x50);
    API_MapActor_DoAnim(13, 4);
    OvlFunc_896_200c248(13, 0x50);
    API_Func_80925cc(5, 2);
    API_CutsceneWait(4);
    OvlFunc_896_200c248(5, 20);
    API_Func_80925cc(10, 1);
    API_MapActor_SetAnim(10, 3);
    OvlFunc_896_200c248(10, 10);
    API_Func_80925cc(11, 1);
    OvlFunc_896_200c248(11, 10);
    API_Func_80925cc(10, 1);
    OvlFunc_896_200c248(10, 10);
    API_Func_8092adc(9, 0x3000, 0x50);
    API_MapActor_Emote(9, 0x105, 0x50);
    API_Func_80925cc(11, 1);
    API_Func_8092adc(11, 0x5000, 0x28);
    API_Func_809259c(11, 2);
    OvlFunc_896_200c248(11, 20);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_80933f8(0x1050000, -1, 0x1d20000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0x3000, 0);
    API_Func_8092adc(1, 0xb000, 20);
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    API_MapActor_SetSpeed(1, 0x8000, 0x4000);
    API_MapActor_TravelToAnim(0, 0xf4, 0x1de);
    API_MapActor_TravelToAnimWait(1, 0x104, 0x1ea);
    API_MapActor_WaitMovement(0);
    API_MapActor_SetAnim(0, 1);
    API_Func_8092adc(0, 0x3000, 0);
    API_Func_8092adc(1, 0xb000, 20);
    API_Func_80925cc(0, 2);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(20);
    items = (unsigned short *)__GetUnit(1);
    starCount = 0;
    items += 0x6c;
    for (slots = 14; slots >= 0; slots--) {
        item = *items++ & 0x1ff;
        if (item - 0xdc <= 1 || item == 0xdf) starCount++;
    }
    __ShowActorMessage_NoWait(1, 0);
    choice1 = __Func_8091c7c(0, 0);
    if (choice1 == 0) {
        offerMessage = (int)StarsOfferMessage;
        API_MessageID(offerMessage);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(10);
        if (starCount <= 2) {
            OvlFunc_896_200c248(1, 30);
            API_MapActor_TravelToAnimWait(1, 0xfc, 0x1e6);
            API_Func_80925cc(1, 2);
            API_CutsceneWait(10);
            __Func_8019aa0(offerMessage + 1, 1, 0);
        } else {
            API_MessageID(0x10b4);
            OvlFunc_896_200c248(1, 30);
        }
    } else {
        if (starCount <= 2) {
            refusalMessage = (int)StarsRefusalMessage;
            API_MessageID(refusalMessage);
            API_Func_80925cc(1, 3);
            API_MapActor_DoAnim(1, 4);
            OvlFunc_896_200c248(1, 10);
            API_MapActor_DoAnim(1, 4);
            API_Func_80925cc(1, 1);
            API_MapActor_SetSpeed(1, 0x20000, 0x10000);
            savedActor = (unsigned char *)StarsActorAddress(0);
            isaacMotion = (unsigned char *)((savedActor + 0x5a));
            *(unsigned char *)isaacMotion = (0xfe & *(unsigned char *)isaacMotion);
            API_MapActor_TravelToAnimWait(1, 0xf4, 0x1de);
            API_MapActor_SetSpeed(0, 0x18000, 0xc000);
            API_MapActor_Jump(0, 6, 0);
            API_MapActor_TravelTo(0, 0xda, 0x1d7);
            refusalMessage++;
            API_MapActor_WaitMovement(0);
            __Func_8019aa0(refusalMessage, 1, 0);
            API_Func_80925cc(0, 2);
            API_Func_8092adc(0, 0, 30);
            StarsByte(isaacMotion, 1 | *isaacMotion);
        } else {
            API_MessageID(0x10b5);
            API_Func_80925cc(1, 3);
            API_MapActor_DoAnim(1, 4);
            OvlFunc_896_200c248(1, 10);
            API_MapActor_DoAnim(1, 4);
            API_Func_8092adc(0, 0xe000, 30);
        }
    }
    API_Func_80933d4(0x8000, 0x1000);
    API_SetCameraTarget(1, 1);
    API_Func_8093530();
    API_Func_8092adc(1, 0x8000, 30);
    API_Func_80925cc(1, 2);
    API_MapActor_SetSpeed(1, 0x8000, 0x4000);
    savedActor = (unsigned char *)StarsActorAddress(1);
    garetMotion = (unsigned char *)((savedActor + 0x5a));
    *(unsigned char *)garetMotion = (0xfe & *(unsigned char *)garetMotion);
    API_MapActor_TravelToAnimWait(1, 0x108, 0x1e2);
    StarsByte(garetMotion, 1 | *garetMotion);
    API_MapActor_TravelToAnimWait(1, 0x116, 0x1e0);
    *(int *)(savedActor + 0x30) = 0x30000;
    *(int *)(savedActor + 0x34) = 0x20000;
    API_PlaySound(0x99);
    *(int *)(savedActor + 0x28) = 0x60000;
    API_MapActor_SetAnim(1, 7);
    API_MapActor_TravelToWait(1, 0x138, 0x1d6);
    API_MapActor_SetAnim(1, 1);
    API_CutsceneWait(30);
    API_PlaySound(0x99);
    *(int *)(savedActor + 0x28) = 0x60000;
    API_MapActor_SetAnim(1, 7);
    API_MapActor_TravelToWait(1, 0x156, 0x1d6);
    API_MapActor_SetAnim(1, 1);
    API_CutsceneWait(30);
    API_PlaySound(0x99);
    *(int *)(savedActor + 0x28) = 0x60000;
    API_MapActor_SetAnim(1, 7);
    API_MapActor_TravelToWait(1, 0x178, 0x1d6);
    API_MapActor_SetAnim(1, 1);
}
