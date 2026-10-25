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
extern unsigned int DecompressLZ1(void *, void *);
extern unsigned int UploadSpriteGFX(int, int, void *);
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

extern signed char L373f7_[][6] __asm__(".L373f7");
extern signed char L37403_[][6] __asm__(".L37403");
extern int _GetNumDjinn(int);
int Func_8028920(int sel)
{
    int noDjinn = 0;
    if (_GetNumDjinn(-1) == 0) noDjinn = 1;
    sel = L37403_[noDjinn][sel] - 1;
    if (sel < 0) sel = 0;
    Func_80284dc();
    AddMenuBarOption(1);
    if (!noDjinn) AddMenuBarOption(0xf);
    AddMenuBarOption(2);
    AddMenuBarOption(7);
    Func_8028808(0x11, 7, 0);
    sel = Func_8028574(sel);
    Func_802851c();
    if (sel >= 0) sel = L373f7_[noDjinn][sel + 1];
    return sel;
}

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

extern void DrawSmallText(int, int, int, int);
extern void Func_8016478(int);
extern unsigned char *iwram_3001f38;
void Func_8028b80(void)
{
    unsigned char *s = iwram_3001f38;
    short *b = (short *)(s + 0x96);
    short *a = (short *)(s + 0x8c);
    int m;
    if (*b != *a) {
        *b = *a;
        Func_8016478(*(int *)(s + 0x7c));
        if (*a == 0) {
            m = 0xc71;
            DrawSmallText(m, *(int *)(s + 0x7c), 0x10, 4);
            m++;
            DrawSmallText(m, *(int *)(s + 0x7c), 0x10, 0x10);
        } else {
            m = 0xc73;
            DrawSmallText(m, *(int *)(s + 0x7c), 0, 4);
            DrawSmallText(m + 1, *(int *)(s + 0x7c), 0, 0x10);
            m += 2;
            DrawSmallText(m, *(int *)(s + 0x7c), 0, 0x1c);
        }
    }
}

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

int YesNoMenu(int a, int b, int c, int d)
{
    int x = 0;
    Func_80284dc();
    if (c == 0)
        c = 3;
    if (a)
        x = 0x11;
    AddMenuBarOption(5);
    AddMenuBarOption(6);
    Func_8028808(x, c, b);
    d = Func_8028574(d);
    Func_802851c();
    if (d == -1)
        d = 1;
    return d;
}

extern void Func_80288a8(int, int, int, int);
extern unsigned char Lconst_24[] __asm__(".Lconst_24");
/* pooled literal (ldr rN, =0x24 in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_24, 0x24");
int YesNoMenu2(int a, int b, int c)
{
    int k = (int)Lconst_24;
    Func_80284dc();
    AddMenuBarOption(5);
    AddMenuBarOption(6);
    Func_80288a8(a, b, 3, k);
    c = Func_8028574(c);
    Func_802851c();
    if (c == -1)
        c = 1;
    return c;
}

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
