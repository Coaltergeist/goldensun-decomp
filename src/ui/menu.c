#include "nonmatching.h"
#include "dma.h"

extern void Func_801b228();
extern void Func_801a968();
extern void Func_801c3e8();

INCLUDE_ASM("asm/ui/menu/Func_801a66c.s");
extern unsigned int iwram_3001e98;
void Func_801a778(void)
{
    unsigned char *base = (unsigned char *)iwram_3001e98;

    *(unsigned int *)(base + 0x348) = 0;
    *(unsigned short *)(base + 0x39a) = 0;
    if (*(unsigned short *)(base + 0x39e) & 0x80) {
        *(unsigned short *)(base + 0x39c) = 0;
        *(unsigned short *)(base + 0x39e) = 0;
    }
    *(unsigned short *)(base + 0x3a0) = 0;
    *(unsigned short *)(base + 0x394) = 0;
}
void Func_801a7c0(int a, int b)
{
    unsigned char *base = (unsigned char *)iwram_3001e98;
    unsigned short *n = (unsigned short *)(base + 0x394);
    unsigned short c = *n;

    if (c != 0x10) {
        int i = c << 1;
        int o = 0x354;
        *(short *)(base + (o + i)) = a;
        o = 0x374;
        *(short *)(base + (o + i)) = b;
        *n += 1;
    }
}
INCLUDE_ASM("asm/ui/menu/Func_801a7f4.s");

void Func_801a90c(void) {}

INCLUDE_ASM("asm/ui/menu/Func_801a910.s");

extern int StartTask(void *task, int priority);
extern void Func_801a98c(void);

void Func_801a968(void) {
    StartTask(Func_801a98c, 200 << 4);
}

extern void StopTask(void *task);

void Func_801a97c(void) {
    StopTask(Func_801a98c);
}

INCLUDE_ASM("asm/ui/menu/Func_801a98c.s");

INCLUDE_ASM("asm/ui/menu/DisplayMenuArrowCursor.s");
INCLUDE_ASM("asm/ui/menu/Func_801b010.s");
struct MenuNode801b148 {
    unsigned int pad0;
    struct MenuNode801b148 *next;
    unsigned short pad8;
    unsigned short active;
    unsigned short id;
};
void Func_801b148(void)
{
    extern unsigned char *iwram_3001e98__b148 __asm__("iwram_3001e98");
    extern void Func_801a97c(void);
    extern void Func_801c21c(void);
    extern s32 Func_8003f3c(int);
    extern void CloseUIBox__b148(int, int) __asm__("CloseUIBox");
    extern void WaitFrames(unsigned int);
    unsigned char *s = iwram_3001e98__b148;
    struct MenuNode801b148 *n;

    Func_801a97c();
    CloseUIBox__b148(*(int *)(s + 0x350), 2);
    WaitFrames(1);
    for (n = *(struct MenuNode801b148 **)(s + 0x348); n != 0; n = n->next) {
        if (n->active) {
            Func_8003f3c(n->id);
            n->active = 0;
        }
    }
    for (n = *(struct MenuNode801b148 **)(s + 0x34c); n != 0; n = n->next) {
        if (n->active) {
            Func_8003f3c(n->id);
            n->active = 0;
        }
    }
    Func_801c21c();
    if (*(short *)(s + 0x12)) {
        Func_8003f3c(*(unsigned short *)(s + 0xc));
        if (*(short *)(s + 0x12))
            Func_8003f3c(*(unsigned short *)(s + 0x40));
    }
    Func_8003f3c(*(unsigned short *)(s + 0x2e4));
    gfree(0x12);
}

extern unsigned int iwram_3001e98;

void Func_801b1ec(unsigned int arg0, unsigned int arg1)
{
    unsigned char *base;
    unsigned char *p;
    base = (unsigned char *)iwram_3001e98;
    *(unsigned short *)(base + 0x396) = arg0;
    *(unsigned short *)(base + 0x398) = arg1;
    p = *(unsigned char **)(base + 0x348);
    while (p != (unsigned char *)0) {
        *(unsigned short *)(p + 0x10) = arg0;
        *(unsigned short *)(p + 0x18) = arg0;
        *(unsigned short *)(p + 0x12) = arg1;
        *(unsigned short *)(p + 0x1a) = arg1;
        p = *(unsigned char **)(p + 4);
        arg0 += 0x10;
    }
}

void DisplayMenuArrowCursor2(int param_1, int param_2);

void Func_801b228(void) {
    unsigned int r5;
    r5 = iwram_3001e98;
    DisplayMenuArrowCursor2(r5, 0);
    DisplayMenuArrowCursor2(r5, 1);
}

INCLUDE_ASM("asm/ui/menu/DisplayMenuArrowCursor2.s");
void *Func_801b36c(unsigned char *menu)
{
    unsigned int **node = *(unsigned int ***)(menu + 0x348);
    int i;

    for (i = 0; i != *(unsigned short *)(menu + 0x39e); i++)
        node = (unsigned int **)node[1];
    return node;
}
int Func_801b398(int a)
{
    extern unsigned char *iwram_3001e98__b398 __asm__("iwram_3001e98");
    extern volatile int gKeyPress, gKeyRepeat;
    extern void WaitFrames(unsigned int);
    extern void Func_801b9ec(void *, int);
    extern void Func_801b664(void *);
    extern void Func_801b810(void *);
    extern int Func_801be80(void *);
    unsigned char *base = iwram_3001e98__b398;

    Func_801b9ec(base, 0);
    for (;;) {
        WaitFrames(1);
        if (*(unsigned short *)(base + 0x3a0))
            continue;
        if (a != 999) {
            if (gKeyRepeat & 0x10)
                Func_801b664(base);
            else if (gKeyRepeat & 0x20)
                Func_801b810(base);
            else if (gKeyPress & 1)
                return Func_801be80(base);
        }
        if (a && (gKeyPress & 2))
            return -1;
    }
}
INCLUDE_ASM("asm/ui/menu/Func_801b424.s");
INCLUDE_ASM("asm/ui/menu/Func_801b4ec.s");
INCLUDE_ASM("asm/ui/menu/Func_801b5c0.s");
INCLUDE_ASM("asm/ui/menu/Func_801b664.s");
INCLUDE_ASM("asm/ui/menu/Func_801b810.s");
INCLUDE_ASM("asm/ui/menu/Func_801b9a8.s");
INCLUDE_ASM("asm/ui/menu/Func_801b9ec.s");

extern void _Func_80c10e8(unsigned short *buf, int arg);

void Func_801ba34(unsigned int base) {
    unsigned short list[6];
    unsigned int *p;
    int count;

    p = *(unsigned int **)(base + 0x348);
    count = 0;
    while (p != (unsigned int *)0) {
        p = *(unsigned int **)((char *)p + 4);
        count++;
    }
    list[count] = 0xff;
    _Func_80c10e8(list, 0);
}

INCLUDE_ASM("asm/ui/menu/Func_801ba68.s");
int UploadIcon(int type, int id)
{
    extern void LoadOldUIIcon(int, int, int *, int *, int);
    extern int AllocSpriteSlot(void);
    extern int LoadInventoryIcon(int, int, int);
    extern int LoadUIBanner(int, int, int);
    extern void LoadMoveIcon(int, int, int *, int *, int);
    int tmp;
    int slot = -1;

    switch (type) {
    case 1:
    case 6:
        LoadOldUIIcon(id, 0, &slot, &tmp, 0);
        break;
    case 2:
        slot = AllocSpriteSlot();
        if (slot == 0x60)
            return -1;
        LoadInventoryIcon(id, 0x1a, slot);
        break;
    case 9:
        slot = AllocSpriteSlot();
        if (slot == 0x60)
            return -1;
        LoadUIBanner(id, 0, slot);
        break;
    case 4:
        LoadMoveIcon(id, 1, &slot, &tmp, 0);
        break;
    }
    return slot;
}
int Func_801bcd4(int type, int id, int slot, int arg3)
{
    extern void LoadOldUIIcon(int, int, int *, int *, int);
    extern int AllocSpriteSlot(void);
    extern int LoadInventoryIcon(int, int, int);
    extern int LoadUIBanner(int, int, int);
    extern void LoadMoveIcon(int, int, int *, int *, int);
    extern int LoadStatusIcon(int, int, int);
    int tmp;
    int orig = slot;

    if (slot == -1) {
        slot = AllocSpriteSlot();
        if (slot == 0x60)
            return orig;
    }
    switch (type) {
    case 1:
    case 6:
        LoadOldUIIcon(id, arg3, &slot, &tmp, 1);
        break;
    case 2:
        LoadInventoryIcon(id, 0x3a, slot);
        break;
    case 7:
        LoadInventoryIcon(id, 0x2a, slot);
        break;
    case 4:
        LoadMoveIcon(id, arg3, &slot, &tmp, 1);
        break;
    case 8:
        LoadStatusIcon(id, 0, slot);
        break;
    case 9:
        LoadUIBanner(id, 0, slot);
        break;
    }
    return slot;
}
INCLUDE_ASM("asm/ui/menu/Func_801bd98.s");
INCLUDE_ASM("asm/ui/menu/Func_801be80.s");

void stub_0801C0C4(void) {}

void Func_801c0c8(void) {}
void Func_801c0cc(void) {}
void Func_801c0d0(void) {}
void Func_801c0d4(void) {}
void Func_801c0d8(void) {}

INCLUDE_ASM("asm/ui/menu/Func_801c0dc.s");

extern void Func_8003dec(unsigned int *arg0, int index);
struct MenuField {
    char pad0[4];
    unsigned char field4;
    unsigned char pad5;
    unsigned short id : 9;
    unsigned short flags : 7;
};

void Func_801c154(struct MenuField *arg0, unsigned int arg1, unsigned char arg2) {
    arg0->id = arg1;
    arg0->field4 = arg2;
    Func_8003dec((unsigned int *)arg0, 0xfc);
}

extern void Func_8003f3c();

void Func_801c17c(void) {
    Func_8003f3c();
}

struct MenuGfx801c188 {
    unsigned char pad0[8];
    unsigned short id;
    unsigned short state;
    unsigned short slot;
    unsigned short gfx;
    unsigned char pad10[0x12];
    unsigned short w;
    unsigned short h;
    unsigned short x;
};

void Func_801c188(void)
{
    extern void *galloc_iwram(int, int);
    extern u32 DecompressLZ1(void *, void *);
    extern int AllocSpriteSlot(void);
    extern int UploadSpriteGFX(int, int, void *);
    extern void gfree(int);
    extern int _FILE_f1;
    extern void *GetFile(int);
    extern unsigned char *iwram_3001e98__c188 __asm__("iwram_3001e98");
    unsigned char *base = iwram_3001e98__c188;
    unsigned short *m = Func_801b36c(base);
    struct MenuGfx801c188 *p;
    unsigned char *buf;
    unsigned char *f;
    int id;

    if (m[5] == 1 || m[5] == 6) {
        buf = galloc_iwram(0x11, 0x608);
        p = (struct MenuGfx801c188 *)(base + 0x30c);
        id = m[4];
        f = GetFile((int)&_FILE_f1);
        *(unsigned char **)(buf + 0x604) = f + ((unsigned short *)f)[m[4]];
        DecompressLZ1(*(unsigned char **)(buf + 0x604), buf);
        if (p->state == 0)
            p->slot = AllocSpriteSlot();
        p->gfx = UploadSpriteGFX(p->slot, 0x400, buf);
        p->state = 1;
        p->id = id;
        p->w = 0x28;
        p->h = 0x28;
        p->x = 0xf0;
        gfree(0x11);
    }
}

extern unsigned char *iwram_3001e98__a3 __asm__("iwram_3001e98");
void Func_801c21c(void) {
    unsigned char *base;
    unsigned char *p;

    base = iwram_3001e98__a3;
    p = base + (0xc3 << 2);
    if (*(unsigned short *)(p + 0xa) != 0) {
        int zero;
        Func_8003f3c(*(unsigned short *)(p + 0xc));
        zero = 0;
        *(unsigned short *)(p + 0xa) = zero;
    }
}

INCLUDE_ASM("asm/ui/menu/Func_801c244.s");

extern void Func_801ef08(int);
extern void WaitFrames(unsigned int);

void Func_801c2d0(void) {
    Func_801ef08(1);
    WaitFrames(1);
}

extern void Func_801f5d4(void);

void Func_801c2e4(void) {
    Func_801f5d4();
}

extern void Func_801a66c(void);
extern void Func_801a778(void);

void Func_801c2f0(void)
{
	Func_801a66c();
	Func_801a778();
	WaitFrames(1);
}

extern unsigned char *iwram_3001e98__a2 __asm__("iwram_3001e98");
extern void Func_801a7f4(void);
extern void Func_801b010(int a, int b);
extern int Func_801b424(int a);
extern void Func_801b148(void);

int Func_801c304(unsigned short param_1)
{
    unsigned char *base;
    unsigned char *addr1;
    unsigned short v;
    int result;

    base = iwram_3001e98__a2;
    addr1 = base + 0x39e;
    *(unsigned short *)addr1 = param_1;
    base += 0xee << 2;
    v = 1;
    *(unsigned short *)base = v;
    Func_801a7f4();
    Func_801b228();
    Func_801b010(0, 5);
    Func_801a968();
    result = Func_801b424(1);
    Func_801b148();
    return result;
}

extern short gState_s801c[] __asm__("gState");
extern int _GetLocationName(int, int);
extern int TextBox(int, int *, int *, int *, int *);
extern void *CreateUIBox(int a, int b, int c, int d, int e);
extern void DrawSmallText(int, void *, int, int);
struct V801c34c { char pad[0x234]; unsigned short timer; };
void Func_801c34c(void)
{
    extern unsigned char *iwram_3001ebc__c34 __asm__("iwram_3001ebc");
    unsigned char *base = iwram_3001ebc__c34;
    int h, w, y, x;
    int msg;
    void *box;

    x = 8;
    y = 8;
    msg = _GetLocationName(gState_s801c[0xe0], gState_s801c[0xe1]) + 0x99b;
    TextBox(msg, &x, &y, &w, &h);
    x = (0x1e - w) >> 1;
    y = (0xa - h) >> 1;
    box = CreateUIBox(x, y, w, h, 2);
    *(void **)(base + (0x8c << 2)) = box;
    DrawSmallText(msg, box, 0, 0);
    ((struct V801c34c *)base)->timer = 0x5a;
    StartTask(Func_801c3e8, 0xc80);
}

extern unsigned int iwram_3001ebc;
extern void CloseUIBox(void *box, int noanim);

void Func_801c3e8(void) {
    unsigned int base;
    unsigned short *counter;

    base = *(unsigned int *)&iwram_3001ebc;
    counter = (unsigned short *)(base + (0x8d << 2));
    *counter = *counter - 1;
    if (*counter == 0) {
        CloseUIBox((void *)*(unsigned int *)(base + (0x8c << 2)), 2);
        StopTask((void *)Func_801c3e8);
    }
}

extern unsigned int *iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void Func_801c428(void) {
    unsigned int *box;

    box = (unsigned int *)*(unsigned int *)((char *)*(unsigned int *)&iwram_3001ebc__a1 + (0x8c << 2));
    if (box != 0) {
        if (*(unsigned short *)((char *)box + 0x16) != 0) {
            CloseUIBox(box, 2);
            StopTask((void *)Func_801c3e8);
        }
    }
}

extern unsigned int _Func_80789dc(unsigned int);

unsigned int Func_801c458(unsigned int arg0, unsigned int arg1) {
    _Func_80789dc(arg1);
    return 0;
}

int Func_801c468(void) { return 1; }

extern unsigned char gState[];
void Func_801c46c(int keys)
{
    unsigned char v = gState[0x205];

    if (keys & 0x20)
        v--;
    else
        v++;
    gState[0x205] = v;
}
INCLUDE_ASM("asm/ui/menu/Func_801c49c.s");
INCLUDE_ASM("asm/ui/menu/Func_801c7fc.s");
INCLUDE_ASM("asm/ui/menu/Func_801c8a0.s");

extern void Func_801c49c(void);

void Func_801c924(void) {
    Func_801c49c();
}

extern unsigned char *galloc_ewram(int index, unsigned int size);

void Func_801c930(void)
{
    unsigned char *p;
    unsigned short z;

    p = galloc_ewram(0x13, 0x1004);
    z = 0;
    *(unsigned short *)(p + 0x46) = z;
    *(unsigned short *)(p + 0x352) = z;
}

int Func_8017394(int a);
void gfree(int index);
extern unsigned char *iwram_3001e9c;

void Func_801c954(void)
{
    unsigned char *base;

    base = iwram_3001e9c;
    CloseUIBox(*(void **)(base + 0xff4), 0);
    while (Func_8017394(*(int *)(base + 0xff4)) == 0) {
        WaitFrames(1);
    }
    if (*(unsigned short *)(base + 0x46) != 0) {
        Func_8003f3c(*(unsigned short *)(base + 0x48));
    }
    if (*(unsigned short *)(base + 0x352) != 0) {
        Func_8003f3c(*(unsigned short *)(base + 0x354));
    }
    gfree(0x13);
}

void Func_801c9bc(void) {}
void Func_801c9c0(void) {}
void Func_801c9c4(void) {}

INCLUDE_ASM("asm/ui/menu/Func_801c9c8.s");

INCLUDE_ASM("asm/ui/menu/Func_801ca1c.s");
void Func_801cae0(int t)
{
    extern unsigned short Func_801cbd4(int, int, int, int);
    
    *(unsigned short *)0x50001e8 = Func_801cbd4(t, 0xeeee, 0xcccc, 0x11110);
    *(unsigned short *)0x50001ea = Func_801cbd4(t, 0xd555, 0xbbbb, 0xeeee);
    *(unsigned short *)0x50001ec = Func_801cbd4(t, 0xbbbb, 0xaaaa, 0xcccc);
    *(unsigned short *)0x50001ee = Func_801cbd4(t, 0xa221, 0x9999, 0xaaaa);
    *(unsigned short *)0x50001f0 = Func_801cbd4(t, 0x10888, 0xdddd, 0x13333);
    *(unsigned short *)0x50001f2 = Func_801cbd4(t, 0x12221, 0xeeee, 0x15555);
    *(unsigned short *)0x50001f4 = Func_801cbd4(t, 0x13bbb, 0x10000, 0x17777);
}
INCLUDE_ASM("asm/ui/menu/Func_801cbd4.s");
INCLUDE_ASM("asm/ui/menu/Func_801cc50.s");
INCLUDE_ASM("asm/ui/menu/SetUIColor.s");

void Func_801ce48(unsigned char *p) {
    unsigned short *c = (unsigned short *)(p + 0x574);

    if (*c == 0) {
        int x = 2;
        *c = x;
    } else {
        *c = *c - 1;
    }
}

void Func_801ce6c(unsigned char *p)
{
    unsigned short *c = (unsigned short *)(p + 0x574);
    unsigned int v = *c + 1;

    *c = v;
    if ((v << 16) > (0x80 << 10)) {
        unsigned short z = 0;
        *c = z;
    }
}

extern unsigned char gState[];
void Func_801ce90(unsigned char *p)
{
    switch (*(unsigned short *)(p + 0x574)) {
    case 0:
        if (gState[0x20c] != 0) gState[0x20c]--;
        break;
    case 1:
        if (gState[0x205] != 0) gState[0x205]--;
        break;
    case 2:
        if (gState[0x206] != 0) gState[0x206]--;
        break;
    }
}
extern unsigned char gState[];
void Func_801cee0(unsigned char *p)
{
    switch (*(unsigned short *)(p + 0x574)) {
    case 0:
        if (gState[0x20c] <= 1) gState[0x20c]++;
        break;
    case 1:
        if (gState[0x205] <= 0x17) gState[0x205]++;
        break;
    case 2:
        if (gState[0x206] <= 0xe) gState[0x206]++;
        break;
    }
}

void Func_801cf44(void) {}

INCLUDE_ASM("asm/ui/menu/Func_801cf48.s");
INCLUDE_ASM("asm/ui/menu/Func_801d014.s");

extern void Func_801cf48(void);

void Func_801d0f0(void) {
    StopTask(Func_801cf48);
    gfree(0x14);
}

INCLUDE_ASM("asm/ui/menu/Func_801d108.s");
INCLUDE_ASM("asm/ui/menu/Menu_Settings.s");

extern void _Func_80b08b8(void *arg0);
extern void Func_80217a4(void *arg0);
extern unsigned char *iwram_3001ea0;

void Func_801d94c(void) {
    unsigned char *r5 = iwram_3001ea0;
    unsigned int idx;
    unsigned int off;
    void *item;

    _Func_80b08b8(r5 + 0x5a4);
    idx = *(unsigned short *)(r5 + 0x574);
    off = (idx << 2) + 0x610;
    item = *(void **)(r5 + off);
    Func_80217a4(item);
}

void Func_801d980(void) {
    void *p;

    p = galloc_ewram(0x14, 0xc5 << 3);
    DMA3_CLEAR(p, 0xc5 << 3);
    StartTask(Func_801d94c, 0xc8 << 4);
}

void Func_801d9bc(void) {
    StopTask(Func_801d94c);
    gfree(0x14);
}

INCLUDE_ASM("asm/ui/menu/Func_801d9d4.s");
INCLUDE_ASM("asm/ui/menu/StartMenu_Main.s");
INCLUDE_ASM("asm/ui/menu/Func_801dd28.s");
