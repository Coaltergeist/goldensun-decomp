/* rom_7ec19c (overlay file 962): consolidated TU — suhalla_rooms map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/suhalla_rooms/exports.s");

extern unsigned char MapEntrance_ARRAY_962__02008c3c[];

void *SuhallaRooms_GetEntrances(void) {
    return (void *)MapEntrance_ARRAY_962__02008c3c;
}
extern unsigned char gOvl_02008da4[];

void *SuhallaRooms_GetSpecialExits(void) {
    return (void *)gOvl_02008da4;
}
extern unsigned char gOvl_02008dd4[];

void *SuhallaRooms_GetExits(void) {
    return (void *)gOvl_02008dd4;
}

extern unsigned char Lf28[] __asm__(".Lm962_f28");
extern unsigned char Le08[] __asm__(".Lm962_e08");

unsigned int *SuhallaRooms_GetActors(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)Lf28;
    return (unsigned int *)Le08;
}

extern unsigned char Lconst_261c[] __asm__(".Lconst_261c");
__asm__(".equ .Lconst_261c, 0x261c");

void OvlFunc_962_200806c(int arg0)
{
    void *actor;
    short dir;
    int msg;

    actor = __MapActor_GetActor(0);
    dir = (*(unsigned short *)((char *)actor + 6) + 0x2000) & (int)0xffffc000;
    if ((unsigned short)dir == 0xc000) {
        __Func_80b0278(0x1f, arg0);
    } else if (__GetFlag(0x96f)) {
        msg = (int)Lconst_261c;
        __MessageID(msg);
        __ShowActorMessage_NoWait(arg0, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(10);
            __MessageID(msg + 1);
        } else {
            __MessageID(msg + 2);
        }
        __ActorMessage(arg0, 0);
    } else {
        __MessageID(0x25cf);
        __ActorMessage(arg0, 0);
    }
}
void OvlFunc_962_2008100(int arg0)
{
    void *actor;
    short dir;

    actor = __MapActor_GetActor(0);
    dir = (*(unsigned short *)((char *)actor + 6) + 0x2000) & (int)0xffffc000;
    if ((unsigned short)dir == 0xc000) {
        __Func_80b3284(10, arg0);
    } else if (__GetFlag(0x96f)) {
        __MessageID(0x2620);
        __ActorMessage(arg0, 0);
    } else {
        __MessageID(0x25d1);
        __ActorMessage(arg0, 0);
    }
}
void OvlFunc_962_200816c(int arg0)
{
    void *actor;
    short dir;

    actor = __MapActor_GetActor(0);
    dir = (*(unsigned short *)((char *)actor + 6) + 0x2000) & (int)0xffffc000;
    if ((unsigned short)dir == 0xc000) {
        __UI_Sanctum(arg0);
    } else if (__GetFlag(0x96f)) {
        __MessageID(0x262c);
        __ActorMessage(arg0, 0);
    } else {
        __MessageID(0x25d5);
        __ActorMessage(arg0, 0);
    }
}
extern unsigned char Lconst_2624[] __asm__(".Lconst_2624");
__asm__(".equ .Lconst_2624, 0x2624");

void OvlFunc_962_20081d4(int a)
{
    int msg = (int)Lconst_2624;

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

extern unsigned char iwram_3001ebc[];

void OvlFunc_962_200821c(void)
{
    int r3;
    r3 = *(unsigned int *)iwram_3001ebc;
    r3 = r3 + 0xb6 * 2;
    __Func_8091e9c(*(short *)((char *)r3 + 0));
    __PlaySound(0x7b);
}

void OvlFunc_962_2008240(void)
{
    void __SetFlag(int);
    int __GetFlag(int);
    void __PlaySound(int);
    void __CutsceneStart(void);
    void __Func_80933f8(int, int, int, int);
    void __MapActor_TravelToAnimWait(int, int, int);
    void __Func_8092adc(int, int, int);
    void __Func_809233c(int, int, int, int);
    void __MapActor_WaitMovement(int);
    void __Func_8093530(void);
    void __MessageID(int);
    void __CutsceneWait(int);
    void __Func_80925cc(int, int);
    void __ActorMessage(int, int);
    void __MapActor_SetSpeed(int, int, int);
    void __Func_8092304(int, int, int);
    void __MapActor_Emote(int, int, int);
    void __MapActor_DoAnim(int, int);
    void __Func_809259c(int, int);
    void __MapActor_Face(int, int, int);
    void __MapActor_TurnToFaceActor(int, int, int);
    void __MapActor_SetAnim(int, int);
        int __Func_8091c7c(int, int);
    void *__MapActor_GetActor(int);
    void __MapActor_TravelTo(int, int, int);
    void __MapActor_SetPos(int, int, int);
    void __PlayMapMusic(void);
    void __CutsceneEnd(void);

    void *actor;

    __SetFlag(0x9b << 4);
    if (__GetFlag(0x98a) == 0) {
        __PlaySound(0x1e);
        __CutsceneStart();
        __Func_80933f8(0x1700000, -1, 0x680000, 1);
        API_MapActor_TravelToAnimWait(0, 0x170, 0xa0);
        API_Func_8092adc(0, 0xc000, 0);
        API_Func_809233c(0x13, 0, -16, 0xc000);
        __MapActor_WaitMovement(0x13);
        __Func_8093530();
        __MessageID(0x25eb);
        __CutsceneWait(0xa);
        __Func_80925cc(0x14, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x13, 2);
        __CutsceneWait(0x14);
        API_MapActor_SetSpeed(0x13, 0x13333, 0x9999);
        API_Func_8092304(0x13, 0, -16);
        API_Func_8092adc(0x13, 0, 0);
        __CutsceneWait(0x1e);
        API_Func_8092adc(0x13, 0xe000, 0);
        __CutsceneWait(0x1e);
        API_Func_8092adc(0x13, 0, 0);
        __CutsceneWait(0x1e);
        API_MapActor_Emote(0x13, 0x100, 0x28);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x15, 0);
        __CutsceneWait(0xa);
        API_MapActor_SetSpeed(0x13, 0x13333, 0x9999);
        API_Func_8092304(0x13, 0, -0x18);
        API_Func_8092304(0x13, 0x30, 0);
        API_Func_8092adc(0x13, 0xc000, 0);
        __CutsceneWait(0x1e);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0x14);
        API_MapActor_Emote(0x13, 0x100, 0x28);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0x14);
        API_MapActor_Emote(0x14, 0x102, 0x28);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        API_Func_8092adc(0x13, 0x2000, 0);
        __CutsceneWait(0x14);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x15, 4);
        __CutsceneWait(0x14);
        __ActorMessage(0x15, 0);
        __CutsceneWait(0xa);
        API_Func_8092adc(0x13, 0xc000, 0);
        __CutsceneWait(0x1e);
        API_MapActor_Emote(0x13, 0x107, 0x28);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_809259c(0x14, 2);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        API_MapActor_SetSpeed(0, 0x13333, 0x9999);
        API_MapActor_TravelToAnimWait(0, 0x170, 0x68);
        API_Func_8092304(0, 0x10, 0);
        API_Func_8092adc(0, 0, 0);
        __CutsceneWait(0x14);
        __CutsceneWait(0xa);
        __MapActor_DoAnim(0x13, 4);
        __CutsceneWait(0x14);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0x14);
        API_MapActor_Emote(0x13, 0x102, 0x32);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x14, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        __MapActor_Face(0, 0x14, 0);
        API_Func_8092adc(0x13, 0x2000, 0);
        __CutsceneWait(0x14);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x15, 0);
        __CutsceneWait(0xa);
        __MapActor_Face(0, 0x15, 0);
        API_Func_8092adc(0x13, 0xc000, 0);
        __CutsceneWait(0x28);
        __MapActor_DoAnim(0x13, 3);
        __CutsceneWait(0x1e);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x15, 4);
        __CutsceneWait(0x14);
        __ActorMessage(0x15, 0);
        __CutsceneWait(0xa);
        __MapActor_TurnToFaceActor(0x13, 0, 0x1e);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x14, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        __MapActor_Face(0, 0x14, 0);
        API_Func_8092adc(0x13, 0x2000, 0);
        __CutsceneWait(0x28);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x15, 0);
        __CutsceneWait(0xa);
        __MapActor_Face(0, 0x15, 0);
        API_Func_8092adc(0x13, 0xc000, 0);
        __CutsceneWait(0x28);
        __MapActor_SetAnim(0, 3);
        __MapActor_DoAnim(0x13, 3);
        __CutsceneWait(0x1e);
        __CutsceneWait(0xa);
        __MapActor_DoAnim(0x14, 4);
        __CutsceneWait(0x14);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        API_MapActor_Emote(0, 0x100, 0);
        API_MapActor_Emote(0x13, 0x100, 0x28);
        __CutsceneWait(0xa);
        __MapActor_Face(0, 0x14, 0);
        API_Func_8092adc(0x13, 0x2000, 0);
        __CutsceneWait(0x28);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x15, 0);
        __CutsceneWait(0xa);
        API_MapActor_Emote(0, 0x100, 0x32);
        __MapActor_Face(0, 0x15, 0);
        __CutsceneWait(0x1e);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x1e);
        __CutsceneWait(0xa);
        API_Func_8092adc(0x13, 0xc000, 0);
        __CutsceneWait(0x1e);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x15, 3);
        __CutsceneWait(0x1e);
        __CutsceneWait(0xa);
        API_MapActor_Emote(0x13, 0x102, 0x28);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __MapActor_DoAnim(0x14, 4);
        __CutsceneWait(0x14);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        API_MapActor_Emote(0x13, 0x101, 0x32);
        __CutsceneWait(0xa);
        __MapActor_Face(0, 0x14, 0);
        API_Func_8092adc(0x13, 0x2000, 0);
        __CutsceneWait(0x14);
        __CutsceneWait(0xa);
        __Func_80925cc(0x14, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        API_MapActor_Emote(0x13, 0x100, 0x28);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x15, 0);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __CutsceneWait(0xa);
        __MapActor_TurnToFaceActor(0x13, 0, 0);
        __CutsceneWait(0x1e);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __MapActor_DoAnim(0x14, 4);
        __CutsceneWait(0x14);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        API_MapActor_Emote(0, 0x102, 0);
        API_MapActor_Emote(0x13, 0x102, 0x50);
        API_MapActor_Emote(0x15, 0x102, 0x32);
        __ActorMessage(0x15, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x15, 0);
        __Func_80925cc(0x15, 3);
        __CutsceneWait(0x14);
        __CutsceneWait(0xa);
        API_Func_8092adc(0x13, 0xc000, 0);
        __CutsceneWait(0x1e);
        __Func_80925cc(0x13, 2);
        __CutsceneWait(0xa);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0x14, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x14, 0);
        __CutsceneWait(0xa);
        __MapActor_Face(0, 0x14, 0);
        API_Func_8092adc(0x13, 0x2000, 0);
        __CutsceneWait(0x1e);
        __MapActor_DoAnim(0x13, 3);
        __CutsceneWait(0x1e);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __Func_809259c(0x14, 2);
        __Func_80925cc(0x15, 2);
        __CutsceneWait(0x1e);
        __CutsceneWait(0xa);
        __MapActor_TurnToFaceActor(0x13, 0, 0x14);
        API_Func_8092304(0x13, -0xc, 0);
        __CutsceneWait(0x14);
        __ShowActorMessage_NoWait(0x13, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(0x14);
            __ActorMessage(0x13, 0);
            *(short *)((char *)*(void **)iwram_3001ebc + (0xec << 1)) += 1;
        } else {
            __CutsceneWait(0xa);
            *(short *)((char *)*(void **)iwram_3001ebc + (0xec << 1)) += 1;
            __ActorMessage(0x13, 0);
        }
        __CutsceneWait(0xa);
        __Func_80925cc(0x13, 2);
        __CutsceneWait(0x14);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        API_MapActor_Emote(0x13, 0x102, 0x32);
        __ActorMessage(0x13, 0);
        __CutsceneWait(0xa);
        __MapActor_DoAnim(0, 3);
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x13, 3);
        __CutsceneWait(0x1e);
        __PlaySound(0x1e);
        API_MapActor_SetSpeed(0x13, 0x13333, 0x9999);
        __MapActor_SetAnim(0x13, 2);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            __MapActor_TravelTo(0x13, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
        }
        __MapActor_WaitMovement(0x13);
        __MapActor_SetPos(0x13, 0, 0);
        __CutsceneWait(0xa);
        __PlayMapMusic();
        __CutsceneEnd();
    }
}

extern unsigned char L11ec[] __asm__(".Lm962_11ec");
extern unsigned char L1090[] __asm__(".Lm962_1090");

unsigned int *SuhallaRooms_GetEvents(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)L11ec;
    return (unsigned int *)L1090;
}

INCLUDE_ASM("asm/maps/suhalla_rooms/SuhallaRooms_MapInit.s");
INCLUDE_ASM("asm/maps/suhalla_rooms/suhalla_rooms_data.s");

INCLUDE_ASM("asm/maps/suhalla_rooms/imports.s");
