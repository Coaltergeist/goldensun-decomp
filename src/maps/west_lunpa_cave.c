/* rom_7c5efc (overlay file 941): consolidated TU — west_lunpa_cave map overlay. */

#include "nonmatching.h"

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Lm941_1cc0[] __asm__(".Lm941_1cc0");
extern unsigned char Lm941_1cd8[] __asm__(".Lm941_1cd8");
extern unsigned char Lconst_6a[] __asm__(".Lconst_6a");
__asm__(".equ .Lconst_6a, 0x6a");

INCLUDE_ASM("asm/maps/west_lunpa_cave/exports.s");

extern unsigned char gOvl_02009c34[];

unsigned int WestLunpaCave_GetEntrances(void) {
    return (unsigned int)gOvl_02009c34;
}

unsigned int WestLunpaCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009cac[];

unsigned int WestLunpaCave_GetExits(void) {
    return (unsigned int)gOvl_02009cac;
}

unsigned int *WestLunpaCave_GetActors(void)
{
    unsigned int r3;
    unsigned int r1;

    r3 = (unsigned int)&gState;
    r1 = 0xe0;
    r1 <<= 1;
    r3 += r1;
    r1 = 0;
    if (*(short *)((char *)r3 + r1) == (int)Lconst_6a) {
        return (unsigned int *)Lm941_1cd8;
    }
    return (unsigned int *)Lm941_1cc0;
}

extern unsigned char gOvl_02009dd4[];

unsigned int WestLunpaCave_GetEvents(void) {
    return (unsigned int)gOvl_02009dd4;
}

void OvlFunc_941_200807c(void)
{
    unsigned int actor;

    actor = __MapActor_GetActor(8);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
    }
}

INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_2008094.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_20080d4.s");

struct Actor {
unsigned char pad[0x23];
unsigned char unk23;
};
void OvlFunc_941_20080d4(void);

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

void OvlFunc_941_20081b0(void) {
    struct Actor *actor;

    actor = __MapActor_GetActor(10);
    __SetFlag(0x80 << 2);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
        actor->unk23 = 1;
    }

    if (GetFlag(0x202) == 0) {
        __PlaySound(0x9d);
        OvlFunc_941_20080d4();
        __PlaySound(0x50);
        __SetFlag(0x202);
    }
}

extern void __SetFlag(int);

void OvlFunc_941_2008200(void) {
    __SetFlag(0x203);
}

INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_2008210.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_200833c.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_2008384.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_2008460.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_20084a8.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_2008828.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_20091b8.s");

extern int __Func_8091c7c(int a, int b);

unsigned int OvlFunc_941_20092ac(void)
{
    int r3;
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-r3 | r3) >> 31);
}

unsigned int OvlFunc_941_20092c4(void)
{
    unsigned int r3;
    __MessageID(0x2549);
    __ShowActorMessage_NoWait(1, 0);
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-(int)r3 | r3) >> 31);
}

unsigned int OvlFunc_941_20092f0(void)
{
    unsigned int r3;
    __MessageID(0x254d);
    __ShowActorMessage_NoWait(1, 0);
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-r3 | r3) >> 31);
}

unsigned int OvlFunc_941_200931c(void) {
    return 1;
}

unsigned int OvlFunc_941_2009320(void)
{
    unsigned int r3;
    __MessageID(0x2557);
    __ShowActorMessage_NoWait(0xc, 0);
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-r3 | r3) >> 31);
}

extern int __MessageID();
extern int __ShowActorMessage_NoWait();

unsigned int OvlFunc_941_200934c(void) {
    __MessageID(0x255d);
    __ShowActorMessage_NoWait(1, 0);
    return 1;
}

unsigned int OvlFunc_941_2009368(void)
{
    unsigned int r3;
    __MessageID(0x254a);
    __ShowActorMessage_NoWait(3, 0);
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-r3 | r3) >> 31);
}

INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_2009394.s");

unsigned int OvlFunc_941_200941c(void)
{
    unsigned int r3;
    __MessageID(0x255c);
    __ShowActorMessage_NoWait(1, 0);
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-r3 | r3) >> 31);
}

INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_2009448.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/OvlFunc_941_2009760.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/WestLunpaCave_MapInit.s");
INCLUDE_ASM("asm/maps/west_lunpa_cave/west_lunpa_cave_data.s");

INCLUDE_ASM("asm/maps/west_lunpa_cave/imports.s");
