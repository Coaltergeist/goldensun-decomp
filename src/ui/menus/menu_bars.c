#include "nonmatching.h"

extern void Func_801c2d0(void);
extern void Func_80284dc(void);
extern void AddMenuBarOption(unsigned int option);
extern void Func_8028808(unsigned int arg0, unsigned int arg1, unsigned int arg2);
extern unsigned int Func_80286a0(unsigned int arg0, unsigned int arg1);
extern void Func_802851c(void);
extern void Func_801c2e4(void);
extern unsigned int Func_8028574(unsigned int arg0);

extern void *alloc_iwram(int);
extern unsigned char *GetFile(int);
extern unsigned char _FILE_f1[];
extern void DecompressLZ1(void *, void *);
extern void UploadSpriteGFX(int, int, void *);
extern void free(void *);
void LoadUIIcon(int dst, int idx)
{
    int size = 0x400;
    void *buf = alloc_iwram(size);
    unsigned char *f = GetFile((int)_FILE_f1);
    DecompressLZ1(f + ((unsigned short *)f)[idx], buf);
    UploadSpriteGFX(dst, size, buf);
    free(buf);
}

INCLUDE_ASM("asm/ui/menus/menu_bars/AddMenuBarOption.s");

INCLUDE_ASM("asm/ui/menus/menu_bars/Func_8028808.s");

INCLUDE_ASM("asm/ui/menus/menu_bars/Func_80288a8.s");

INCLUDE_ASM("asm/ui/menus/menu_bars/Func_8028920.s");

unsigned int Func_802899c(unsigned int r0, unsigned int r1)
{
    unsigned int r5;

    r5 = r0;
    Func_801c2d0();
    Func_80284dc();
    AddMenuBarOption(1);
    AddMenuBarOption(0xf);
    AddMenuBarOption(2);
    AddMenuBarOption(7);
    Func_8028808(0x11, 7, 0);
    r1 = Func_80286a0(r5, r1 - 1);
    Func_802851c();
    Func_801c2e4();
    return r1;
}

INCLUDE_ASM("asm/ui/menus/menu_bars/Func_80289e8.s");

INCLUDE_ASM("asm/ui/menus/menu_bars/Func_8028aa8.s");

INCLUDE_ASM("asm/ui/menus/menu_bars/Func_8028b80.s");

INCLUDE_ASM("asm/ui/menus/menu_bars/DataTransferMenu.s");

unsigned int ShopMenu(unsigned int r0)
{
    unsigned int r5;

    r5 = r0;
    Func_80284dc();
    AddMenuBarOption(0x11);
    AddMenuBarOption(0x12);
    AddMenuBarOption(0x13);
    AddMenuBarOption(0x14);
    Func_8028808(0x11, 7, 0);
    r5 = Func_8028574(r5);
    Func_802851c();
    return r5;
}

unsigned int SanctumMenu(unsigned int r0)
{
    unsigned int r5;

    r5 = r0;
    Func_80284dc();
    AddMenuBarOption(0x19);
    AddMenuBarOption(0x1a);
    AddMenuBarOption(0x1b);
    AddMenuBarOption(0x1c);
    Func_8028808(0x11, 0xa, 0);
    r5 = Func_8028574(r5);
    Func_802851c();
    return r5;
}

INCLUDE_ASM("asm/ui/menus/menu_bars/YesNoMenu.s");

INCLUDE_ASM("asm/ui/menus/menu_bars/YesNoMenu2.s");

unsigned int LuckyFountainMenu(unsigned int arg0)
{
    unsigned int r5;

    Func_80284dc();
    AddMenuBarOption(0x20);
    AddMenuBarOption(0x21);
    Func_8028808(0x11, 9, 0);
    r5 = Func_8028574(arg0);
    Func_802851c();
    return r5;
}
