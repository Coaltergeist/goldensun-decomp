/* rom_7fcd20 (overlay file 974): consolidated TU — menu_test map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/menu_test/exports.s");

extern unsigned char gOvl_020093c8[];

unsigned int MenuTest_GetEntrances(void) {
    return (unsigned int)gOvl_020093c8;
}

unsigned int MenuTest_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020093f8[];

unsigned int MenuTest_GetExits(void) {
    return (unsigned int)gOvl_020093f8;
}
extern unsigned char gOvl_020093fc[];

unsigned int MenuTest_GetActors(void) {
    return (unsigned int)gOvl_020093fc;
}

extern void __Func_8019a54(void);
extern void __Func_8017658(unsigned int a, int b, int c, int d);
extern void __WaitFrames(int a);
extern int __Func_8017364(void);

void OvlFunc_974_200804c(unsigned int arg0) {
    __Func_8019a54();
    __Func_8017658(arg0, 5, 0, 0x22);
    while (!__Func_8017364()) {
        __WaitFrames(1);
    }
    __WaitFrames(1);
}

INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_200807c.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_2008130.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_2008148.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_2008160.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_2008180.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_2008198.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_20081b8.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_20081d8.s");

extern void __Debug_TestEquipAndStatus(int);

void OvlFunc_974_20081f8(void) {
    __Debug_TestEquipAndStatus(1);
}

void OvlFunc_974_2008204(void) {}

void OvlFunc_974_2008208(void)
{
    unsigned int buf0;
    unsigned int buf1;
    __UI_SellMenu(&buf1, &buf0);
}

extern void __UI_NameEntry(int);

void OvlFunc_974_200821c(void) {
    __UI_NameEntry(0);
}

void OvlFunc_974_2008228(void) {}

extern unsigned int iwram_3001f30;

void OvlFunc_974_200822c(void) {
    unsigned int addr;
    addr = iwram_3001f30;
    addr += 0x35;
    *((unsigned char *)addr) = 1;
}

extern unsigned char Events[];

void *MenuTest_GetEvents(void) {
    return (void *)Events;
}

extern void __Func_801776c(int, int);
extern void __SetMinLevel(int, unsigned int);
extern void __CalcStats(int);
extern unsigned int L1684 __asm__(".Lm974_1684");

void OvlFunc_974_2008244(void)
{
    __Func_801776c(0xc1a, 1);
    __SetMinLevel(0, L1684);
    __SetMinLevel(1, L1684);
    __SetMinLevel(3, L1684);
    __SetMinLevel(2, L1684);
    L1684 = L1684 + 10;
    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}

INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_200829c.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_20088c4.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_2008b10.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_2008bb8.s");
INCLUDE_ASM("asm/maps/menu_test/OvlFunc_974_2008cf4.s");

extern void OvlFunc_974_2008cf4(void);

void OvlFunc_974_2008f08(void) {
    OvlFunc_974_2008cf4();
}

void OvlFunc_974_2008f14(void)
{
    __Func_801776c(0xc1c, 1);

    __GiveItemTo(0, 0xb8);
    __GiveItemTo(0, 0xcc);
    __GiveItemTo(0, 0xdc);
    __GiveItemTo(0, 0xdd);
    __GiveItemTo(0, 0xde);
    __GiveItemTo(0, 0xdf);
    __GiveItemTo(0, 0xe0);

    __GiveItemTo(1, 0xe2);
    __GiveItemTo(1, 0xe3);
    __GiveItemTo(1, 0xe6);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe4);
    __GiveItemTo(1, 0xe5);
    __GiveItemTo(1, 0xe5);
    __GiveItemTo(1, 0xe5);
    __GiveItemTo(1, 0xe5);
    __GiveItemTo(1, 0xe5);
    __GiveItemTo(1, 0xe5);
    __GiveItemTo(1, 0xe5);
    __GiveItemTo(1, 0xe5);
    __GiveItemTo(1, 0xe8);
    __GiveItemTo(1, 0xe7);
    __GiveItemTo(1, 0xed);

    __GiveItemTo(2, 0xf2);
    __GiveItemTo(2, 0x102);
    __GiveItemTo(2, 0x10b);
    __GiveItemTo(2, 0x109);
    __GiveItemTo(2, 0xfc);

    __GiveItemTo(3, 0xbd);
    __GiveItemTo(3, 0xc8);
    __GiveItemTo(3, 0xc9);
    __GiveItemTo(3, 0xca);
    __GiveItemTo(3, 0xcb);
    __GiveItemTo(3, 0xcc);
    __GiveItemTo(3, 0xcf);

    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}
INCLUDE_ASM("asm/maps/menu_test/MenuTest_MapInit.s");

extern int __Debug_IconTest(unsigned int actorID);

int OvlFunc_974_2009170(unsigned int actorID) {
    return __Debug_IconTest(actorID);
}

extern unsigned int __UI_Sanctum(void);

unsigned int OvlFunc_974_200917c(void) {
    return __UI_Sanctum();
}

INCLUDE_ASM("asm/maps/menu_test/ovl_30_c_c_c.s");

INCLUDE_ASM("asm/maps/menu_test/imports.s");
