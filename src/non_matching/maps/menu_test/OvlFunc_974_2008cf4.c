#include "dma.h"
extern void __PlaySound(int);
extern int __CreateUIBox(int, int, int, int, int);
extern void __WaitFrames(int);
extern int _modsi3_RAM(int, int);
extern void __Func_8016498(int);
extern void __Func_80164ac(int);
extern void __UIDrawText(const void *, int, int, int);
extern void __Func_801e9d4(int, int, int, int, int);
extern int __Func_8078500(void);
extern void *__GetItemInfo(int);
extern void __Func_801e7c0(int, int, int, int);
extern int __DrawSmallText(int, int, int, int);
extern void __Func_80a4924(int, int);
extern int __GiveItem(int);
extern void __CloseUIBox(int, int);

extern unsigned char gOvl_02009390[];
extern unsigned char gScript_944__0200939c[];
extern unsigned char gScript_960__020093b4[];
extern volatile unsigned int gKeyPress;
extern volatile unsigned int gKeyRepeat;

static inline int CS974_WrapItem(int item, int bias, int count)
{
    return _modsi3_RAM(item + (bias << 1), count << 1);
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
            itemId = CS974_WrapItem(itemId, 0x87, 0x87);
            __Func_8016498(uiBox1);
            __Func_80164ac(uiBox1);
            __UIDrawText(gOvl_02009390, uiBox1, 0, 0);
            __Func_801e9d4(itemId, 0, uiBox1, 0x50, update);

            if (__Func_8078500()) {
                int item = 0x1ff;
                __UIDrawText(gScript_944__0200939c, uiBox1, 0, 0x20);
                item &= itemId;
                __GetItemInfo(item);
                __Func_801e7c0(item + 0x182, uiBox1, 0x78, 0);
                item += 0x75;
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
