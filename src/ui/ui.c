#include "nonmatching.h"
#include "dma.h"
extern void FillUIRegion(int a, int b, int c, int d);

extern unsigned char iwram_3001e8c__a5[] __asm__("iwram_3001e8c");
struct UISlot {
    unsigned int obj;
    unsigned short f4;
    unsigned short f6;
    unsigned char pad8[0xa];
    unsigned short f12;
    unsigned short f14;
    unsigned short f16;
    unsigned short f18;
    unsigned short f1a;
    unsigned char pad1c[0xc];
};
struct UIBox {
    unsigned int f0;
    unsigned int f4;
    unsigned short w;
    unsigned short h;
    unsigned short x;
    unsigned short y;
    unsigned short f10;
    unsigned short f12;
    unsigned short f14;
    unsigned short flags;
    unsigned short f18;
    unsigned short f1a;
    unsigned short ox;
    unsigned short oy;
    unsigned short ow;
    unsigned short oh;
};

extern void Func_8016498(unsigned char *p);
extern void Func_80164ac();
extern void Func_8016594(unsigned char *arg0);
extern void Func_8015ec0();
extern void Func_801789c();
extern unsigned int Func_8017364();

INCLUDE_ASM("asm/ui/ui/ClearUIRegion.s");
extern void Func_8017248(int a, int b, int c, int d, int e);
extern void *Func_80008d8(void *dst, unsigned int size, unsigned int value);
static inline void Fill_80008d8(void *dst, unsigned int size, unsigned int value)
{
    void *(*fill)(void *, unsigned int, unsigned int) = Func_80008d8;
    fill(dst, size, value);
}
void Func_8016230(struct UIBox *box)
{
    unsigned char *b = *(unsigned char **)iwram_3001e8c__a5;
    int x, y, w, h;

    h = box->h;
    box->f1a = 0;
    x = box->x;
    y = box->y;
    w = box->w;
    if (box->flags & 8) {
        if (box->flags & 0x20) {
            FillUIRegion(x, y, w, h);
            Fill_80008d8((void *)0x6002500, 0xf00, 0x44444444);
        } else {
            Fill_80008d8((void *)0x6002500, 0xf00, 0);
        }
        Func_8017248(x, y, w, h, 0);
    } else {
        FillUIRegion(x, y, w, h);
    }
    b[0xea3] = 1;
}
INCLUDE_ASM("asm/ui/ui/CreateUIBox.s");

extern void WaitFrames(unsigned int nframes);

void UIBox_WaitAnim(unsigned char *box)
{
    if ((*(unsigned short *)(box + 0x16) & 2) == 0) {
        while (*(short *)(box + 0x1a) != 0) {
            WaitFrames(1);
        }
    }
}

void CloseUIBox(void *arg0, int clear) {
    struct UIBox *box;
    unsigned int zero;

    box = (struct UIBox *)arg0;
    if (box == 0) {
        return;
    }
    Func_8016478(box);
    box->ox = box->x;
    box->oy = box->y;
    box->ow = box->w;
    zero = 0;
    box->flags = zero;
    box->oh = box->h;
    if (clear != 0) {
        ClearUIRegion(box->x, box->y, box->w, box->h);
        box->f0 = zero;
        box->f4 = zero;
        box->w = zero;
        box->h = zero;
        box->x = zero;
        box->y = zero;
        box->f10 = zero;
        box->f12 = zero;
        box->f14 = zero;
        box->flags = zero;
        box->f18 = zero;
        box->f1a = zero;
        box->ox = zero;
        box->oy = zero;
        box->ow = zero;
        box->oh = zero;
    } else {
        box->f18 = clear;
        box->f1a = 4;
    }
}


void Func_8016478(void *arg0) {
    unsigned char *r5;
    unsigned short r2;
    int r3;
    r5 = (unsigned char *)arg0;
    r2 = *(unsigned short *)(r5 + 0x16);
    r3 = 8;
    r3 &= r2;
    if (r3 == 0) {
        Func_8016498(r5);
        Func_80164ac(r5);
    }
}


void Func_8016498(unsigned char *p)
{
    FillUIRegion(*(unsigned short *)(p + 0xc), *(unsigned short *)(p + 0xe),
                 *(unsigned short *)(p + 8), *(unsigned short *)(p + 0xa));
}


void Func_80164ac(unsigned int *arg0)
{
    unsigned int *r3;
    unsigned int *r5;
    unsigned int *r0;
    r3 = arg0;
    r5 = (unsigned int *)0;
    if (r3 == (unsigned int *)0)
        return;
    r0 = (unsigned int *)*r3;
    r3[1] = (unsigned int)r3;
    r3[0] = (unsigned int)r5;
    if (r0 == (unsigned int *)0)
        return;
    do {
        r5 = (unsigned int *)*r0;
        Func_8016594(r0);
        r0 = r5;
    } while (r0 != (unsigned int *)0);
}

INCLUDE_ASM("asm/ui/ui/Func_80164d4.s");

void Func_801656c(int *arg0) {
    int *r2;
    int *r3;
    r2 = arg0;
    r3 = (int *)*arg0;
    while (r3 != (int *)0) {
        r2 = r3;
        r3 = (int *)*r2;
    }
    arg0[1] = (int)r2;
}

void Func_8016584(unsigned int arg0, unsigned int arg1)
{
    if (arg0 != 0) {
        *(unsigned int *)(*(unsigned int *)(arg0 + 4)) = arg1;
        *(unsigned int *)(arg0 + 4) = arg1;
    }
}

extern int iwram_3001e8c__a1 __asm__("iwram_3001e8c");
extern void Func_8003f3c(unsigned int arg0);

void Func_8016594(unsigned char *arg0) {
    Func_8015ec0((unsigned int)arg0);
    if (arg0[4] != 0) {
        Func_8003f3c(arg0[0xe]);
        if (arg0[4] == 2) {
            unsigned char *base = *(unsigned char **)&iwram_3001e8c__a1;
            unsigned int idx = ((arg0[0x19] >> 4) << 1) + 0x12d0;
            *(unsigned short *)(base + idx) = 0x3e7;
        }
    }
    arg0[5] = 0;
}

INCLUDE_ASM("asm/ui/ui/Func_80165d8.s");
INCLUDE_ASM("asm/ui/ui/Func_8016670.s");
extern void *Func_80008d8(void *dst, unsigned int size, unsigned int value);

void *Func_801671c(void)
{
    void *(*fill)(void *, unsigned int, unsigned int) = Func_80008d8;

    return fill((void *)0x6002500, 0xf00, 0);
}
extern void *Func_80008d8(void *dst, unsigned int size, unsigned int value);

void *Func_8016738(void)
{
    void *(*fill)(void *, unsigned int, unsigned int) = Func_80008d8;

    return fill((void *)0x6002500, 0xf00, 0x44444444);
}

void Func_8016758(void) {
    struct UISlot *p;
    struct UISlot *slot;
    int i;

    p = (struct UISlot *)(*(unsigned char **)iwram_3001e8c__a5 + (0xc4 << 3));
    slot = 0;
    for (i = 0; i != 3; i++) {
        unsigned char *obj = (unsigned char *)p->obj;
        if (obj == 0 || *(unsigned short *)(obj + 0x14) != 0) {
            slot = p;
            break;
        }
        p++;
    }
    if (slot != 0) {
        if (slot->obj != 0) {
            Func_801671c();
            slot->f6 = 0;
        }
        slot->f4 = 0;
        slot->f14 = 0;
        slot->f16 = 0xf;
        slot->f18 = 0;
        slot->f1a = 0xa;
    }
}

struct UiState80167ac {
    unsigned char pad0[0xea8];
    unsigned short ea8, eaa, eac, eae;
};
extern struct UiState80167ac *iwram_3001e8c__k4 __asm__("iwram_3001e8c");
void Func_80167ac(unsigned char *a)
{
    struct UiState80167ac *s = iwram_3001e8c__k4;

    s->eae = *(unsigned short *)(a + 0x16);
    s->eac = *(unsigned short *)(a + 0x18);
    s->ea8 = *(unsigned short *)(a + 0x1a);
}

void Func_80167d8(unsigned int r0) {
    unsigned short r3;
    r3 = 2;
    *(unsigned short *)(r0 + 0x1c) = r3;
}

INCLUDE_ASM("asm/ui/ui/Func_80167e0.s");
struct MsgObj8016868 {
    unsigned char pad0[0x12];
    unsigned short f12;
    unsigned short f14;
    unsigned short f16;
    int f18;
};
extern int AdvanceMsgText(struct UISlot *);
extern void Func_8019854(struct UISlot *);
void Func_8016868(void)
{
    struct UISlot *p = (struct UISlot *)(*(unsigned char **)iwram_3001e8c__a5 + (0xc4 << 3));
    struct MsgObj8016868 *obj;
    int i;
    int r;

    for (i = 0; i != 3; i++, p++) {
        obj = (struct MsgObj8016868 *)p->obj;
        if (obj == 0 || obj->f18 != 0)
            continue;
        if (obj->f16 == 0) {
            p->obj = 0;
        } else if (obj->f12 != 0) {
            Func_8019854(p);
        } else {
            switch (AdvanceMsgText(p)) {
            case 8:
                ((struct MsgObj8016868 *)p->obj)->f14 = 1;
                break;
            case 9:
                CloseUIBox((void *)p->obj, ((struct MsgObj8016868 *)p->obj)->f16 & 2);
                p->f4 = 0;
                p->f6 = 0;
                p->f12 = 0;
                p->f14 = 0;
                p->f16 = 0;
                p->f18 = 0;
                p->f1a = 0;
                ((struct MsgObj8016868 *)p->obj)->f14 = 1;
                break;
            }
        }
    }
}
INCLUDE_ASM("asm/ui/ui/AdvanceMsgText.s");
INCLUDE_ASM("asm/ui/ui/Func_8016f2c.s");
INCLUDE_ASM("asm/ui/ui/Func_8017004.s");
/* Fill count halfwords at dst with the low half of value via DMA3; returns
 * the advanced destination. */
unsigned short *Func_80170c4(unsigned short *dst, unsigned int value, int count)
{
    unsigned short buf;

    if (count > 0) {
        buf = value;
        DMA3_SET(&buf, dst, 0x81000000 | count);
        dst += count;
    }
    return dst;
}
INCLUDE_ASM("asm/ui/ui/FillUIRegion.s");
INCLUDE_ASM("asm/ui/ui/Func_8017248.s");

extern unsigned char iwram_3001e8c__a2[] __asm__("iwram_3001e8c");

unsigned int Func_8017364(void)
{
    char *p;
    void *obj;
    int i;

    p = (char *)(*(unsigned int *)iwram_3001e8c__a2) + 0x620;
    i = 0;
    do {
        obj = *(void **)p;
        if (obj != 0) {
            if (*(unsigned short *)((char *)obj + 0x14) == 0) {
                return 0;
            }
        }
        i++;
        p += 0x28;
    } while (i != 3);
    return 1;
}

unsigned int Func_8017394(unsigned char *box)
{
    if (*(unsigned short *)(box + 0x16) == 0)
        if (*(short *)(box + 0x1a) == 0)
            return 1;
    return 0;
}

struct UiState80173ac {
    unsigned char pad0[0xea8];
    unsigned short ea8, eaa, eac, eae;
    unsigned char pad1[0x12b0 - 0xeb0];
    unsigned short f12b0;
};
extern struct UiState80173ac *iwram_3001e8c__k1 __asm__("iwram_3001e8c");
void Func_80173ac(void)
{
    struct UiState80173ac *s = iwram_3001e8c__k1;

    s->eae = 15;
    s->ea8 = 10;
    s->f12b0 = 9;
    s->eac = 0;
    s->eaa = 1;
}
struct UiState80173f4 {
    unsigned char pad0[0xea8];
    unsigned short ea8, eaa, eac, eae;
    unsigned char pad1[0x12b0 - 0xeb0];
    unsigned short f12b0, f12b2;
    unsigned char pad2[4];
    unsigned short f12b8;
};
extern struct UiState80173f4 *iwram_3001e8c__k5 __asm__("iwram_3001e8c");
extern int UploadSpriteGFX(int slot, unsigned int size, unsigned char *gfx);
extern void StartTask(void *task, int priority);
void Func_80173f4(void)
{
    struct UiState80173f4 *s = iwram_3001e8c__k5;
    int prio;

    s->f12b8 = UploadSpriteGFX(0x5f, 0x2000, 0);
    s->f12b0 = 9;
    s->ea8 = 0xa;
    s->eac = 0;
    s->eae = 0xf;
    s->f12b2 = 0;
    prio = 0xc80;
    StartTask(Func_801789c, prio);
}

extern void *iwram_3001e8c__a3 __asm__("iwram_3001e8c");

void Func_8017464(int param_1)
{
    unsigned char *r5;
    unsigned short gfxRes;
    unsigned short *pA;
    unsigned short vA;
    unsigned short *pB;
    unsigned short vB;
    unsigned short *pC;
    unsigned short vC;
    unsigned short *pD;
    unsigned short vD;
    unsigned short *pE;
    int prio;

    r5 = (unsigned char *)iwram_3001e8c__a3;
    if (param_1 != 0) {
        gfxRes = (unsigned short)UploadSpriteGFX(0x5f, 0x80 << 6, 0);
        *(unsigned short *)(r5 + 0x12b8) = gfxRes;
    }
    pA = (unsigned short *)(r5 + 0x12b0);
    vA = 9;
    *pA = vA;
    pB = (unsigned short *)(r5 + 0xea8);
    vB = 10;
    *pB = vB;
    pC = (unsigned short *)(r5 + 0xeac);
    vC = 0;
    *pC = vC;
    pD = (unsigned short *)(r5 + 0xeae);
    vD = 15;
    *pD = vD;
    pE = (unsigned short *)(r5 + 0x12b2);
    *pE = vC;
    prio = 0xc8 << 4;
    StartTask(Func_801789c, prio);
}

extern unsigned char iwram_3001ee4[];
extern void CloseUIBox(void *, int);

void Func_80174d8(void) {
    unsigned int **r5;
    r5 = *(unsigned int ***)iwram_3001ee4;
    if (r5[0]) {
        CloseUIBox(r5[0], 1);
        r5[0] = 0;
    }
}

INCLUDE_ASM("asm/ui/ui/PrintBattleText.s");

extern void PrintBattleText(void);

void Func_80175a0(void) {
    PrintBattleText();
    while (!Func_8017364()) {
        WaitFrames(1);
    }
    WaitFrames(1);
}

INCLUDE_ASM("asm/ui/ui/Func_80175c0.s");

extern unsigned char *iwram_3001e8c__a4 __asm__("iwram_3001e8c");

void Func_8017620(unsigned int arg0)
{
    unsigned char *p = iwram_3001e8c__a4;
    if (p != (unsigned char *)0) {
        if (arg0 & 1)
            *(unsigned char *)(p + 0x12fa) = 1;
        if (arg0 & 2)
            *(unsigned char *)(p + 0x12fb) = 1;
    }
}

INCLUDE_ASM("asm/ui/ui/Func_8017658.s");
INCLUDE_ASM("asm/ui/ui/Func_801776c.s");

extern void Func_8016f2c(void);
extern void Func_8016868(void);
extern void Func_80191cc(void);

void Func_801789c(void) {
    Func_8016f2c();
    Func_8016868();
    Func_80191cc();
}
INCLUDE_ASM("asm/ui/ui/DrawMsgGlyph.s");
extern unsigned char Data_32224[];
int Func_8017a64(unsigned short *s)
{
    int w = 0;
    unsigned int c = *s++;
    while (c != 0) {
        if (c == 0x20)
            w += 4;
        else if (c <= 0xff) {
            if (c - 0xde > 1)
                w += *(unsigned short *)(Data_32224 + (c - 0x20) * 32);
        } else
            w += 10;
        c = *s++;
    }
    return w;
}
INCLUDE_ASM("asm/ui/ui/Func_8017aa4.s");
INCLUDE_ASM("asm/ui/ui/Func_8017c1c.s");
INCLUDE_ASM("asm/ui/ui/Func_8017c8c.s");
INCLUDE_ASM("asm/ui/ui/PrintNum.s");

INCLUDE_ASM("asm/ui/ui/Func_8017e88.s");
INCLUDE_ASM("asm/ui/ui/BufferString.s");
INCLUDE_ASM("asm/ui/ui/Func_801868c.s");

extern int BufferString(unsigned int, int);
extern void Func_8018850(int, unsigned int, unsigned int, int);

void Func_8018790(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int r5 = arg1;
    unsigned int r6 = arg2;
    Func_8018850(BufferString(arg0, 0), r5, r6, 0);
}

struct UiMsgFlags {
    unsigned char pad0[0xeb0];
    unsigned short seen[1];
};
extern struct UiMsgFlags *iwram_3001e8c__k3 __asm__("iwram_3001e8c");
int TextBox(int msg, int a1, int a2, int a3, int a4)
{
    extern void Func_801868c(int, int, int, int, int, int, int);
    struct UiMsgFlags *s = iwram_3001e8c__k3;
    int i = BufferString(msg, 0);

    if (s->seen[i] == 0)
        return 0;
    Func_801868c(i, a1, a2, a3, a4, 0, 0);
    return 1;
}
int DialogueBox(int msg, int a1, int a2, int a3, int a4)
{
    extern void Func_801868c(int, int, int, int, int, int, int);
    struct UiMsgFlags *s = iwram_3001e8c__k3;
    int i = BufferString(msg, 0);

    if (s->seen[i] == 0)
        return 0;
    Func_801868c(i, a1, a2, a3, a4, 0, 1);
    return 1;
}
INCLUDE_ASM("asm/ui/ui/Func_8018850.s");
INCLUDE_ASM("asm/ui/ui/Func_8018a50.s");

INCLUDE_ASM("asm/ui/ui/DrawText.s");
INCLUDE_ASM("asm/ui/ui/Func_8018efc.s");
void Func_8019000(unsigned short *box, unsigned int tile, unsigned int x, unsigned int y, unsigned int mode)
{
    extern unsigned short *iwram_3001e8c__9000 __asm__("iwram_3001e8c");
    unsigned char *map = (unsigned char *)iwram_3001e8c__9000;
    unsigned int pal;
    unsigned int idx;

    y++;
    x++;
    if (y > box[5] - 1u)
        return;
    if (x > box[4] - 1u)
        return;
    switch (mode) {
    case 3: pal = 0xf000; break;
    case 2: pal = 0xe000; break;
    case 4: pal = 0x1000; break;
    default: pal = 0; break;
    }
    switch (mode) {
    case 1:
        break;
    case 2:
    case 3:
    case 4:
        idx = (box[7] + y) * 32 + (box[6] + x);
        if (idx < 0x280)
            *(unsigned short *)(map + (idx << 1)) = tile | pal;
        break;
    default:
        idx = (box[7] + y) * 32 + (box[6] + x);
        if (idx < 0x280)
            *(unsigned short *)(map + (idx << 1)) = tile;
        break;
    }
}
struct ObjAffineSrc801908c {
    short xScale : 16;
    short yScale : 16;
    unsigned short angle : 16;
};

struct OamShadow801908c {
    void *oamDest;
    unsigned short y : 8;
    unsigned short affineMode : 2;
    unsigned short attr0Hi : 6;
    unsigned short x : 9;
    unsigned short matrixNum : 5;
    unsigned short size : 2;
};

struct Cursor801908c {
    unsigned char pad0[5];
    unsigned char mode;
    unsigned short x;
    unsigned short y;
    unsigned short padA;
    unsigned short timer;
    unsigned short padE;
    struct OamShadow801908c oam;
};

extern const unsigned short Data_366f8[];
extern unsigned int Func_8003d28(struct ObjAffineSrc801908c *src);

void Func_801908c(struct Cursor801908c *c)
{
    unsigned char mode = c->mode;
    int val = 0x100;
    struct OamShadow801908c *oam = &c->oam;
    struct ObjAffineSrc801908c s;

    switch (mode) {
    case 9:
        val = Data_366f8[c->timer++ & 0x1f];
        break;
    case 10:
        val = Data_366f8[c->timer++ & 0x1f] >> 1;
        break;
    case 11:
        if (c->timer < 8) {
            val = Data_366f8[c->timer++ * 2 + 0x10];
        }
        break;
    case 12:
        if (c->timer < 8) {
            val = Data_366f8[c->timer++ * 2 + 0x10] >> 1;
        }
        break;
    }

    if (val == 0x100) {
        oam->matrixNum = 0;
        oam->affineMode = 0;
        oam->x = c->x;
        oam->y = c->y;
    } else {
        s.xScale = val;
        s.yScale = val;
        s.angle = 0;
        oam->matrixNum = Func_8003d28(&s);
        if (val > 0x100) {
            oam->affineMode = 3;
            oam->x = c->x - 8;
            oam->y = c->y - 8;
        } else {
            oam->affineMode = 1;
            oam->x = c->x;
            oam->y = c->y;
        }
    }
}

INCLUDE_ASM("asm/ui/ui/Func_80191cc.s");

extern void DecompressString(unsigned int param_1, unsigned int param_2, int param_3);

void DecompressString2(unsigned int param_1, unsigned int param_2) {
    DecompressString(param_1, param_2, 0x7fffffff);
}

INCLUDE_ASM("asm/ui/ui/Func_801965c.s");
INCLUDE_ASM("asm/ui/ui/DecompressString.s");

int *Func_80197b4(int *p) {
    if (*p != 0)
        *p = 0;
    return p;
}

extern void CloseUIBox(void *, int);
void Func_80197c4(void)
{
    unsigned char *b = *(unsigned char **)iwram_3001e8c__a5;
    struct UISlot *s;
    struct UIBox *o;
    struct UIBox *box;
    int i;
    int done;

    s = (struct UISlot *)(b + 0x620);
    box = (struct UIBox *)(b + 0x500);
    for (i = 0; i != 3; i++, s++) {
        o = (struct UIBox *)s->obj;
        if (o != 0 && o->flags != 0)
            CloseUIBox(o, 0);
    }
    for (;;) {
        done = 1;
        s = (struct UISlot *)(b + 0x620);
        for (i = 0; i != 3; i++, s++) {
            struct UIBox *q = (struct UIBox *)s->obj;
            if (q != 0) {
                if (*(int *)&q->f18 == 0 && q->flags == 0)
                    s->obj = 0;
                else
                    done = 0;
            }
        }
        if (done)
            break;
        WaitFrames(1);
    }
    i = 0;
    while (i != 8) {
        if (box->flags != 0)
            CloseUIBox(box, 0);
        box++;
        i++;
    }
}
INCLUDE_ASM("asm/ui/ui/Func_8019854.s");
struct UiSlots8019908 {
    unsigned char pad0[0x12bc];
    int value[8];
    unsigned short id[8];
};
extern struct UiSlots8019908 *iwram_3001e8c__k2 __asm__("iwram_3001e8c");
void Func_80198dc(void)
{
    struct UiSlots8019908 *s = iwram_3001e8c__k2;
    int i;

    for (i = 0; i != 8; i++) {
        s->value[i] = 0;
        s->id[i] = 0;
    }
}
void Func_8019908(int value, int id)
{
    struct UiSlots8019908 *s = iwram_3001e8c__k2;
    int i;
    int n = 8;

    for (i = 0; i != n; i++) {
        if (s->id[i] == 0) {
            s->value[i] = value;
            s->id[i] = id;
            return;
        }
    }
}
INCLUDE_ASM("asm/ui/ui/Func_8019944.s");
extern int _Func_80f954c(void);
extern unsigned int gKeyHeld;
struct V199c { char pad[0x14]; unsigned short t; };
int Func_801999c(struct V199c *m)
{
    int f = 0;
    if ((*(unsigned char **)iwram_3001e8c__a5)[0x12f9] != 0 && _Func_80f954c() == 0)
        f = 1;
    if (gKeyHeld & 0x303)
        f = 1;
    if (f) {
        m->t = 0;
        return 1;
    }
    return 0;
}
int Func_80199ec(struct V199c *m)
{
    extern int _Func_80f954c(void);
    extern unsigned int iwram_3001af8;
    extern unsigned int gKeyPress;
    unsigned char *b = *(unsigned char **)iwram_3001e8c__a5;
    int f = 0;
    unsigned int k;
    if (b[0x12f9] != 0 && _Func_80f954c() == 0)
        f = 1;
    k = gKeyPress;
    if (b[0xea4] != 0)
        k = iwram_3001af8;
    if (k & 0x303)
        f = 1;
    if (f) {
        m->t = 0;
        return 1;
    }
    return 0;
}
void Func_8019a54(void)
{
    unsigned char **p = (unsigned char **)(*(unsigned char **)iwram_3001e8c__a5 + 0x620);
    int i;
    for (i = 0; i != 3; i++) {
        unsigned char *box = *p;
        if (box != 0 && *(int *)(box + 0x18) == 0 && *(unsigned short *)(box + 0x16) != 0 && *(unsigned short *)(box + 0x14) != 0)
            CloseUIBox(box, *(unsigned short *)(box + 0x16) & 2);
        p += 10;
    }
    WaitFrames(10);
}
INCLUDE_ASM("asm/ui/ui/Func_8019aa0.s");

int Func_8019ba0(int stringID) {
    return BufferString(stringID, 1);
}

INCLUDE_ASM("asm/ui/ui/HuffStr_Start.s");
INCLUDE_ASM("asm/ui/ui/Func_8019bfc.s");
void Func_8019d0c(void)
{
    extern unsigned char *iwram_3001e8c__9d0c __asm__("iwram_3001e8c");
    struct { unsigned short v; } v;
    unsigned char *base = iwram_3001e8c__9d0c;
    unsigned short *p;
    v.v = 999;
    p = (unsigned short *)(base + 0x12ec);
    *p = v.v;
    p++;
    *p = v.v;
}

INCLUDE_ASM("asm/ui/ui/rodata_rom_1908c.s");

INCLUDE_ASM("asm/ui/ui/GetPortrait.s");
void *Func_8019da8(int portrait, int arg1, int x, int y)
{
    extern unsigned char *iwram_3001e8c__9da8 __asm__("iwram_3001e8c");
    extern int GetPortrait(int);
    extern void *CreateUIBox(int, int, int, int, int);
    extern int Func_801ec6c(int, int, int, void *, int, int);
    unsigned char *ui = iwram_3001e8c__9da8;
    void *box;
    int dy;
    int dx;

    if (GetPortrait(portrait) == -1)
        return 0;
    dy = -4;
    dx = dy;
    if (ui[0xea4]) {
        box = CreateUIBox(x, y, 6, 5, 2);
        dx = 0;
    } else {
        box = CreateUIBox(x, y, 5, 5, 2);
    }
    if (box)
        Func_801ec6c(portrait, arg1, -1, box, dx, dy);
    return box;
}
void Func_8019e48(int a0)
{
    extern int GetPortrait(int);
    unsigned char *base = *(unsigned char **)iwram_3001e8c__a5;
    unsigned char *slot = base + (0xa0 << 3);
    int p = GetPortrait(a0);
    int idx;
    struct S { unsigned char pad[0x12ec]; unsigned short pt[2]; unsigned short ids[2]; } *st = (struct S *)base;
    int id;
    int i;

    if (p == -1)
        return;
    if (st->pt[1] == p)
        idx = 1;
    else if (st->pt[0] == p)
        idx = 0;
    else
        return;
    id = st->ids[idx];
    for (i = 0; i != 8; i++, slot += 0x24) {
        unsigned char *q = *(unsigned char **)slot;
        if (q[4] == 2 && q[0xe] == id) {
            CloseUIBox(slot, 2);
            return;
        }
    }
}
