// fakematch
/* rom_7c5efc (overlay file 941): consolidated TU — west_lunpa_cave map overlay. */

#include "nonmatching.h"

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

INCLUDE_ASM("asm/maps/west_lunpa_cave/ovl_30_c_a_c_a.s");

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

INCLUDE_ASM("asm/maps/west_lunpa_cave/ovl_30_c_a_c_c_a_c_a.s");

struct Actor {
unsigned char pad[0x23];
unsigned char unk23;
};
void OvlFunc_941_20080d4(void);

void OvlFunc_941_20081b0(void) {
    struct Actor *actor;
    int flag;

    actor = __MapActor_GetActor(10);
    __SetFlag(0x80 << 2);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
        actor->unk23 = 1;
    }
    flag = 0x202;
    __asm__ volatile ("" : "+r" (flag));
    if (__GetFlag(flag) == 0) {
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

INCLUDE_ASM("asm/maps/west_lunpa_cave/ovl_30_c_a_c_c_c_a.s");

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

INCLUDE_ASM("asm/maps/west_lunpa_cave/ovl_30_c_c_c_c_a.s");

unsigned int OvlFunc_941_200941c(void)
{
    unsigned int r3;
    __MessageID(0x255c);
    __ShowActorMessage_NoWait(1, 0);
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-r3 | r3) >> 31);
}

INCLUDE_ASM("asm/maps/west_lunpa_cave/ovl_30_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/west_lunpa_cave/imports.s");
