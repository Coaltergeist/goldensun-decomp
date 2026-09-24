/* rom_78603c (overlay file 885): consolidated TU — vale_kraden map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/vale_kraden/exports.s");

extern void __MapActor_TravelToAnim();
extern unsigned short __atan2(int, int);

int OvlFunc_885_2008030(unsigned char *actor)
{
    unsigned char *target;
    int delta;
    int facing;
    int angle;

    target = *(unsigned char **)(actor + 0x68);
    if (target != 0) {
        actor[0x5a] &= 0xfe;
        angle = __atan2(*(int *)(target + 0x10) - *(int *)(actor + 0x10),
                        *(int *)(target + 8) - *(int *)(actor + 8));
        facing = *(unsigned short *)(actor + 6);
        delta = (short)(angle - facing);
        if (delta != 0) {
            if (delta > 0x1000) {
                delta = 0x1000;
            }
            if (delta < -0x1000) {
                delta = -0x1000;
            }
            *(unsigned short *)(actor + 6) = facing + delta;
        }
    }
    return 1;
}

extern unsigned char gOvl_02009cf4[];

unsigned int ValeKraden_GetEntrances(void) {
    return (unsigned int)gOvl_02009cf4;
}

int ValeKraden_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_918__02009db4[];

void *ValeKraden_GetExits(void) {
    return (void *)gScript_918__02009db4;
}
extern unsigned char gScript_918__02009ddc[];

void *ValeKraden_GetActors(void) {
    return (void *)gScript_918__02009ddc;
}

extern unsigned char L2028[] __asm__(".Lm885_2028");
extern unsigned char L1fb0[] __asm__(".Lm885_1fb0");
extern unsigned char L1efc[] __asm__(".Lm885_1efc");

unsigned char *ValeKraden_GetEvents(void) {
    if (__GetFlag(0x87a))
        return L2028;
    if (__GetFlag(0x834))
        return L1fb0;
    return L1efc;
}

extern unsigned char Lconst_f76[] __asm__(".Lconst_f76");
__asm__(".equ .Lconst_f76, 0xf76");

extern int __Func_8091c7c(int, int);

void OvlFunc_885_20080dc(void)
{
    int msg;

    __CutsceneStart();
    if (__GetFlag(0x815)) {
        __MessageID(0x11c4);
        API_ActorMessage(0xc, 0);
    } else {
        msg = (int)Lconst_f76;
        __MessageID(msg);
        API_MapActor_Face(0xc, 0, 10);
        API_Func_80925cc(0xc, 2);
        API_CutsceneWait(6);
        __ShowActorMessage_NoWait(0xc, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(msg + 1);
        } else {
            __MessageID(msg + 2);
        }
        API_Func_809259c(0xc, 3);
        API_ActorMessage(0xc, 0);
        API_Func_8092adc(0xc, 0xc0 << 8, 10);
    }
    __CutsceneEnd();
}
extern void __MapTransitionOut(void);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void *__MapActor_GetActor(int);
extern void __Func_8010560(void *, int, int);
extern void __Func_8093530(void);
extern unsigned char L20ac[] __asm__(".Lm885_20ac");
extern unsigned char iwram_3001ebc[];
extern int _MSG_fb0;
#define MSG_fb0 ((int)&_MSG_fb0)
extern unsigned char Lconst_fbf[] __asm__(".Lconst_fbf");
__asm__(".equ .Lconst_fbf, 0xfbf");

void OvlFunc_885_2008170(void)
{
    int pos_x, pos_y;
    int msg;
    char *actor;

    if (!API_GetFlag(0x801)) {
        __CutsceneStart();
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        __MessageID(0xfa6);
        API_Func_80925cc(0xd, 1);
        API_MapActor_TravelToAnimWait(0, 0xe8, 0x84 << 1);
        API_MapActor_SetAnim(0, 0);
        API_MapActor_TurnToFaceActor(0, 0xd, 0x14);
        API_Func_80925cc(0xd, 2);
        API_ActorMessage_Wait(0xd, 0, 10);
        actor = (char *)__MapActor_GetActor(0);
        pos_x = *(short *)(actor + 10);
        pos_y = *(short *)(actor + 18);
        pos_x <<= 16;
        pos_y <<= 16;
        API_MapActor_SetPos(5, pos_x, pos_y);
        API_MapActor_SetPos(1, pos_x, pos_y);
        API_MapActor_SetSpeed(5, 0x80 << 8, 0x80 << 7);
        API_MapActor_SetSpeed(1, 0x80 << 8, 0x80 << 7);
        API_MapActor_TravelToAnim(5, 0xf8, 0x84 << 1);
        API_MapActor_TravelToAnimWait(1, 0xd8, 0x84 << 1);
        API_MapActor_SetAnim(0, 1);
        API_MapActor_SetAnim(5, 1);
        API_MapActor_SetAnim(1, 1);
        API_CutsceneWait(4);
        API_Func_8092adc(5, 0xb0 << 8, 0);
        API_Func_8092adc(1, 0xd0 << 8, 0x14);
        API_MapActor_DoAnim(5, 4);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(5, 0, 0x14);
        API_Func_80925cc(0xd, 1);
        API_CutsceneWait(10);
        API_Func_8092adc(0xd, 0xc0 << 6, 10);
        API_ActorMessage_Wait(0xd, 0, 10);
        API_Func_8092adc(1, 0xc0 << 6, 0x28);
        API_Func_80925cc(1, 2);
        API_ActorMessage_Wait(1, 0, 10);
        API_Func_80925cc(0xd, 2);
        API_Func_8092adc(0xd, 0xa0 << 7, 10);
        API_MapActor_SetAnim(0xd, 3);
        API_ActorMessage_Wait(0xd, 0, 8);
        API_Func_8092adc(5, 0xc0 << 6, 0x14);
        API_ActorMessage_Wait(5, 0, 10);
        API_Func_8092adc(0xd, 0xc0 << 6, 10);
        API_MapActor_DoAnim(0xd, 3);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(0xd, 0, 6);
        API_MapActor_Emote(0, 0x101, 0);
        API_MapActor_Emote(1, 0x101, 0);
        API_MapActor_Emote(5, 0x101, 0x3c);
        API_Func_8092adc(1, 0xd0 << 8, 0);
        API_Func_8092adc(5, 0xb0 << 8, 0x14);
        API_Func_80925cc(5, 2);
        API_ActorMessage_Wait(5, 0, 10);
        API_MapActor_Emote(0xd, 0x81 << 1, 0x3c);
        API_MapActor_DoAnim(0xd, 4);
        API_ActorMessage_Wait(0xd, 0, 10);
        API_Func_8092adc(1, 0, 0);
        API_Func_8092adc(5, 0x80 << 8, 0x14);
        API_MapActor_Emote(0, 0x80 << 1, 0x3c);
        API_Func_8092adc(1, 0xd0 << 8, 0);
        API_Func_8092adc(5, 0xb0 << 8, 0);
        API_Func_8092adc(0xd, 0xa0 << 7, 0x14);
        API_Func_8092adc(0xd, 0xc0 << 6, 0x28);
        API_Func_8092adc(0xd, 0xa0 << 7, 0x28);
        API_Func_8092adc(0xd, 0xc0 << 6, 0x14);
        __ShowActorMessage_NoWait(0xd, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(MSG_fb0);
        } else {
            __MessageID(0xfb1);
        }
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(0xd, 3);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(0xd, 0, 10);
        __MessageID(0xfb2);
        API_Func_80925cc(5, 2);
        API_Func_8092adc(5, 0x80 << 8, 10);
        API_ActorMessage_Wait(5, 0, 6);
        API_MapActor_Emote(1, 0x103, 0x1e);
        API_MapActor_Jump(1, 4, 0x1e);
        API_Func_8092adc(1, 0, 10);
        API_ActorMessage_Wait(1, 0, 6);
        API_MapActor_TurnToFaceActor(0, 1, 10);
        API_MapActor_TurnToFaceActor(0, 5, 0);
        API_MapActor_Face(0xd, 1, 10);
        API_MapActor_Face(0xd, 5, 10);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_DoAnim(5, 3);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(5, 1);
        API_MapActor_SetAnim(1, 1);
        API_MapActor_SetAnim(0, 0);
        API_Func_8092adc(0, 0x80 << 7, 0);
        API_Func_8092adc(1, 0x80 << 7, 0);
        API_Func_8092adc(5, 0x80 << 7, 0x10);
        API_MapActor_Surprise(0xd, 0x81 << 1);
        API_Func_80925cc(0xd, 3);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(0xd, 0, 6);
        API_MapActor_Emote(0, 0x80 << 1, 0);
        API_MapActor_Emote(1, 0x80 << 1, 0);
        API_MapActor_Emote(5, 0x80 << 1, 0x28);
        API_MapActor_DoAnim(0xd, 4);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(0xd, 0, 6);
        API_Func_80925cc(0xd, 1);
        API_ActorMessage_Wait(0xd, 0, 6);
        API_Func_8092adc(5, 0xb0 << 8, 10);
        API_ActorMessage_Wait(5, 0, 6);
        API_Func_8092adc(0xd, 0xc0 << 6, 10);
        API_MapActor_DoAnim(0xd, 3);
        API_CutsceneWait(6);
        API_ActorMessage_Wait(0xd, 0, 10);
        API_MapActor_Jump(0, 2, 0);
        API_MapActor_Jump(1, 2, 0);
        API_MapActor_Jump(5, 2, 10);
        API_Func_8092adc(0, 0xc0 << 8, 0);
        API_Func_8092adc(1, 0xd0 << 8, 0x14);
        API_ActorMessage_Wait(1, 0, 6);
        API_Func_8092adc(0xd, 0xa0 << 7, 10);
        API_MapActor_DoAnim(0xd, 3);
        API_CutsceneWait(0x10);
        API_MapActor_TurnToFaceActor(0, 5, 0x28);
        API_ActorMessage_Wait(5, 0, 10);
        API_Func_80925cc(0xd, 2);
        API_Func_8092adc(0xd, 0xc0 << 6, 10);
        API_ActorMessage_Wait(0xd, 0, 6);
        API_Func_8092adc(0, 0xc0 << 8, 0);
        API_Func_8092adc(5, 0xb0 << 8, 0x1e);
        API_MapActor_Emote(0, 0x105, 0);
        API_MapActor_Emote(1, 0x105, 0);
        API_MapActor_Emote(5, 0x105, 0x50);
        API_MapActor_DoAnim(0xd, 4);
        __ShowActorMessage_NoWait(0xd, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(0xfbd);
        } else {
            __MessageID(0xfbe);
        }
        API_ActorMessage_Wait(0xd, 0, 0x14);
        msg = (int)Lconst_fbf;
        __MessageID(msg);
        API_Func_8092adc(1, 0, 10);
        API_Func_80925cc(1, 2);
        __ShowActorMessage_NoWait(1, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(msg + 1);
        } else {
            __MessageID(msg + 2);
        }
        API_ActorMessage_Wait(1, 0, 6);
        __MessageID(0xfc2);
        API_Func_8092adc(5, 0x80 << 8, 10);
        API_Func_80925cc(5, 1);
        __ShowActorMessage_NoWait(5, 0);
        API_CutsceneWait(4);
        if (__Func_8091c7c(0, 0) == 1) {
            API_MapActor_Jump(5, 2, 0x14);
            API_ActorMessage_Wait(5, 0, 10);
        } else {
            API_MapActor_SetAnim(0, 3);
            API_MapActor_SetAnim(1, 3);
            API_MapActor_DoAnim(5, 3);
            API_CutsceneWait(8);
            API_MapActor_SetAnim(0, 0);
            *(unsigned short *)(*(char **)iwram_3001ebc + (0xec << 1)) += 1;
        }
        API_MapActor_DoAnim(0xd, 3);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(0xd, 0, 10);
        API_Func_8092adc(0, 0xc0 << 8, 0);
        API_Func_8092adc(1, 0xd0 << 8, 0);
        API_Func_8092adc(5, 0xb0 << 8, 10);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_DoAnim(5, 3);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(0, 0);
        API_CutsceneWait(0x14);
        API_Func_80925cc(0xd, 2);
        __ShowActorMessage_NoWait(0xd, 0);
        API_CutsceneWait(4);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(0xfc6);
        } else {
            __MessageID(0xfc9);
        }
        API_CutsceneWait(10);
        API_Func_80925cc(1, 2);
        API_Func_8092adc(1, 0, 10);
        API_ActorMessage_Wait(1, 0, 6);
        API_Func_8092adc(5, 0x80 << 8, 10);
        API_MapActor_DoAnim(5, 4);
        API_ActorMessage_Wait(5, 0, 6);
        API_Func_80925cc(1, 2);
        API_Func_8092adc(1, 0x80 << 8, 10);
        API_MapActor_Emote(1, 0x103, 0x1e);
        API_ActorMessage_Wait(1, 0, 10);
        API_MapActor_Emote(0xd, 0x80 << 1, 0x28);
        API_MapActor_Jump(0xd, 4, 0x28);
        API_Func_8092adc(0, 0xc0 << 8, 0);
        API_Func_8092adc(1, 0xc0 << 8, 0);
        API_Func_8092adc(5, 0xb0 << 8, 0x14);
        API_Func_8092adc(0xd, 0xb0 << 8, 10);
        __PlaySound(0x9e);
        __Func_8010560(L20ac, 0x2b, 8);
        API_MapActor_SetSpeed(0xd, 0x80 << 9, 0x80 << 8);
        API_MapActor_TravelToAnimWait(0xd, 0xe8, 0xda);
        API_MapActor_SetPos(0xd, 0, 0);
        API_MapActor_Emote(0, 0x101, 0);
        API_MapActor_Emote(1, 0x101, 0);
        API_MapActor_Emote(5, 0x101, 0x3c);
        *(int *)(*(char **)iwram_3001ebc + (0xe0 << 1)) = 0x202;
        __MapTransitionOut();
        __WaitMapTransition();
        __Func_8091e9c(0xd);
        __CutsceneEnd();
    }
}

void OvlFunc_885_2008964(void)
{
    int angle;
    char *actor;
    unsigned char *state;

    __CutsceneStart();
    API_MapActor_SetPos(0xd, 0, 0);
    API_MapActor_SetPos(1, 0xd8 << 16, 0x84 << 17);
    API_MapActor_SetPos(5, 0xf8 << 16, 0x84 << 17);
    actor = (char *)__MapActor_GetActor(1);
    angle = 0xc0 << 8;
    *(unsigned short *)(actor + 6) = angle;
    actor = (char *)__MapActor_GetActor(5);
    *(unsigned short *)(actor + 6) = angle;
    __Func_8010560(L20ac, 0x2b, 8);
    state = iwram_3001ebc;
    *(int *)(*(char **)state + (0xe0 << 1)) = 0x202;
    __MapTransitionIn();
    __WaitMapTransition();
    API_CutsceneWait(0x28);
    API_MapActor_SetSpeed(0xd, 0xcccc, 0x6666);
    API_MapActor_SetPos(0xd, 0xe6 << 16, 0xdc << 16);
    API_MapActor_TravelToAnimWait(0xd, 0xe6, 0xe8);
    API_CutsceneWait(0x14);
    API_MapActor_DoAnim(0xd, 3);
    __MessageID(0xfcc);
    API_ActorMessage_Wait(0xd, 0, 10);
    API_Func_80925cc(0xd, 2);
    API_Func_8092adc(0xd, 0xc0 << 6, 10);
    API_ActorMessage_Wait(0xd, 0, 10);
    API_Func_8092adc(1, 0, 0);
    API_Func_8092adc(0, 0x80 << 8, 10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_MapActor_SetAnim(0, 0);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(5, 0x80 << 8, 10);
    API_MapActor_SetAnim(5, 3);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_SetAnim(0, 0);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(5, 0xcccc, 0x6666);
    API_Func_8092adc(0, angle, 0);
    API_MapActor_SetAnim(1, 2);
    actor = (char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(1, *(short *)(actor + 10), *(short *)(actor + 18));
    }
    API_MapActor_SetAnim(5, 2);
    actor = (char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(5, *(short *)(actor + 10), *(short *)(actor + 18));
    }
    API_MapActor_SetAnim(0xd, 2);
    actor = (char *)__MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_TravelTo(0xd, *(short *)(actor + 10), *(short *)(actor + 18));
    }
    API_MapActor_WaitMovement(1);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(5, 0, 0);
    API_MapActor_WaitMovement(0xd);
    API_MapActor_SetPos(0xd, 0, 0);
    API_MapActor_SetAnim(1, 1);
    API_MapActor_SetAnim(5, 1);
    API_MapActor_SetAnim(0xd, 1);
    API_MapActor_SetPos(0xe, 0, 0);
    API_MapActor_SetPos(0xf, 0, 0);
    __SetFlag(0x801);
    *(int *)(*(char **)state + (0xe0 << 1)) = 0x100;
    API_Func_8091220(0x80 << 9, 0);
    __SetFlag(0x242);
    __CutsceneEnd();
}

void OvlFunc_885_2008ba8(void)
{
    if (!__GetFlag(0x242)) {
        __PlaySound(0x9e);
        __Func_8010560(L20ac, 0x2b, 8);
    }
    {
        unsigned int rq = 0;
        __MapActor_TravelToAnim(rq, 0xe5, 0xd9);
    }
    __Func_8091e9c(3);
}

extern void __PlayMapMusic(void);
extern unsigned char gScript_885__02009ce0[];
extern unsigned char Lconst_f85[] __asm__(".Lconst_f85");
__asm__(".equ .Lconst_f85, 0xf85");
extern unsigned char Lconst_f91[] __asm__(".Lconst_f91");
__asm__(".equ .Lconst_f91, 0xf91");

void OvlFunc_885_2008be0(void)
{
    int pos_x, pos_y;
    int msg;
    int msg2;
    char *actor;

    if (!API_GetFlag(0x808)) {
        __CutsceneStart();
        __PlaySound(0x11);
        API_SetFlag(0x808);
        msg = (int)Lconst_f85;
        __MessageID(msg);
        API_ActorMessage_Wait(0xe, 0, 10);
        API_MapActor_SetSpeed(0, 0x13333, 0x9999);
        API_MapActor_Emote(0, 0x80 << 1, 0x1e);
        API_MapActor_TravelToAnimWait(0, 0xc4 << 1, 0xa4 << 1);
        API_Func_8092adc(0, 0x80 << 7, 10);
        actor = (char *)__MapActor_GetActor(0);
        pos_x = *(short *)(actor + 10);
        pos_y = *(short *)(actor + 18);
        pos_x <<= 16;
        pos_y <<= 16;
        API_MapActor_SetPos(5, pos_x, pos_y);
        API_MapActor_SetPos(1, pos_x, pos_y);
        API_MapActor_SetSpeed(5, 0x13333, 0x9999);
        API_MapActor_SetSpeed(1, 0x13333, 0x9999);
        API_MapActor_TravelToAnim(5, 0xbc << 1, 0xa4 << 1);
        API_MapActor_TravelToAnimWait(1, 0xcc << 1, 0xa4 << 1);
        API_MapActor_SetAnim(0, 0);
        API_MapActor_SetAnim(5, 0);
        API_MapActor_SetAnim(1, 0);
        API_Func_8092adc(1, 0x80 << 8, 0);
        API_Func_8092adc(5, 0, 0x14);
        API_MapActor_Emote(0, 0x101, 0);
        API_MapActor_Emote(1, 0x101, 0);
        API_MapActor_Emote(5, 0x101, 0x1e);
        API_Func_8092adc(0, 0x80 << 7, 0);
        API_Func_8092adc(1, 0x80 << 7, 0);
        API_Func_8092adc(5, 0x80 << 7, 0);
        API_Func_80933d4(0xc0 << 11, 0xc0 << 8);
        API_Func_80933f8(0xd7 << 16, -1, 0x1590000, 1);
        __Func_8093530();
        API_CutsceneWait(0x14);
        __PlaySound(0x3d);
        API_MapActor_DoAnim(0xe, 4);
        API_MapActor_SetAnim(0xe, 4);
        API_ActorMessage_Wait(0xe, 0, 0x14);
        API_Func_8092adc(0xf, 0, 10);
        API_ActorMessage_Wait(0xf, 0, 10);
        API_MapActor_DoAnim(0xe, 3);
        API_ActorMessage_Wait(0xe, 0, 10);
        API_Func_8092adc(0xf, 0x80 << 7, 0x3c);
        API_Func_80925cc(0xf, 1);
        API_ActorMessage_Wait(0xf, 0, 0x14);
        API_MapActor_DoAnim(0xe, 3);
        API_ActorMessage_Wait(0xe, 0, 10);
        API_MapActor_DoAnim(0xf, 4);
        API_ActorMessage_Wait(0xf, 0, 6);
        API_MapActor_Emote(0xe, 0x80 << 1, 0);
        API_Func_80925cc(0xe, 2);
        API_CutsceneWait(0x14);
        API_Func_8092adc(0xf, 0, 10);
        API_MapActor_Emote(0xf, 0x101, 0x28);
        API_Func_8092adc(0xe, 0, 0x3c);
        API_Func_8092adc(0xe, 0x80 << 8, 0x28);
        API_Func_8092adc(0xe, 0, 0x28);
        API_MapActor_TravelToAnimWait(0xe, 0xe8, 0xb4 << 1);
        API_Func_8092adc(0xe, 0, 10);
        API_MapActor_DoAnim(0xf, 3);
        API_CutsceneWait(10);
        API_MapActor_TravelToAnim(0xe, 0xc4 << 1, 0xb4 << 1);
        API_MapActor_TravelToAnimWait(0xf, 0xd8, 0xb4 << 1);
        API_MapActor_TravelToAnim(0xf, 0xbc << 1, 0xb4 << 1);
        API_Func_8092adc(0, 0x80 << 7, 0);
        API_Func_8092adc(1, 0x80 << 7, 0);
        API_Func_8092adc(5, 0x80 << 7, 0);
        API_Func_80933f8(0x1890000, -1, 0x1530000, 1);
        API_MapActor_TravelToAnim(0xe, 0xc4 << 1, 0xb4 << 1);
        API_MapActor_TravelToAnimWait(0xf, 0xbc << 1, 0xb4 << 1);
        API_MapActor_SetAnim(0xe, 0);
        API_MapActor_SetAnim(0xf, 0);
        API_Func_8092adc(0xe, 0xd0 << 8, 0);
        API_Func_8092adc(0xf, 0xd0 << 8, 0x1e);
        API_Func_80925cc(0xe, 2);
        API_ActorMessage_Wait(0xe, 0, 10);
        API_MapActor_Emote(1, 0x81 << 1, 0x3c);
        API_Func_80925cc(1, 1);
        API_ActorMessage_Wait(1, 0, 10);
        API_MapActor_DoAnim(0xf, 4);
        __ShowActorMessage_NoWait(0x100f, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(msg + 10);
        } else {
            __MessageID(msg + 11);
        }
        API_ActorMessage_Wait(0x100f, 0, 10);
        API_Func_80925cc(1, 2);
        msg2 = (int)Lconst_f91;
        __MessageID(msg2);
        API_ActorMessage_Wait(1, 0, 0x14);
        API_MapActor_TurnToFaceActor(0xe, 0xf, 0x28);
        API_Func_8092adc(0xe, 0xd0 << 8, 0);
        API_Func_8092adc(0xf, 0xd0 << 8, 0x14);
        API_ActorMessage_Wait(0xe, 0, 0x3c);
        API_Func_80925cc(0xf, 1);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(0xf, 3);
        API_ActorMessage_Wait(0x100f, 0, 10);
        API_Func_80925cc(5, 2);
        API_MapActor_DoAnim(5, 3);
        API_ActorMessage_Wait(0x1005, 0, 0x14);
        API_Func_80925cc(0xe, 2);
        API_Func_8092adc(0xe, 0xa0 << 8, 0x14);
        __ShowActorMessage_NoWait(0xe, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __MessageID(msg2 + 5);
        } else {
            __MessageID(msg2 + 6);
        }
        API_Func_8092adc(5, 0, 0);
        API_Func_8092adc(1, 0x80 << 8, 0x14);
        API_Func_80925cc(0xe, 2);
        API_ActorMessage_Wait(0xe, 0, 10);
        API_MapActor_Face(0xe, 1, 0x1e);
        API_MapActor_Face(0xe, 5, 0x1e);
        API_MapActor_Emote(0xe, 0x105, 0x50);
        API_MapActor_DoAnim(0xe, 4);
        __MessageID(0xf98);
        API_ActorMessage_Wait(0xe, 0, 6);
        API_MapActor_Emote(0, 0x80 << 1, 0);
        API_MapActor_Emote(1, 0x80 << 1, 0);
        API_MapActor_Emote(5, 0x80 << 1, 0);
        API_Func_809259c(1, 1);
        API_Func_809259c(5, 1);
        API_Func_80925cc(0, 1);
        API_CutsceneWait(0x28);
        API_Func_80925cc(5, 2);
        API_Func_8092adc(1, 0x80 << 7, 0);
        API_Func_8092adc(5, 0x80 << 7, 10);
        API_ActorMessage_Wait(0x1005, 0, 10);
        API_Func_80925cc(0xf, 2);
        API_Func_8092adc(0xf, 0, 10);
        API_ActorMessage_Wait(0x100f, 0, 10);
        API_Func_8092adc(0xe, 0x80 << 8, 0x14);
        API_MapActor_DoAnim(0xe, 4);
        API_ActorMessage_Wait(0xe, 0, 10);
        API_Func_80925cc(0xf, 2);
        API_CutsceneWait(10);
        API_Func_8092adc(0xe, 0xb0 << 8, 0);
        API_Func_8092adc(0xf, 0xd0 << 8, 0x14);
        API_MapActor_SetSpeed(0xf, 0x80 << 8, 0x80 << 7);
        API_MapActor_SetSpeed(0xe, 0x80 << 8, 0x80 << 7);
        actor = (char *)__MapActor_GetActor(0xe);
        actor[0x5a] &= 0xfe;
        actor = (char *)__MapActor_GetActor(0xf);
        actor[0x5a] &= 0xfe;
        API_MapActor_TravelToAnim(0xe, 0xc4 << 1, 0xbc << 1);
        API_MapActor_TravelToAnimWait(0xf, 0xbc << 1, 0xbc << 1);
        API_CutsceneWait(6);
        actor = (char *)__MapActor_GetActor(0xe);
        actor[0x5a] |= 1;
        actor = (char *)__MapActor_GetActor(0xf);
        actor[0x5a] |= 1;
        actor[0x5a] = 1 | actor[0x5a];
        API_MapActor_SetAnim(0xe, 0);
        API_MapActor_SetAnim(0xf, 0);
        API_CutsceneWait(0x14);
        API_Func_80925cc(1, 2);
        API_ActorMessage_Wait(1, 0, 10);
        API_Func_8092adc(0, 1, 0x14);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_DoAnim(1, 3);
        __PlaySound(0x11);
        API_MapActor_SetAnim(1, 2);
        actor = (char *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(1, *(short *)(actor + 10), *(short *)(actor + 18));
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
        API_MapActor_SetAnim(5, 2);
        actor = (char *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(5, *(short *)(actor + 10), *(short *)(actor + 18));
        }
        API_MapActor_WaitMovement(5);
        API_MapActor_SetPos(5, 0, 0);
        API_Func_8092a1c(0xe, 0x80 << 9, gScript_885__02009ce0);
        API_Func_8092a1c(0xf, 0x80 << 9, gScript_885__02009ce0);
        __PlayMapMusic();
        __CutsceneEnd();
    }
}
extern void __SetCameraTarget(int, int);

void OvlFunc_885_20092a0(void)
{
    int pos_x, pos_y;
    char *actor;

    if (!API_GetFlag(0x80 << 4)) {
        __CutsceneStart();
        API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
        __MessageID(0xf9f);
        API_ActorMessage(0xd, 0);
        actor = (char *)__MapActor_GetActor(0);
        pos_x = *(short *)(actor + 10);
        pos_y = *(short *)(actor + 18);
        pos_x <<= 16;
        pos_y <<= 16;
        API_MapActor_SetPos(5, pos_x, pos_y);
        API_MapActor_SetPos(1, pos_x, pos_y);
        API_MapActor_SetSpeed(5, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
        API_MapActor_TravelToAnim(5, 0x94 << 1, 0xa4 << 1);
        API_MapActor_TravelToAnimWait(1, 0x8c << 1, 0xa4 << 1);
        API_MapActor_SetAnim(0, 0);
        API_MapActor_SetAnim(5, 0);
        API_MapActor_SetAnim(1, 0);
        API_Func_8092adc(5, 0xb0 << 8, 0);
        API_Func_8092adc(1, 0xb0 << 8, 0);
        API_Func_8092adc(0, 0xb0 << 8, 0);
        API_Func_80933f8(0xe8 << 16, -1, 0xf0 << 16, 1);
        __Func_8093530();
        API_Func_8092adc(0xd, 0x80 << 8, 0x14);
        API_Func_80925cc(0xd, 2);
        API_ActorMessage(0xd, 0);
        API_MapActor_SetSpeed(0xd, 0x3333, 0x1999);
        API_MapActor_TravelToAnimWait(0xd, 0xd8, 0xe8);
        API_CutsceneWait(0x14);
        API_Func_80925cc(0xd, 1);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(0xd, 0, 0x28);
        API_MapActor_Jump(0xd, 2, 10);
        API_Func_8092adc(0xd, 0, 10);
        API_ActorMessage_Wait(0xd, 0, 10);
        API_MapActor_TravelToAnimWait(0xd, 0xf8, 0xe8);
        API_CutsceneWait(0x28);
        API_Func_80925cc(0xd, 2);
        API_CutsceneWait(0x14);
        API_ActorMessage(0xd, 0);
        API_MapActor_Emote(0xd, 0x101, 0x3c);
        API_Func_80925cc(0xd, 1);
        API_Func_8092adc(0xd, 0x80 << 8, 0x14);
        API_ActorMessage_Wait(0xd, 0, 2);
        API_MapActor_TravelToAnimWait(0xd, 0xe8, 0xe8);
        API_CutsceneWait(2);
        API_Func_8092adc(0xd, 0x80 << 7, 4);
        API_Func_80925cc(0xd, 2);
        API_CutsceneWait(4);
        API_ActorMessage_Wait(0xd, 0, 2);
        API_MapActor_DoAnim(0xd, 4);
        API_CutsceneWait(0x14);
        __SetCameraTarget(0, 1);
        __Func_8093530();
        API_MapActor_SetAnim(1, 2);
        actor = (char *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(1, *(short *)(actor + 10), *(short *)(actor + 18));
        }
        API_MapActor_WaitMovement(1);
        API_MapActor_SetPos(1, 0, 0);
        API_MapActor_SetAnim(5, 2);
        actor = (char *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(5, *(short *)(actor + 10), *(short *)(actor + 18));
        }
        API_MapActor_WaitMovement(5);
        API_MapActor_SetPos(5, 0, 0);
        API_SetFlag(0x80 << 4);
        __CutsceneEnd();
    }
}
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char gOvl_02009c34[];
extern unsigned char gScript_885__02009ce0[];
extern void __StartRain(void);
extern void __StartThunder(void);
extern void __MapActor_SetBehavior(int, void *);

int ValeKraden_MapInit(void)
{
    unsigned int r2;
    unsigned int r3;
    unsigned short *p;
    char *actor;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    p = (unsigned short *)(r3 + r2);
    if ((unsigned int)((*p - 5) << 16) <= (0x80 << 9)) {
        API_ClearFlag(0x12f);
    }
    if (API_GetFlag(0x109)) {
        API_ClearFlag(0x242);
    }
    if (API_GetFlag(0x834)) {
        __StartRain();
        __StartThunder();
        __CutsceneStart();
        API_MapActor_SetPos(12, 0, 0);
        API_MapActor_SetPos(13, 0, 0);
        API_MapActor_SetPos(14, 0, 0);
        API_MapActor_SetPos(15, 0, 0);
        API_MapActor_SetPos(5, 0, 0);
        {
            char *act = (char *)__MapActor_GetActor(8);
            unsigned char b = 8;
            b |= act[0x59];
            act[0x59] = b;
        }
        API_MapActor_SetPos(11, 0xa6 << 15, 0x1090000);
        API_MapActor_TravelToAnimWait(11, 0x53, 0x111);
        API_MapActor_SetAnim(11, 5);
        actor = (char *)__MapActor_GetActor(11);
        {
            int val = 12;
            *(short *)(actor + 0x20) = val;
        }
        __MapActor_SetBehavior(11, gOvl_02009c34);
        if (API_GetFlag(0x839)) {
            API_MapActor_SetPos(11, 0, 0);
        }
        __CutsceneEnd();
        API_Func_8010704(9, 24, 1, 1, 14, 21);
        API_Func_8010704(9, 24, 1, 1, 15, 21);
        API_Func_8010704(9, 24, 1, 1, 23, 19);
        API_Func_8010704(9, 24, 1, 1, 24, 19);
        API_Func_8010704(9, 24, 1, 1, 23, 20);
        API_Func_8010704(9, 24, 1, 1, 24, 20);
    } else {
        API_MapActor_SetPos(9, 0, 0);
        API_MapActor_SetPos(10, 0, 0);
        API_MapActor_SetPos(1, 0, 0);
        API_MapActor_SetPos(11, 0, 0);
        __CutsceneStart();
        if (!API_GetFlag(0x109)) {
            r2 = 0;
            if (*(short *)((char *)p + r2) == 10) {
                OvlFunc_885_2008964();
            }
        }
        if (API_GetFlag(0x801)) {
            API_MapActor_SetPos(13, 0, 0);
            API_MapActor_SetPos(14, 0, 0);
            API_MapActor_SetPos(15, 0, 0);
        } else if (API_GetFlag(0x808)) {
            API_MapActor_SetPos(14, 0xc4 << 17, 0xbc << 17);
            API_MapActor_SetPos(15, 0xbc << 17, 0xbc << 17);
            API_Func_8092a1c(14, 0x80 << 9, gScript_885__02009ce0);
            API_Func_8092a1c(15, 0x80 << 9, gScript_885__02009ce0);
        }
        if (API_GetFlag(0x87a)) {
            API_MapActor_SetPos(16, 0x84 << 16, 0x84 << 17);
        }
        __CutsceneEnd();
    }
    return 0;
}
extern unsigned char Lconst_e85[] __asm__(".Lconst_e85");
__asm__(".equ .Lconst_e85, 0xe85");
extern unsigned char gScript_885__02009ce0[];
extern unsigned char ActorCmd_ARRAY_885__02009bdc[];

extern void __MapActor_SetIdle(int);
extern void __MapActor_RunScript(int, void *);

void OvlFunc_885_2009760(void)
{
    int msg;
    char *actor;
    void *script;

    if (!API_GetFlag(0x839)) {
        if (API_GetFlag(0x82f)) {
            __CutsceneStart();
            API_Func_80925cc(0xb, 2);
            __MessageID(0xe8b);
            API_ActorMessage(0xb, 0);
            __CutsceneEnd();
        } else {
            __CutsceneStart();
            __MapActor_SetIdle(0xb);
            API_Func_80925cc(0xb, 1);
            msg = (int)Lconst_e85;
            __MessageID(msg);
            API_ActorMessage_Wait(0xb, 0, 0x14);
            API_MapActor_Emote(0, 0x80 << 1, 0x1e);
            API_Func_80933f8(0xc4 << 15, -1, 0x11b0000, 1);
            API_MapActor_TravelToAnimWait(0, 0x5e, 0x125);
            API_Func_8092adc(0, 0xa0 << 8, 0);
            actor = (char *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_SetPos(1, *(int *)(actor + 8), *(int *)(actor + 16));
            }
            API_MapActor_TravelToAnimWait(1, 0x6e, 0x117);
            API_Func_8092adc(1, 0xa0 << 8, 0x28);
            API_Func_80925cc(0xb, 2);
            API_CutsceneWait(0x28);
            __ShowActorMessage_NoWait(0xb, 0);
            if (__Func_8091c7c(0, 0) == 0) {
                API_Func_80925cc(0xb, 2);
                API_CutsceneWait(0x14);
                __MessageID(msg + 2);
                API_ActorMessage(0xb, 0);
                API_SetFlag(0x82f);
            } else {
                API_Func_80925cc(0xb, 2);
                API_CutsceneWait(0x14);
                __MessageID(msg + 3);
                API_ActorMessage_Wait(0xb, 0, 0x28);
                API_MapActor_Face(0xb, 0, 0);
                API_MapActor_SetAnim(0xb, 1);
                API_MapActor_Jump(0xb, 4, 0x28);
                API_MapActor_SetAnim(0xb, 6);
                API_MapActor_Emote(0xb, 0x101, 0x28);
                API_ActorMessage_Wait(0xb, 0, 10);
                API_MapActor_SetAnim(0xb, 1);
                API_CutsceneWait(10);
                API_MapActor_DoAnim(0xb, 3);
                API_ActorMessage_Wait(0xb, 0, 10);
                API_MapActor_DoAnim(0xb, 3);
                script = gScript_885__02009ce0;
                API_Func_8092a1c(0, 0x1000b, script);
                API_Func_8092a1c(1, 0x1000b, script);
                __MapActor_RunScript(0xb, ActorCmd_ARRAY_885__02009bdc);
                __MapActor_SetIdle(0);
                __MapActor_SetIdle(1);
                API_Func_8092adc(0, 0x80 << 7, 0);
                API_Func_8092adc(1, 0x80 << 7, 0x3c);
                API_MapActor_Emote(0, 0x105, 0);
                API_MapActor_Emote(1, 0x105, 0x78);
                API_SetFlag(0x839);
            }
            API_MapActor_SetAnim(1, 2);
            actor = (char *)__MapActor_GetActor(0);
            if (actor != 0) {
                API_MapActor_TravelTo(1, *(short *)(actor + 10), *(short *)(actor + 18));
            }
            API_MapActor_WaitMovement(1);
            API_MapActor_SetPos(1, 0, 0);
            __CutsceneEnd();
        }
    }
}

void OvlFunc_885_20099a4(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87d);
    __StartMapBattle(0xc, 0);
    __SetFlag(0x900);
    __CutsceneEnd();
}


void OvlFunc_885_20099e8(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87e);
    __StartMapBattle(0xc, 1);
    __SetFlag(0x900);
    __CutsceneEnd();
}

void OvlFunc_885_2009a2c(void) {
    __CutsceneStart();
    __MessageID(0x1c96);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_kraden/vale_kraden_data.s");

INCLUDE_ASM("asm/maps/vale_kraden/imports.s");
