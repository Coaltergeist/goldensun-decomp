// fakematch
/* ui/save_menu.c -- consolidated TU. */
#include "nonmatching.h"

extern int Func_8021b30();

INCLUDE_ASM("asm/ui/save_menu/rom_1fe2c.s");

INCLUDE_ASM("asm/ui/save_menu/rom_20198_a_a.s");

extern unsigned int AllocSpriteSlot(void);
extern void UploadSpriteGFX(unsigned int, unsigned int, unsigned char *);
extern unsigned char Data_310a4[];

unsigned int Func_80209b0(unsigned int arg0) {
    unsigned int r5;

    r5 = AllocSpriteSlot();
    UploadSpriteGFX(r5, 0x80, Data_310a4);
    return r5;
}

int Func_80209cc(void) { return 1; }

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_a.s");

extern int Data_310a4__a1 __asm__("Data_310a4");

void Func_8020aec(int slot) {
    UploadSpriteGFX(slot, 0x80, (unsigned char *)&Data_310a4__a1);
}

extern unsigned char Data_317e4[];

void Func_8020b00(int arg0)
{
    UploadSpriteGFX(arg0, 0x80, Data_317e4);
}

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_c_c_a_a_a.s");

extern void *galloc_ewram(int index, unsigned int size);
extern void DecompressLZ1(void *src, void *dest);
extern void gfree(int index);
extern unsigned char *Data_31864[];

void Func_80215e0(int param_1, unsigned int param_2)
{
    unsigned char *gfx;
    unsigned char *src;
    unsigned int size;

    gfx = galloc_ewram(0xe, 0x400);
    src = Data_31864[param_1];
    if ((int)param_2 < 0x60) {
        DecompressLZ1(src, gfx);
        size = 0x80;
        size <<= 2;
        __asm__ volatile ("" : "+r" (size));
        UploadSpriteGFX(param_2, size, gfx);
        gfree(0xe);
    }
}

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_c_c_a_a_c_a.s");

extern void StartMenu_AddOption(unsigned int icon, unsigned int name, unsigned int unk);
extern unsigned int Func_801eadc(unsigned int name, unsigned int flags, unsigned int arg2, unsigned int arg3, unsigned int arg4);

unsigned int Func_8021750(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
    unsigned int slot;
    unsigned int ret;

    slot = AllocSpriteSlot();
    ret = 0;
    if (slot != 0x60) {
        StartMenu_AddOption(arg0, slot, arg1);
        ret = Func_801eadc(slot, 0x80000000, arg2, arg3, arg4);
        *(unsigned char *)(ret + 0x15) |= 0x20;
        *(unsigned char *)(ret + 0xf) = 0xfb;
    }
    return ret;
}

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_c_c_a_a_c_c_a.s");

/* Cluster Func_80218dc..Func_80218dc extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a_a_c_c.s.
 */
extern void Func_8019000(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

int Func_80218dc(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    Func_8019000(a0, (a3 * 2 + 0xf315) | 0x400, a1, a2, 0);
    Func_8019000(a0, a3 * 2 + 0xf314, a1 + 1, a2, 0);
    Func_8019000(a0, a3 * 2 + 0xf315, a1 + 2, a2, 0);
}

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_c_c_a_a_c_c_c.s");

extern unsigned char iwram_3001e40[];
extern unsigned char L37280[] __asm__(".L37280");
extern void Func_8021950(int arg0, void *arg1, void *arg2, int arg3);

void Func_80219c8(unsigned int arg0)
{
    int r6;
    unsigned char *r5;

    r6 = (*(unsigned int *)iwram_3001e40 >> 2) & 3;
    if (r6 > 2) {
        r6 = 2;
    }
    if (r6 <= 0) {
        r6 = 1;
    }
    r5 = L37280;
    r6 = r6 + 1;
    Func_8021950(0x6000220, r5, (void *)arg0, -r6);
    r5 += 0x20;
    Func_8021950(0x6000240, r5, (void *)(arg0 + 0x20), r6);
}

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_c_c_a_c_a.s");

extern void DecompressStatusIcon(unsigned int iconID);
extern int UploadSprite2(unsigned int slot, void *gfx);

int Func_8021ab0(unsigned int iconID, unsigned int slot)
{
    void *p;
    int result;

    p = galloc_ewram(0x11, 0xc1 << 3);
    DecompressStatusIcon(iconID);
    result = UploadSprite2(slot, (void *)((char *)p + (0x80 << 3)));
    gfree(0x11);
    return result;
}

extern void DrawInventoryIcon(unsigned int itemStack, unsigned int flags);

unsigned int Func_8021af0(unsigned int arg0, unsigned int arg1)
{
    unsigned char *buf;
    unsigned int result;

    buf = (unsigned char *) galloc_ewram(0x11, 0xc1 << 3);
    DrawInventoryIcon(arg0, 0x1a);
    result = UploadSprite2(arg1, buf + (0x80 << 3));
    gfree(0x11);
    return result;
}

extern void LoadMoveIcon(unsigned int move, int box, int *slot, int *unk, int unk2);

int Func_8021b30(unsigned int move, unsigned int arg1)
{
    void *buf;
    int unk;
    int slot;
    int result;

    buf = galloc_ewram(0x11, 0x608);
    slot = arg1;
    LoadMoveIcon(move, 0, &slot, &unk, 1);
    result = UploadSprite2(arg1, (void *)((char *)buf + 0x400));
    gfree(0x11);
    return result;
}

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_c_c_a_c_c_c_c.s");

extern unsigned int Data_73968[];

unsigned int Func_8021bc8(int idx) {
    if (idx != 0)
        idx = 0;
    return Data_73968[idx];
}

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_c_c_c_a.s");

extern void *galloc_iwram(int index, unsigned int size);
extern void *GetFile(int index);
extern int _FILE_f1;
#define FILE_f1 ((int)&_FILE_f1)

unsigned int Func_8021c64(unsigned int arg0, unsigned int index)
{
    unsigned char *dest;
    unsigned char *file;
    unsigned char **field;
    unsigned char *src;
    unsigned int result;

    dest = (unsigned char *) galloc_iwram(0x11, 0xc1 << 3);
    file = (unsigned char *) GetFile(FILE_f1);
    field = (unsigned char **)(dest + 0x604);
    src = file + *(unsigned short *)(file + index * 2);
    *field = src;
    DecompressLZ1(src, dest);
    result = UploadSprite2(arg0, dest);
    gfree(0x11);
    return result;
}

INCLUDE_ASM("asm/ui/save_menu/rom_20198_c_c_c_c_c.s");

#include "gba/io.h"

void Func_8021dfc(void) {
    do { u32 _value = (~3 & REG_BG1CNT) | 3; REG_BG1CNT = _value; } while (0);
}

#include "gba/io.h"
#include "interrupt.h"

void Func_8021e14(void) {
    SET_IO(REG_BG1CNT, (REG_BG1CNT & ~3));
}

extern void SetIntrHandler(unsigned int, unsigned int, void *);

void Func_8021e28(void) {
    SET_IO(REG_BG0VOFS, 0);
    SetIntrHandler((1 << INTR_ID_HBLANK), 0x88, Func_8021e14);
}

extern unsigned int Func_8017658(unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned int Func_8017364(void);
extern void WaitFrames(unsigned int);

unsigned int Func_8021e48(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int r5;
    r5 = Func_8017658(arg0, arg1, arg2, 1);
    while (!Func_8017364()) {
        WaitFrames(1);
    }
    return r5;
}

INCLUDE_ASM("asm/ui/save_menu/rom_21dfc_a_c_c_c.s");

extern unsigned int FormatDecimalString(unsigned int arg0);
extern unsigned char gStringBuffer;

unsigned int Func_80228bc(unsigned short *arg0, unsigned int arg1) {
    unsigned char *p;
    unsigned int r;
    int i;

    r = FormatDecimalString(arg1);
    p = &gStringBuffer;
    for (i = 0xd; i >= 0; i--) {
        *arg0 = *p;
        p++;
        arg0++;
    }
    return r;
}

INCLUDE_ASM("asm/ui/save_menu/rom_21dfc_c_a.s");


int Func_8022a38(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int slot;

    slot = AllocSpriteSlot();
    if (slot != 0x60) {
        Func_8021b30(arg3, slot);
        return Func_801eadc(slot, 0x80 << 23, arg0, arg1, arg2);
    }
}

INCLUDE_ASM("asm/ui/save_menu/rom_22a7c.s");

INCLUDE_ASM("asm/ui/save_menu/rom_23178_a_a_a_a.s");

extern void Func_801c2d0(void);
extern void Func_80284dc(void);
extern void AddMenuBarOption(unsigned int option);
extern void Func_8028808(unsigned int arg0, unsigned int arg1, unsigned int arg2);
extern unsigned int Func_80286a0(unsigned int arg0, unsigned int arg1);
extern void Func_802851c(void);
extern void Func_801c2e4(void);

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

INCLUDE_ASM("asm/ui/save_menu/rom_23178_a_a_a_c.s");

extern unsigned int Func_8028574(unsigned int arg0);

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

INCLUDE_ASM("asm/ui/save_menu/rom_23178_a_a_c_c_a.s");


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

extern int StartTask(void *task, int priority);
extern void Debug_WarpMenu(void);

void Func_8028edc(void) {
    StartTask(Debug_WarpMenu, 0xc8 << 4);
}

INCLUDE_ASM("asm/ui/save_menu/rom_23178_a_c.s");

void Func_80294d0(void) {}

extern void _SetFlag(unsigned int);
extern void _GiveDjinni(unsigned int, unsigned int, unsigned int);

void CollectDjinni(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int r5;
    unsigned int r6;
    unsigned int r0;

    r5 = arg1;
    r6 = arg2;
    r0 = r5 << 2;
    r0 += r5;
    r0 <<= 2;
    r0 += r6;
    r0 += 0x30;
    _SetFlag(r0);
    _GiveDjinni(arg0, r5, r6);
}

INCLUDE_ASM("asm/ui/save_menu/rom_23178_c_c.s");
