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
INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_2008170.s");
extern unsigned char L20ac[] __asm__(".Lm885_20ac");
extern unsigned char iwram_3001ebc[];
extern void *__MapActor_GetActor(int);
extern void __Func_8010560(void *, int, int);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);

INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_2008964.s");

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

INCLUDE_ASM("asm/maps/vale_kraden/OvlFunc_885_2008be0.s");
extern void __Func_8093530(void);
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
INCLUDE_ASM("asm/maps/vale_kraden/ValeKraden_MapInit.s");
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
