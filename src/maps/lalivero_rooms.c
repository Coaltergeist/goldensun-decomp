/* rom_7f21b8 (overlay file 967): consolidated TU — lalivero_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lalivero_rooms/exports.s");

INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_2008030.s");

extern unsigned char gOvl_02009438[];

void *LaliveroRooms_GetEntrances(void) {
    return (void *)gOvl_02009438;
}

INCLUDE_ASM("asm/maps/lalivero_rooms/LaliveroRooms_GetSpecialExits.s");

extern unsigned char gOvl_020096d0[];

void *LaliveroRooms_GetExits(void) {
    return (void *)gOvl_020096d0;
}

INCLUDE_ASM("asm/maps/lalivero_rooms/LaliveroRooms_GetActors.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_20080c8.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_200815c.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_20081c8.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_2008234.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_200829c.s");
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd ActorCmd_ARRAY_944__02009314[34];

void *__MapActor_GetActor(int);
void __SetFlag(int);
void __CutsceneStart(void);
void __Func_808e118(void);
void __MessageID(int);
void __CutsceneWait(int);
void __MapActor_Emote(int, int, int);
void __MapActor_Face(int, int, int);
void __ActorMessage(int, int);
void __MapActor_DoAnim(int, int);
void __Func_80925cc(int, int);
void __Func_8092304(int, int, int);
void __Func_8092adc(int, int, int);
void __MapActor_SetBehavior(int, ActorCmd *);
void __CutsceneEnd(void);

void OvlFunc_967_2008308(void) {
    void *r0;
    short r5;
    int emote = 0x102;

    do { } while (emote == 0);

    r0 = __MapActor_GetActor(0);
    r5 = (*(unsigned short *)((char *)r0 + 6) + 0x2000) & (int)0xffffc000;
    __SetFlag(0x300);
    __CutsceneStart();
    __Func_808e118();
    __MessageID(0x26ec);
    __CutsceneWait(0x32);
    __MapActor_Emote(0xe, emote, 0x32);
    __MapActor_Face(0xe, 0, 0x14);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0xe, 4);
    __CutsceneWait(0x1e);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0x1e);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0xe, 3);
    __CutsceneWait(0x14);
    __ActorMessage(0xe, 0);
    if ((unsigned short)r5 == 0x8000) {
        __Func_8092304(0, 0, 0x10);
        __Func_8092adc(0, 0xc000, 0);
        __CutsceneWait(0x14);
    }
    __MapActor_SetBehavior(0xe, ActorCmd_ARRAY_944__02009314);
    __CutsceneEnd();
}

void OvlFunc_967_20083f4(void) {
    __SetFlag(0x9bc);
    __CutsceneStart();
    __Func_808e118();
    __CutsceneWait(0xa);
    __Func_80933f8(0xf0 << 15, -1, 0xc0 << 15, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);
    __MessageID(0x288b);
    __ActorMessage(0xc, 0);
    __CutsceneWait(0xa);
    __MapActor_Face(0, 0xc, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(0, 3);
    __CutsceneWait(0x1e);
    __CutsceneEnd();
}

void OvlFunc_967_2008468(void)
{
  int a = 0xc;
  int b = 0;
 do { __SetFlag(0x9bc); __MessageID(0x288b); } while (0);
  __ActorMessage(a, b);
}

extern unsigned int iwram_3001ebc;

void OvlFunc_967_200848c(void)
{
    short *ptr;
    unsigned int v;
    short val;

    ptr = (short *)iwram_3001ebc;
    v = 0xb6 << 1;
    ptr = (short *)((unsigned char *)ptr + v);
    val = *(short *)((unsigned char *)ptr + 0);
    __Func_8091e9c(val);
    __PlaySound(0x7b);
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern int __GetFlag(int);
extern unsigned char _EVENT_b4[];
extern unsigned char Lm967_2010[] __asm__(".Lm967_2010");
extern unsigned char Lm967_1eb4[] __asm__(".Lm967_1eb4");
extern unsigned char gScript_887__02009ca4[];
extern unsigned char Lm967_1a94[] __asm__(".Lm967_1a94");

int LaliveroRooms_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_b4) {
        if (__GetFlag(0x9a7)) return (int)Lm967_2010;
        return (int)Lm967_1eb4;
    }
    if (__GetFlag(0x9a7)) return (int)gScript_887__02009ca4;
    return (int)Lm967_1a94;
}
INCLUDE_ASM("asm/maps/lalivero_rooms/OvlFunc_967_2008508.s");
extern int _MSG_2880;

void OvlFunc_967_2008eec(void)
{
    __MessageID((int)&_MSG_2880);
    __CutsceneWait(0x14);
    __Func_80925cc(0xb, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0xb, 0);
    __CutsceneWait(0xa);
    __MapActor_Face(1, 0, 0x32);
    __MapActor_Emote(0, 0x105, 0x3c);
    __CutsceneWait(0xa);
    __Func_8092adc(1, 0xc000, 0);
    __CutsceneWait(0x14);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(3, 4);
    __CutsceneWait(0x14);
    __ActorMessage(3, 0);
    __CutsceneWait(0xa);
    __Func_80925cc(2, 2);
    __CutsceneWait(0x14);
    __ActorMessage(2, 0);
    __CutsceneWait(0xa);
    __Func_80925cc(0xc, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0xc, 0);
    __CutsceneWait(0x14);
    __Func_80925cc(0, 2);
    __CutsceneWait(0x14);
    __CutsceneWait(0x19);
    __Func_80925cc(1, 2);
    __CutsceneWait(0x1e);
    __ActorMessage(1, 0);
    __CutsceneWait(0x1e);
    __MapActor_DoAnim(1, 4);
    __CutsceneWait(0x14);
    __ActorMessage(1, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(3, 4);
    __CutsceneWait(0x14);
    __ActorMessage(3, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(2, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(2, 0);
    __CutsceneWait(0xa);
    __MapActor_Face(2, 0, 0x1e);
    __ShowActorMessage_NoWait(0x2002, 0);
}
INCLUDE_ASM("asm/maps/lalivero_rooms/LaliveroRooms_MapInit.s");
INCLUDE_ASM("asm/maps/lalivero_rooms/lalivero_rooms_data.s");

INCLUDE_ASM("asm/maps/lalivero_rooms/imports.s");
