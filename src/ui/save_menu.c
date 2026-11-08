#include "nonmatching.h"
#include "dma.h"

extern unsigned int AllocSpriteSlot(void);
extern void UploadSpriteGFX(unsigned int, unsigned int, unsigned char *);
extern unsigned char Data_310a4[];
extern int Data_310a4__a1 __asm__("Data_310a4");
extern unsigned char Data_317e4[];
extern void *galloc_ewram(int index, unsigned int size);
extern void DecompressLZ1(void *src, void *dest);
extern void gfree(int index);
extern unsigned char *Data_31864[];
extern void StartMenu_AddOption(unsigned int icon, unsigned int name, unsigned int unk);
extern unsigned int Func_801eadc(unsigned int name, unsigned int flags, unsigned int arg2, unsigned int arg3, unsigned int arg4);
extern void Func_8019000(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char iwram_3001e40[];
extern unsigned char GFX_PageNumberArrows[] __asm__("GFX_PageNumberArrows");
extern void Func_8021950(int arg0, void *arg1, void *arg2, int arg3);
extern void DecompressStatusIcon(unsigned int iconID);
extern int UploadSprite2(unsigned int slot, void *gfx);
extern void DrawInventoryIcon(unsigned int itemStack, unsigned int flags);
extern void LoadMoveIcon(unsigned int move, int box, int *slot, int *unk, int unk2);
extern int Func_8021b30();
extern unsigned int Data_73968[];
extern void *galloc_iwram(int index, unsigned int size);
extern void *GetFile(int index);
extern int _FILE_f1;
#define FILE_f1 ((int)&_FILE_f1)
#include "gba/io.h"
#include "interrupt.h"
extern void SetIntrHandler(unsigned int, unsigned int, void *);
extern unsigned int Func_8017658(unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned int Func_8017364(void);
extern void WaitFrames(unsigned int);
extern unsigned int FormatDecimalString(unsigned int arg0);
extern unsigned char gStringBuffer;

INCLUDE_ASM("asm/ui/save_menu/Func_801fe2c.s");

extern void Func_801ff58(void);
extern int StopTask(void *);
extern void _DeleteSprite(void *);
struct SaveMenu801ff14 {
    unsigned char pad0[0x114];
    void *spr[4];
};
extern struct SaveMenu801ff14 *iwram_3001f2c__k9 __asm__("iwram_3001f2c");
void Func_801ff14(void)
{
    struct SaveMenu801ff14 *s = iwram_3001f2c__k9;
    int i;

    StopTask(Func_801ff58);
    for (i = 0; i < 4; i++) {
        if (s->spr[i] != 0) {
            _DeleteSprite(s->spr[i]);
            s->spr[i] = 0;
        }
    }
}

struct SaveMenu801ff58 {
    unsigned char pad0[0x114];
    void *spr[4];
    unsigned char pad124[0x10];
    short x[8];
    short y[8];
    int scale[4];
};
void Func_801ff58(void)
{
    extern void _UpdateSprite(void *, int *, int *, int);
    extern struct SaveMenu801ff58 *iwram_3001f2c__k11 __asm__("iwram_3001f2c");
    struct SaveMenu801ff58 *s = iwram_3001f2c__k11;
    int sc[2];
    int v[4];
    int i;
    void *p;

    for (i = 0; i < 4; i++) {
        p = s->spr[i];
        if (p != 0) {
            sc[0] = s->scale[i];
            sc[1] = s->scale[i];
            v[0] = s->x[i] << 16;
            v[1] = 0x1f40000;
            v[2] = (s->y[i] << 16) + 0x1f40000;
            v[3] = 0;
            _UpdateSprite(p, v, sc, 0x4000);
        }
    }
}

INCLUDE_ASM("asm/ui/save_menu/Func_801ffd8.s");

extern void Func_80200cc(void);
struct SaveMenu8020088 {
    unsigned char pad0[0x224];
    void *spr[4];
};
extern struct SaveMenu8020088 *iwram_3001f2c__k10 __asm__("iwram_3001f2c");
void Func_8020088(void)
{
    struct SaveMenu8020088 *s = iwram_3001f2c__k10;
    int i;

    StopTask(Func_80200cc);
    for (i = 0; i < 4; i++) {
        if (s->spr[i] != 0) {
            _DeleteSprite(s->spr[i]);
            s->spr[i] = 0;
        }
    }
}

struct SaveMenu80200cc {
    unsigned char pad0[0x224];
    void *spr[4];
    short x[4];
    short y[4];
};
void Func_80200cc(void)
{
    extern void _UpdateSprite(void *, int *, int *, int);
    extern struct SaveMenu80200cc *iwram_3001f2c__k12 __asm__("iwram_3001f2c");
    struct SaveMenu80200cc *s = iwram_3001f2c__k12;
    int sc[2];
    int v[4];
    int i;
    void *p;

    for (i = 0; i < 4; i++) {
        p = s->spr[i];
        if (p != 0) {
            sc[0] = 0x10000;
            sc[1] = 0x10000;
            v[0] = s->x[i] << 16;
            v[1] = 0x1f40000;
            v[2] = (s->y[i] << 16) + 0x1f40000;
            v[3] = 0;
            _UpdateSprite(p, v, sc, 0x4000);
        }
    }
}

INCLUDE_ASM("asm/ui/save_menu/Func_8020150.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8020198.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8020244.s");

INCLUDE_ASM("asm/ui/save_menu/Menu_Save.s");

INCLUDE_ASM("asm/ui/save_menu/SystemMsgBox.s");

unsigned int Func_80209b0(unsigned int arg0) {
    unsigned int r5;

    r5 = AllocSpriteSlot();
    UploadSpriteGFX(r5, 0x80, Data_310a4);
    return r5;
}

int Func_80209cc(void) { return 1; }

INCLUDE_ASM("asm/ui/save_menu/Func_80209d0.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8020a60.s");

void Func_8020aec(int slot) {
    UploadSpriteGFX(slot, 0x80, (unsigned char *)&Data_310a4__a1);
}

void Func_8020b00(int arg0)
{
    UploadSpriteGFX(arg0, 0x80, Data_317e4);
}

INCLUDE_ASM("asm/ui/save_menu/Func_8020b14.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8020b64.s");

INCLUDE_ASM("asm/ui/save_menu/UI_NameEntry.s");

INCLUDE_ASM("asm/ui/save_menu/Func_802106c.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8021228.s");

extern int _GetFlag(int);
extern short L37206[] __asm__(".L37206");
extern short L37216[] __asm__(".L37216");

int Func_8021360(unsigned int arg0) {
    if (arg0 > 8)
        return 0;
    if (_GetFlag(0x20) == 0)
        return L37206[arg0];
    return L37216[arg0];
}

INCLUDE_ASM("asm/ui/save_menu/Func_8021390.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8021488.s");

void Func_80215e0(int param_1, unsigned int param_2)
{
    unsigned char *gfx;
    unsigned char *src;
    unsigned int size;

    gfx = galloc_ewram(0xe, 0x400);
    src = Data_31864[param_1];
    if ((int)param_2 < 0x60) {
        do {
            DecompressLZ1(src, gfx);
            size = 0x80;
            size <<= 2;
        } while (0);

        UploadSpriteGFX(param_2, size, gfx);
        gfree(0xe);
    }
}

struct Spr8021620 { char pad[0xf]; unsigned char f; char pad2[8]; unsigned short tile:10; unsigned short rest:6; };
unsigned int Func_8021620(int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    int slot;
    struct Spr8021620 *s1;
    struct Spr8021620 *s2;

    slot = AllocSpriteSlot();
    if (slot > 0x5f)
        return 0;
    Func_80215e0(a0, slot);
    s1 = (struct Spr8021620 *)Func_801eadc(slot, 0x80004000, a1, a2, a3);
    s1->f = 0xfd;
    s2 = (struct Spr8021620 *)Func_801eadc(slot, 0x80004000, a1, a2 + 0x20, a3);
    s2->f = 0xfd;
    s2->tile += 8;
    return (unsigned int)s1;
}

struct Spr80216b4 {
    struct Spr80216b4 *next;
    unsigned char pad4[4];
    unsigned char baseY;
    unsigned char pad9[0x14 - 9];
    unsigned char y;
};

extern unsigned int iwram_3001800;
extern const unsigned char L37226[] __asm__(".L37226");

void Func_80216b4(struct Spr80216b4 *p)
{
    unsigned int t;
    unsigned int y;

    t = iwram_3001800;
    y = p->baseY + L37226[t = (t >> 2) & 7];
    t = iwram_3001800;
    p->y = y;
    p = p->next;
    p->y = p->baseY + L37226[(t >> 2) & 7];
}

void StartMenu_AddOption(unsigned int icon, unsigned int name, unsigned int unk)
{
    extern void _Func_800f9cc(void *, int);
    int size = 0x400;
    unsigned char *gfx = galloc_ewram(0xe, size);
    unsigned short *f = GetFile(FILE_f1);

    if ((int)name < 0x60) {
        DecompressLZ1((unsigned char *)f + f[icon], gfx);
        if (unk)
            _Func_800f9cc(gfx, 0x300);
        UploadSpriteGFX(name, size, gfx);
        gfree(0xe);
    }
}

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

INCLUDE_ASM("asm/ui/save_menu/Func_80217a4.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8021848.s");

int Func_80218dc(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    Func_8019000(a0, (a3 * 2 + 0xf315) | 0x400, a1, a2, 0);
    Func_8019000(a0, a3 * 2 + 0xf314, a1 + 1, a2, 0);
    Func_8019000(a0, a3 * 2 + 0xf315, a1 + 2, a2, 0);
}

INCLUDE_ASM("asm/ui/save_menu/Func_8021950.s");

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
    r5 = GFX_PageNumberArrows;
    r6 = r6 + 1;
    Func_8021950(0x6000220, r5, (void *)arg0, -r6);
    r5 += 0x20;
    Func_8021950(0x6000240, r5, (void *)(arg0 + 0x20), r6);
}

INCLUDE_ASM("asm/ui/save_menu/Func_8021a18.s");

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

extern void LoadPortrait(int, int, int *, int *, int, int);
int Func_8021b80(unsigned int id, int a1)
{
    int out;
    if (id > 7)
        id = 0;
    if (_GetFlag(0x20)) {
        switch (id) {
        case 0:
            id = 0x38;
            break;
        case 1:
            id = 0x39;
            break;
        }
    }
    LoadPortrait(id, 0, &a1, &out, 0xe, 1);
    return out;
}

unsigned int Func_8021bc8(int idx) {
    if (idx != 0)
        idx = 0;
    return Data_73968[idx];
}


struct IconState8021be0 {
    unsigned char pad0[0x600];
    unsigned short w, h;
    void *src;
};

extern void *gPtrs[];
extern void Func_8015afc(void);
extern unsigned char Func_8015afc_Size[];

void DecompressIcon(struct IconState8021be0 *icon)
{
    void *buf;

    do {
        buf = galloc_iwram(0x31, (int)Func_8015afc_Size);
        DMA3_COPY(Func_8015afc, buf, (int)Func_8015afc_Size);
    } while (0);
    ((void (*)(void *, void *))gPtrs[0x31])(icon->src, icon);
    gfree(0x31);
}

extern void *CreateUIBox(int a, int b, int c, int d, int e);
extern void UIDrawText(char *text, void *box, int x, int y);
extern unsigned char L37300[] __asm__(".L37300");

void *Func_8021c34(void) {
    void *box;

    box = CreateUIBox(0, 0, 6, 4, 6);
    UIDrawText((char *)L37300, box, 0, 0);
    return box;
}

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

INCLUDE_ASM("asm/ui/save_menu/Func_8021cb8.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8021d88.s");

void Func_8021dfc(void) {
    do { u32 _value = (~3 & REG_BG1CNT) | 3; REG_BG1CNT = _value; } while (0);
}

void Func_8021e14(void) {
    SET_IO(REG_BG1CNT, (REG_BG1CNT & ~3));
}

void Func_8021e28(void) {
    SET_IO(REG_BG0VOFS, 0);
    SetIntrHandler((1 << INTR_ID_HBLANK), 0x88, Func_8021e14);
}

unsigned int Func_8021e48(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int r5;
    r5 = Func_8017658(arg0, arg1, arg2, 1);
    while (!Func_8017364()) {
        WaitFrames(1);
    }
    return r5;
}

INCLUDE_ASM("asm/ui/save_menu/MenuBar.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8022768.s");

INCLUDE_ASM("asm/ui/save_menu/Func_802281c.s");

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

INCLUDE_ASM("asm/ui/save_menu/Func_80228e4.s");

int Func_8022a38(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int slot;

    slot = AllocSpriteSlot();
    if (slot != 0x60) {
        Func_8021b30(arg3, slot);
        return Func_801eadc(slot, 0x80 << 23, arg0, arg1, arg2);
    }
}

INCLUDE_ASM("asm/ui/save_menu/Func_8022a7c.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8022b44.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8023178.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8023e70.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8024934.s");

extern unsigned char *_GetItemInfo(int);
extern unsigned char *_GetMoveInfo(int);
extern int _CanEquipItem(int, int);
int Func_8025180(int unit, int item)
{
    unsigned char *info;
    if (item == 0)
        return 1;
    info = _GetItemInfo(item);
    if (info[0xc] == 3)
        return 1;
    if (*(unsigned short *)(info + 0x28) == 0)
        return 1;
    if (info[2] != 0 && _CanEquipItem(unit, item) == 0)
        return 1;
    return (_GetMoveInfo(*(unsigned short *)(info + 0x28))[1] & 0x80) ? 0 : 2;
}


void Func_80251d4(unsigned int src, unsigned int dst)
{
    unsigned int mask = 0x3ff;
    unsigned int base = 0x6000000;

    src &= mask;
    dst = mask & dst;
    DMA3_COPY((void *)(base + src * 32), (void *)(base + dst * 32), 32);
}

INCLUDE_ASM("asm/ui/save_menu/Func_8025200.s");

INCLUDE_ASM("asm/ui/save_menu/Func_802592c.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8026080.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8026e80.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8026fa8.s");

extern int _Func_8079ef8(int);
int GetMoveDisplayEffect(unsigned char *m)
{
    int r = 0;
    int t;
    t = m[1] & 0xf;
    if (t == 1)
        r = 1;
    if (t == 0xb)
        r = 2;
    if (m[3] == 3)
        r = 3;
    if (m[3] == 4)
        r = 4;
    if (m[3] == 0x40)
        r = 6;
    if (_Func_8079ef8(m[3]))
        r = 5;
    return r;
}

extern void Func_802281c(void *arg0);
extern void _Func_80c10e8(void *arg0, unsigned int arg1);

static __inline__ void Func_8027114_outer(void)
{
    auto void Func_80270ac(void) __asm__("Func_80270ac");
    void Func_80270ac(void)
    {
        unsigned short local[2];
        local[0] = 0xff;
        Func_802281c(local);
        _Func_80c10e8(local, 1);
    }
}

INCLUDE_ASM("asm/ui/save_menu/Func_80270d8.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8027114.s");

INCLUDE_ASM("asm/ui/save_menu/Func_8028194.s");

extern void Func_8028194(void);
extern short StartTask(void *task, unsigned int priority);

void *Func_80284dc(void) {
    void *p = galloc_ewram(0x3a, 0x98);
    DMA3_CLEAR(p, 0x98);
    StartTask(Func_8028194, 0xc76);
    return p;
}

extern unsigned char *iwram_3001f38;
extern void Func_8028194(void);
extern void CloseUIBox(void *, int);
extern s32 Func_8003f3c(int);
void Func_802851c(void)
{
    unsigned char *b = iwram_3001f38;
    int i;
    StopTask(Func_8028194);
    if (*(void **)(b + 0x78) != 0)
        CloseUIBox(*(void **)(b + 0x78), 2);
    for (i = 0; i < *(short *)(b + 0x8e); i++)
        Func_8003f3c(*(unsigned short *)(b + 0x12 + i * 0x14));
    gfree(0x3a);
    WaitFrames(1);
}

INCLUDE_ASM("asm/ui/save_menu/Func_8028574.s");

INCLUDE_ASM("asm/ui/save_menu/Func_80286a0.s");

INCLUDE_ASM("asm/ui/save_menu/rodata_rom_1fe2c.s");
INCLUDE_ASM("asm/ui/save_menu/rodata_rom_20198_c_c_c_c_c.s");
INCLUDE_ASM("asm/ui/save_menu/rodata_rom_22a7c.s");
INCLUDE_ASM("asm/ui/save_menu/rodata_rom_23178_c_c.s");
