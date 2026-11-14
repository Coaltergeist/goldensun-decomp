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

extern unsigned char gState[];
extern volatile unsigned int gKeyHeld;

extern int __Func_8019da8(int, int, int, int);
extern void __Func_8019908(int, int);
extern void __CloseUIBox(int, int);

void OvlFunc_974_200807c(int firstMessage, int count)
{
    int uiBox;
    int i;

    gState[0x20c] = 2;
    uiBox = __Func_8019da8(0x7d, 0, 0, 0);

    for (i = 0; i < count; i++) {
        __Func_8019908(1, 1);
        __Func_8019908(0x8d, 2);
        __Func_8019908(0x1e240, 5);
        OvlFunc_974_200804c(firstMessage);

        while (1) {
            if (gKeyHeld & 2) {
                goto exit;
            }
            if ((gKeyHeld & 1) || (gKeyHeld & 0x80)) {
                firstMessage++;
                break;
            }
            if (gKeyHeld & 0x40) {
                firstMessage--;
                break;
            }
            if (gKeyHeld != 0) {
                break;
            }
            __WaitFrames(1);
        }
    }

exit:
    __Func_8019a54();
    __CloseUIBox(uiBox, 2);
}
/* Message-ID endpoints for the debug message browser. Symbol-only absolute
 * definitions keep endpoint references separate; they emit no instructions. */
extern unsigned char MenuMessage_c9b[] __asm__(".Lmenu_message_c9b");
__asm__(".equ .Lmenu_message_c9b, 0xc9b");
extern unsigned char MenuMessage_cc6[] __asm__(".Lmenu_message_cc6");
__asm__(".equ .Lmenu_message_cc6, 0xcc6");
extern unsigned char MenuMessage_cf1[] __asm__(".Lmenu_message_cf1");
__asm__(".equ .Lmenu_message_cf1, 0xcf1");
extern unsigned char MenuMessage_d21[] __asm__(".Lmenu_message_d21");
__asm__(".equ .Lmenu_message_d21, 0xd21");
extern unsigned char MenuMessage_d4c[] __asm__(".Lmenu_message_d4c");
__asm__(".equ .Lmenu_message_d4c, 0xd4c");
extern unsigned char MenuMessage_d77[] __asm__(".Lmenu_message_d77");
__asm__(".equ .Lmenu_message_d77, 0xd77");
extern unsigned char MenuMessage_da2[] __asm__(".Lmenu_message_da2");
__asm__(".equ .Lmenu_message_da2, 0xda2");
extern void OvlFunc_974_200807c(int firstMessage, int count);

void OvlFunc_974_2008130(void)
{
    OvlFunc_974_200807c((int)MenuMessage_c9b, (int)MenuMessage_cc6 - (int)MenuMessage_c9b);
}
void OvlFunc_974_2008148(void)
{
    OvlFunc_974_200807c((int)MenuMessage_cc6, (int)MenuMessage_cc6 - (int)MenuMessage_c9b);
}
void OvlFunc_974_2008160(void)
{
    OvlFunc_974_200807c((int)MenuMessage_cf1, (int)MenuMessage_cc6 - (int)MenuMessage_c9b);
}
void OvlFunc_974_2008180(void)
{
    OvlFunc_974_200807c((int)MenuMessage_d21, (int)MenuMessage_d4c - (int)MenuMessage_d21);
}
void OvlFunc_974_2008198(void)
{
    OvlFunc_974_200807c((int)MenuMessage_d4c, (int)MenuMessage_cc6 - (int)MenuMessage_c9b);
}
void OvlFunc_974_20081b8(void)
{
    OvlFunc_974_200807c((int)MenuMessage_d77, (int)MenuMessage_cc6 - (int)MenuMessage_c9b);
}
void OvlFunc_974_20081d8(void)
{
    OvlFunc_974_200807c((int)MenuMessage_da2, (int)MenuMessage_cc6 - (int)MenuMessage_c9b);
}

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

extern int __GiveItemTo(int, int);

void OvlFunc_974_200829c(void)
{
    __Func_801776c(0xc1e, 1);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xbb);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb4);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb5);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb6);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(0, 0xb7);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xba);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(1, 0xbb);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbc);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xbd);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(2, 0xec);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xbf);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc0);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc1);
    __GiveItemTo(3, 0xc2);
    __GiveItemTo(3, 0xc2);
    __GiveItemTo(3, 0xc2);
    __GiveItemTo(3, 0xc2);
    __GiveItemTo(3, 0xc2);
    __GiveItemTo(3, 0xc2);
    __GiveItemTo(3, 0xc2);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc3);
    __GiveItemTo(3, 0xc4);
    __GiveItemTo(3, 0xc4);
    __GiveItemTo(3, 0xc4);
    __GiveItemTo(3, 0xc4);
    __GiveItemTo(3, 0xc4);
    __GiveItemTo(3, 0xc4);
    __GiveItemTo(3, 0xc4);
    __GiveItemTo(3, 0xc4);
    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}

extern int __GiveDjinni(int, int, int);
extern int __SetDjinni(int, int, int);

void OvlFunc_974_20088c4(void)
{
    unsigned char unused[0x100];

    __Func_801776c(0xc1d, 1);
    __GiveDjinni(0, 0, 0);
    __GiveDjinni(0, 0, 1);
    __GiveDjinni(0, 0, 2);
    __GiveDjinni(0, 0, 3);
    __GiveDjinni(0, 0, 4);
    __GiveDjinni(0, 0, 5);
    __GiveDjinni(0, 0, 6);
    __SetDjinni(0, 0, 0);
    __SetDjinni(0, 0, 1);
    __SetDjinni(0, 0, 2);
    __SetDjinni(0, 0, 3);
    __SetDjinni(0, 0, 4);
    __SetDjinni(0, 0, 5);
    __SetDjinni(0, 0, 6);
    __GiveDjinni(1, 2, 0);
    __GiveDjinni(1, 2, 1);
    __GiveDjinni(1, 2, 2);
    __GiveDjinni(1, 2, 3);
    __GiveDjinni(1, 2, 4);
    __GiveDjinni(1, 2, 5);
    __GiveDjinni(1, 2, 6);
    __SetDjinni(1, 2, 0);
    __SetDjinni(1, 2, 1);
    __SetDjinni(1, 2, 2);
    __SetDjinni(1, 2, 3);
    __SetDjinni(1, 2, 4);
    __SetDjinni(1, 2, 5);
    __SetDjinni(1, 2, 6);
    __GiveDjinni(3, 1, 0);
    __GiveDjinni(3, 1, 1);
    __GiveDjinni(3, 1, 2);
    __GiveDjinni(3, 1, 3);
    __GiveDjinni(3, 1, 4);
    __GiveDjinni(3, 1, 5);
    __GiveDjinni(3, 1, 6);
    __SetDjinni(3, 1, 0);
    __SetDjinni(3, 1, 1);
    __SetDjinni(3, 1, 2);
    __SetDjinni(3, 1, 3);
    __SetDjinni(3, 1, 4);
    __SetDjinni(3, 1, 5);
    __SetDjinni(3, 1, 6);
    __GiveDjinni(2, 3, 0);
    __GiveDjinni(2, 3, 1);
    __GiveDjinni(2, 3, 2);
    __GiveDjinni(2, 3, 3);
    __GiveDjinni(2, 3, 4);
    __GiveDjinni(2, 3, 5);
    __SetDjinni(2, 3, 0);
    __SetDjinni(2, 3, 1);
    __SetDjinni(2, 3, 2);
    __SetDjinni(2, 3, 3);
    __SetDjinni(2, 3, 4);
    __SetDjinni(2, 3, 5);
    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}
static inline void ModifyHP_974(int pc, int amount) { extern int __ModifyHP(int, int); __ModifyHP(pc, amount); }
void OvlFunc_974_2008b10(void)
{
    extern void __Func_801776c(int, int);
    extern int __ModifyPP(int, int);
    extern unsigned char *__GetUnit(int);
    extern void __CalcStats(int);
    unsigned char *u;


    __Func_801776c(0xc1b, 1);
    ModifyHP_974(0, -100);
    ModifyHP_974(1, -100);
    ModifyHP_974(2, -33);
    ModifyHP_974(3, -100);
    __ModifyPP(0, -50);
    __ModifyPP(1, -40);
    __ModifyPP(2, -35);
    __ModifyPP(3, -20);
    u = __GetUnit(0);
    u[0x131] = 1;
    u += 0x140;
    *u = 1;
    u = __GetUnit(1);
    u[0x130] = 1;
    u[0x131] = 2;
    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}
void OvlFunc_974_2008bb8(void)
{
    __Func_801776c(0xc1f, 1);

    __GiveItemTo(0, 0x55);
    __GiveItemTo(0, 0x54);
    __GiveItemTo(0, 0x7c);
    __GiveItemTo(0, 0x7b);
    __GiveItemTo(0, 0x09);
    __GiveItemTo(0, 0x0b);
    __GiveItemTo(0, 0x1b);
    __GiveItemTo(0, 0x1a);

    __GiveItemTo(1, 0x26);
    __GiveItemTo(1, 0x25);
    __GiveItemTo(1, 0x32);
    __GiveItemTo(1, 0x31);
    __GiveItemTo(1, 0x53);
    __GiveItemTo(1, 0x52);
    __GiveItemTo(1, 0x86);
    __GiveItemTo(1, 0x85);
    __GiveItemTo(1, 0x98);

    __GiveItemTo(2, 0x40);
    __GiveItemTo(2, 0x41);
    __GiveItemTo(2, 0x62);
    __GiveItemTo(2, 0x61);
    __GiveItemTo(2, 0x7c);
    __GiveItemTo(2, 0x83);
    __GiveItemTo(2, 0x8d);
    __GiveItemTo(2, 0xa3);

    __GiveItemTo(3, 0x3d);
    __GiveItemTo(3, 0x3f);
    __GiveItemTo(3, 0x60);
    __GiveItemTo(3, 0x5f);
    __GiveItemTo(3, 0x71);
    __GiveItemTo(3, 0x70);
    __GiveItemTo(3, 0x82);
    __GiveItemTo(3, 0x8e);
    __GiveItemTo(3, 0xab);

    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
}

#include "dma.h"

extern unsigned char MenuMessage_75[] __asm__(".Lmenu_message_75");
__asm__(".equ .Lmenu_message_75, 0x75");
extern unsigned char MenuMessage_182[] __asm__(".Lmenu_message_182");
__asm__(".equ .Lmenu_message_182, 0x182");

extern void __PlaySound(int);
extern int __CreateUIBox(int, int, int, int, int);
extern int _modsi3_RAM(int, int);
extern void __Func_8016498(int);
extern void __Func_80164ac(int);
extern void __UIDrawText(const void *, int, int, int);
extern void __Func_801e9d4(int, int, int, int, int);
extern int __Func_8078500(void);
extern void *__GetItemInfo(int);
extern void __Func_801e7c0(int, int, int, int);
extern void __DrawSmallText(int, int, int, int);
extern void __Func_80a4924(int, int);
extern int __GiveItem(int);

extern unsigned char gOvl_02009390[];
extern unsigned char gScript_944__0200939c[];
extern unsigned char gScript_960__020093b4[];
extern volatile unsigned int gKeyPress;
extern volatile unsigned int gKeyRepeat;

static inline int ModWrap(int item, int add, int mod)
{
    return _modsi3_RAM(item + (add << 1), mod << 1);
}

void OvlFunc_974_2008cf4(void)
{
    int uiBox1;
    int uiBox2;
    int itemId;
    int update;

    __PlaySound(0x70);
    uiBox1 = __CreateUIBox(0, 0, 0x1e, 7, 2);
    uiBox2 = __CreateUIBox(0, 8, 0xd, 0xa, 2);

    itemId = 1;
    update = itemId;

    DMA3_SET((void *)0x5000200, (void *)0x50001c0, 0x80000010);
    DMA3_SET((void *)0x50001e8, (void *)0x50001dc, 0x80000001);

    __WaitFrames(1);

    while (1) {
        if (update) {
            update = 0;
            itemId = ModWrap(itemId, 0x87, 0x87);
            __Func_8016498(uiBox1);
            __Func_80164ac(uiBox1);
            __UIDrawText(gOvl_02009390, uiBox1, 0, 0);
            __Func_801e9d4(itemId, 0, uiBox1, 0x50, update);

            if (__Func_8078500()) {
                int item = 0x1ff;
                __UIDrawText(gScript_944__0200939c, uiBox1, 0, 0x20);
                item &= itemId;
                __GetItemInfo(item);
                __Func_801e7c0(item + (int)MenuMessage_182, uiBox1, 0x78, 0);
                item += (int)MenuMessage_75;
                __DrawSmallText(item, uiBox1, 0, 0x10);
                __Func_8016498(uiBox2);
                __Func_80a4924(uiBox2, itemId);
            } else {
                __UIDrawText(gScript_960__020093b4, uiBox1, 0, 0x20);
            }
        }

        if (gKeyPress & 1) {
            if (__GiveItem(itemId) == -1) {
                __PlaySound(0x71);
                break;
            }
            __PlaySound(0xaf);
        }

        if (gKeyPress & 2) {
            __PlaySound(0x71);
            break;
        }

        if (gKeyRepeat & 0x40) {
            itemId--;
            update = 1;
            __PlaySound(0x6f);
        }
        if (gKeyRepeat & 0x80) {
            itemId++;
            update = 1;
            __PlaySound(0x6f);
        }
        if (gKeyRepeat & 0x10) {
            itemId += 10;
            update = 1;
            __PlaySound(0x6f);
        }
        if (gKeyRepeat & 0x20) {
            itemId -= 10;
            update = 1;
            __PlaySound(0x6f);
        }
        if (gKeyRepeat & 0x100) {
            itemId += 30;
            update = 1;
            __PlaySound(0x6f);
        }
        if (gKeyRepeat & 0x200) {
            itemId -= 30;
            update = 1;
            __PlaySound(0x6f);
        }

        __WaitFrames(1);
    }

    __Func_8016498(uiBox1);
    __WaitFrames(1);
    __CloseUIBox(uiBox1, 1);
    __CloseUIBox(uiBox2, 1);
}

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
extern void __Func_8079664(int);
extern void __AddPartyMember(int);
extern int __Func_8078ad0(int, int);

int MenuTest_MapInit(void) {
    __Func_8079664(5);
    __AddPartyMember(1);
    __AddPartyMember(3);
    __AddPartyMember(2);
    __Func_8078ad0(5, 1);
    __Func_8078ad0(5, 1);
    __Func_8078ad0(5, 1);
    __Func_8078ad0(6, 1);
    __Func_8078ad0(6, 1);
    __Func_8078ad0(7, 1);
    __Func_8078ad0(0x6a, 1);
    __Func_8078ad0(0x6c, 1);
    __Func_8078ad0(0x6d, 1);
    __Func_8078ad0(0x71, 1);
    __Func_8078ad0(0x7b, 1);
    __Func_8078ad0(0x82, 1);
    __Func_8078ad0(0x8c, 1);
    __Func_8078ad0(0x97, 1);
    __SetMinLevel(0, 0x32);
    __SetMinLevel(1, 0x1e);
    __SetMinLevel(3, 0x1e);
    __SetMinLevel(2, 0x1e);
    __CalcStats(0);
    __CalcStats(1);
    __CalcStats(3);
    __CalcStats(2);
    return 0;
}

extern int __Debug_IconTest(unsigned int actorID);

int OvlFunc_974_2009170(unsigned int actorID) {
    return __Debug_IconTest(actorID);
}

extern unsigned int __UI_Sanctum(void);

unsigned int OvlFunc_974_200917c(void) {
    return __UI_Sanctum();
}

INCLUDE_ASM("asm/maps/menu_test/menu_test_data.s");

INCLUDE_ASM("asm/maps/menu_test/imports.s");
