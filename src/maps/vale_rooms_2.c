/* rom_787e04 (overlay file 887): consolidated TU — vale_rooms_2 map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/vale_rooms_2/exports.s");

extern int __atan2(int, int);

int OvlFunc_887_2008030(struct Actor *actor)
{
    struct Actor *linked;
    int dz, dx;
    int diff;
    unsigned short angle;

    linked = actor->linkedActor;
    if (linked != 0) {
        actor->__unk5A &= 0xfe;
        dz = linked->pos.z - actor->pos.z;
        dx = linked->pos.x - actor->pos.x;
        angle = __atan2(dz, dx);
        diff = (short)(angle - actor->facing);
        if (diff != 0) {
            if (diff > 0x1000) {
                diff = 0x1000;
            }
            if (diff < (int)0xfffff000) {
                diff = (int)0xfffff000;
            }
            actor->facing = actor->facing + diff;
        }
    }
    return 1;
}

extern unsigned char gLuckyFountainPrizes[];

unsigned int ValeRooms2_GetEntrances(void) {
    return (unsigned int)gLuckyFountainPrizes;
}

int ValeRooms2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char L2198[] __asm__(".Lm887_2198");
extern unsigned int gOvl_0200a1dc;

unsigned int *ValeRooms2_GetExits(void)
{
    if (__GetFlag(0x834))
        return &gOvl_0200a1dc;
    return (unsigned int *)L2198;
}

extern unsigned char L2518[] __asm__(".Lm887_2518");
extern unsigned char L2410[] __asm__(".Lm887_2410");
extern unsigned char L2338[] __asm__(".Lm887_2338");
extern unsigned char L2218[] __asm__(".Lm887_2218");
extern unsigned int gState;

unsigned char * ValeRooms2_GetActors(void) {
    unsigned int r3;
    unsigned int r2;
    unsigned char *r5;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x13) {
        return L2518;
    }
    if (__GetFlag(0x87a) != 0) {
        r5 = L2410;
    } else if (__GetFlag(0x815) != 0) {
        r5 = L2338;
    } else {
        r5 = L2218;
    }
    __Func_808b868(r5);
    return r5;
}

extern void __CutsceneWait(int);
extern int __Func_8091c7c(int, int);

extern unsigned char Lconst_22b9[] __asm__(".Lconst_22b9");
__asm__(".equ .Lconst_22b9, 0x22b9");

void OvlFunc_887_2008118(int arg0) {
    int msg = (int)Lconst_22b9;

    __MessageID(msg);
    __ShowActorMessage_NoWait(arg0, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0xa);
        __MessageID(msg + 1);
    } else {
        __MessageID(msg + 2);
    }
    __ActorMessage(arg0, 0);
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState__a1 __asm__("gState");
extern unsigned char L2c5c[] __asm__(".Lm887_2c5c");
extern unsigned char L2b9c[] __asm__(".Lm887_2b9c");
extern unsigned char L25a8[] __asm__(".Lm887_25a8");
extern unsigned char L2980[] __asm__(".Lm887_2980");
extern unsigned char L2800[] __asm__(".Lm887_2800");
extern unsigned char L26b0[] __asm__(".Lm887_26b0");

unsigned int ValeRooms2_GetEvents(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState__a1;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 0x13) {
        if (__GetFlag(0x950) != 0) {
            return (unsigned int)L2c5c;
        } else {
            return (unsigned int)L2b9c;
        }
    } else if (__GetFlag(0x834) != 0) {
        return (unsigned int)L25a8;
    } else if (__GetFlag(0x87a) != 0) {
        return (unsigned int)L2980;
    } else if (__GetFlag(0x815) != 0) {
        return (unsigned int)L2800;
    } else {
        return (unsigned int)L26b0;
    }
}

INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_20081e0.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_887_2008284(void) {
    unsigned short *r2;
    unsigned short r3;

    __CutsceneStart();
    __MapActor_Face(0xe, 0, 0xa);
    __MessageID(0x11aa);
    __ShowActorMessage_NoWait(0xe, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __ActorMessage(0xe, 0);
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        __Func_8093054(0xe, 0);
    }
    __CutsceneEnd();
}

extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int);
extern unsigned int iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void OvlFunc_887_20082e0(int arg0) {
    unsigned char *base;

    if (__GetFlag(0x834) != 0) {
        __Func_8095214();
    }
    base = (unsigned char *)iwram_3001ebc__a1;
    *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(arg0);
}

extern void __PlaySound(int a);

void OvlFunc_887_200831c(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(1);
}


void OvlFunc_887_2008330(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(2);
}


void OvlFunc_887_2008344(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(3);
}


void OvlFunc_887_2008358(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(4);
}


void OvlFunc_887_200836c(void) {
    __PlaySound(0x80);
    OvlFunc_887_20082e0(5);
}


void OvlFunc_887_2008380(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(6);
}


void OvlFunc_887_2008394(void) {
    __PlaySound(0x80);
    OvlFunc_887_20082e0(7);
}


void OvlFunc_887_20083a8(void) {
    __PlaySound(0x81);
    OvlFunc_887_20082e0(8);
}


void OvlFunc_887_20083bc(void) {
    __PlaySound(0x81);
    OvlFunc_887_20082e0(9);
}


void OvlFunc_887_20083d0(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(0xa);
}


void OvlFunc_887_20083e4(void) {
    __PlaySound(0x7b);
    OvlFunc_887_20082e0(0xb);
}

INCLUDE_ASM("asm/maps/vale_rooms_2/ValeRooms2_MapInit.s");
INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_2008578.s");
INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_2008a0c.s");
extern struct Actor *__MapActor_GetActor(int);
extern void __Func_80b3284(int, int);

static inline int GetFlagShl2(int base) { return __GetFlag(base << 2); }
static inline void SetFlagShl2(int base) { __SetFlag(base << 2); }

INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_2008e34.s");

extern void __CutsceneStart(void);
extern void __MapActor_Face(int a, int b, int c);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __Func_8092adc(int a, int b, int c);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_887_2008ef8(void) {
    __CutsceneStart();
    __MapActor_Face(0x10, 0, 0xa);
    __MessageID(0x1c13);
    __ActorMessage(0x10, 0);
    __Func_8092adc(0x10, 0xb000, 0xa);
    __SetFlag(0x301);
    __CutsceneEnd();
}

void OvlFunc_887_2008f38(void) {
    __CutsceneStart();
    __MessageID(0x1c1b);
    __ActorMessage(0xd, 0);
    __SetFlag(0x81c);
    __CutsceneEnd();
}

void OvlFunc_887_2008f64(void) {
    __CutsceneStart();
    __MessageID(0x1c1a);
    __ActorMessage(0x10, 0);
    __SetFlag(0x81c);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_2008f90.s");
extern void __Func_80925cc(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern void __Func_801776c(int, int);
extern unsigned char gScript_887__02009e6c[];
extern unsigned char Lconst_1c79[] __asm__(".Lconst_1c79");
__asm__(".equ .Lconst_1c79, 0x1c79");

void OvlFunc_887_200933c(void)
{
    int msg;

    __CutsceneStart();
    if (__GetFlag(0x203)) {
        API_Func_8092a1c(8, 0x10000, gScript_887__02009e6c);
        __CutsceneWait(0x14);
        __MessageID(0x1c77);
        __ActorMessage(8, 0);
    } else {
        __Func_80925cc(8, 2);
        __CutsceneWait(0x28);
        msg = (int)Lconst_1c79;
        __MessageID(msg);
        msg++;
        __ActorMessage_Wait(8, 0, 0x28);
        __Func_801776c(msg, 1);
    }
    __CutsceneEnd();
}

extern void __CopyMapTiles(int, int, int, int, int, int);
void OvlFunc_887_20093b4(void) {
	__CopyMapTiles(0x16, 0x55, 0x19, 0x55, 2, 2);
	API_Func_8010704(0x19, 0xf, 2, 2, 0x19, 0x19);
}

INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_20093e4.s");

extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_887_200968c(unsigned int a);

void OvlFunc_887_2009544(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if (!(iwram_3001e40 & 0xf)) {
        OvlFunc_887_200968c(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a1 __asm__("iwram_3001e40");
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);

void OvlFunc_887_2009580(arg0) unsigned int arg0;
{
    if (iwram_3001e40__a1 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a1 >> 1, 6));
    }
    if ((iwram_3001e40__a1 & 0xf) == 0) {
        OvlFunc_887_200968c(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");

void OvlFunc_887_20095bc(arg0) int arg0;
{
    if (iwram_3001e40__a2 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a2 >> 1, 6));
    }
}

extern int __sin(int);
extern void __DeleteActor(struct Actor *);

void OvlFunc_887_20095e8(struct Actor *actor)
{
    struct Actor *linked;
    fx32 sinVal;

    linked = actor->linkedActor;
    actor->waveCounter++;
    if (actor->waveCounter > 0x1f) {
        __DeleteActor(actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = sinVal;
        actor->pos.x = linked->pos.x;
        actor->pos.y = actor->pos.y + (0x80 << 9);
        actor->pos.z = linked->pos.z + (0x10000 - sinVal) * 5 + (0x80 << 12);
    }
}
INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_2009638.s");
INCLUDE_ASM("asm/maps/vale_rooms_2/OvlFunc_887_200968c.s");

extern void __Func_8096fb0(int a, int b);

void OvlFunc_887_20097a8(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_887_20097b8(void) {
    __Func_8097194();
}

void OvlFunc_887_20097c4(void) {
    __MapActor_GetActor(8);
    OvlFunc_887_2009580();
}


void OvlFunc_887_20097d4(void) {
    __MapActor_GetActor(0x11);
    OvlFunc_887_20095bc();
}

void OvlFunc_887_20097e4(void)
{
  unsigned long long new_var5;
  int new_var2;
  int new_var;
  int new_var3;
  int new_var4;
  new_var2 = 0x94;
  new_var5 = new_var2;
  new_var3 = new_var5;
  new_var2 = (new_var4 = 0x11);
  new_var5 = 1;
 do { new_var = new_var5; } while ((double) 0);
  __Func_8096fb0(new_var3, new_var);
  __Func_80970f8(8, new_var2);
  __Func_809728c();
  new_var2 = new_var5;
  __FieldMove(new_var2);
  __Func_8097174();
  __Func_8097194();
}

INCLUDE_ASM("asm/maps/vale_rooms_2/vale_rooms_2_data.s");

INCLUDE_ASM("asm/maps/vale_rooms_2/imports.s");
