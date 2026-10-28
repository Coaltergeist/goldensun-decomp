// fakematch
#include "nonmatching.h"
#include "rpg.h"
#include "dma.h"
extern void *_GetItemInfo(unsigned int item);

extern void Func_80b00f4();

INCLUDE_ASM("asm/shop/shop/Func_80b0070.s");

extern unsigned int iwram_3001f2c;
extern void Func_80b08b8(unsigned int x);

void Func_80b00f4(void) {
    Func_80b08b8(iwram_3001f2c + 0x380);
}

INCLUDE_ASM("asm/shop/shop/Func_80b010c.s");

extern unsigned char iwram_3001f2c__a1[] __asm__("iwram_3001f2c");
extern void StopTask(void *task);
extern void _Func_8019a54(void);
extern void Func_8003f3c(unsigned short id);
extern void gfree(int index);

void Func_80b0204(void)
{
    unsigned char *r5 = *(unsigned char **)iwram_3001f2c__a1;

    StopTask(Func_80b00f4);
    _Func_8019a54();
    Func_8003f3c(*(unsigned short *)(r5 + (0xe4 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x392));
    Func_8003f3c(*(unsigned short *)(r5 + (0xe5 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x396));
    Func_8003f3c(*(unsigned short *)(r5 + (0xe6 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x39a));
    gfree(0x37);
}

INCLUDE_ASM("asm/shop/shop/Func_80b0278.s");
int Debug_TestEquipAndStatus(void)
{
    extern struct { int pad[4]; int money; unsigned char p2[0x108]; unsigned char x; } gState__s __asm__("gState");
    extern int _GiveItemTo(int, int);
    extern int _EquipItem(int, int);
    extern unsigned char *_GetUnit(unsigned int unitID);
    extern int Func_80b0278(int, int);

    gState__s.money = 200000;
    gState__s.x = 0x1c;
    _EquipItem(1, _GiveItemTo(1, 0x48d));
    _EquipItem(0, _GiveItemTo(0, 0x40b));
    _GiveItemTo(2, 0xe7);
    _GetUnit(3)[0x131] = 1;
    _GetUnit(5)[0x131] = 1;
    _GetUnit(2)[0x140] = 1;
    Func_80b0278(1, 0x1e);
    return 0;
}

extern void WaitFrames(unsigned int nframes);
extern int _Func_80f954c(void);

void Func_80b04c4(void)
{
	while (_Func_80f954c() != 0)
		WaitFrames(1);
}

extern unsigned char Lconst_c9b[] __asm__(".Lconst_c9b");
extern unsigned char Lconst_cc6[] __asm__(".Lconst_cc6");
extern unsigned char Lconst_cf1[] __asm__(".Lconst_cf1");
extern unsigned char Lconst_d4c[] __asm__(".Lconst_d4c");
/* pooled literal (ldr rN, =0xc9b, =0xcc6, =0xcf1, =0xd4c in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_c9b, 0xc9b\n.equ .Lconst_cc6, 0xcc6\n.equ .Lconst_cf1, 0xcf1\n.equ .Lconst_d4c, 0xd4c");
void Func_80b04dc(int msg)
{
    extern int _GetSpriteVoice(int);
    extern unsigned int _Func_8017658(int, int, int, int);
    extern int _Func_8017364(void);
    unsigned char *base = (unsigned char *)iwram_3001f2c;
    int voice = _GetSpriteVoice(*(unsigned short *)(base + 0x3a4));
    signed char kind;

    _Func_8019a54();
    kind = *(signed char *)(base + 0x3a9);
    if (kind == 2)
        msg += (int)Lconst_cc6 - (int)Lconst_c9b;
    if (kind == 0)
        msg += (int)Lconst_cf1 - (int)Lconst_c9b;
    if (*(signed char *)(base + 0x3ac))
        msg += (int)Lconst_d4c - (int)Lconst_c9b;
    _Func_8017658(msg, 5, 0, (voice << 16) | 0x22);
    while (!_Func_8017364())
        WaitFrames(1);
    WaitFrames(1);
}
INCLUDE_ASM("asm/shop/shop/Func_80b0574.s");

extern unsigned char iwram_3001f2c__a2[] __asm__("iwram_3001f2c");
extern void _Func_80a17c4(unsigned int);
extern unsigned int _YesNoMenu2(int, int, unsigned int);

unsigned int Func_80b0634(unsigned int arg0)
{
  unsigned char *r5;
  unsigned char r6;
  unsigned int r7;
  r5 = (unsigned char *) ((*((unsigned int *) iwram_3001f2c__a2)) + 0x380);
  r7 = arg0;
  arg0++;
  arg0--;
  r6 = *((unsigned char *) ((*((unsigned int *) r5)) + 5));
  _Func_80a17c4(*((unsigned int *) r5));
  r7 = _YesNoMenu2(7, 5, r7);
  *((unsigned char *) ((*((unsigned int *) r5)) + 5)) = r6;
  return r7;
}

extern unsigned char iwram_3001f2c__a3[] __asm__("iwram_3001f2c");

unsigned int Func_80b0664(unsigned int arg0)
{
  unsigned char *r5;
  unsigned char r6;
  unsigned int r7;
  r5 = (unsigned char *) ((*((unsigned int *) iwram_3001f2c__a3)) + 0x380);
  r7 = arg0;
  arg0++;
  arg0--;
  r6 = *((unsigned char *) ((*((unsigned int *) r5)) + 5));
  _Func_80a17c4(*((unsigned int *) r5));
  r7 = _YesNoMenu2(7, 7, r7);
  *((unsigned char *) ((*((unsigned int *) r5)) + 5)) = r6;
  return r7;
}

struct ShopListNode {
    unsigned int unk0;
    struct ShopListNode *next;
};

struct ShopListNode *Func_80b0694(unsigned char *shop)
{
    struct ShopListNode *node = *(struct ShopListNode **)(shop + 0x348);
    int i;

    for (i = 0; i != *(unsigned short *)(shop + 0x39e); i++)
        node = node->next;
    return node;
}

extern unsigned char Lb4100[] asm(".Lb4100");

void Func_80b06c0(int count, int arg1, int arg2)
{
  int shifted;
  int val;
  shifted = arg1 << 4;
  val = shifted + 1;
  if (count <= 0)
  {
    return;
  }
  {
    unsigned short *p = (unsigned short *) Lb4100;
    do
    {
      int addr = arg2 + (*p);
      p++;
      count--;
      *((unsigned char *) (addr + 4)) = val;
      *((unsigned char *) (addr + 8)) = val;
      *((unsigned char *) (addr + 0xc)) = val;
      // accepted as-is; may need further review
      shifted = addr;
      *((unsigned char *) (shifted + 0x10)) = val;
      *((unsigned char *) (shifted + 0x14)) = val;
      *((unsigned char *) (shifted + 0x18)) = val;
    }
    while (count != 0);
  }
}
INCLUDE_ASM("asm/shop/shop/Func_80b06ec.s");
INCLUDE_ASM("asm/shop/shop/Func_80b0744.s");
extern unsigned char *iwram_3001ebc__s[] __asm__("iwram_3001ebc");
void Func_80b0840(int a)
{
    unsigned char *w = iwram_3001ebc__s[5];
    unsigned char *b = iwram_3001ebc__s[0];
    DMA3_SET(w + 0xe00, b + 0x236, 0x84000150);
    DMA3_SET(w + 0xe00, w + 0x380, 0x840002a0);
    _Func_8091200(a, 1);
    _Func_8091254(0x10);
}

extern unsigned int iwram_3001ebc;

void Func_80b0894(void) {
    unsigned int r0;
    unsigned int r3;

    r3 = (unsigned int)&iwram_3001ebc;
    r0 = *(unsigned int *)r3;
    r3 = 0x236;
    r0 += r3;
    _Func_8091200(r0, 1);
    _Func_8091254(0x10);
}

INCLUDE_ASM("asm/shop/shop/Func_80b08b8.s");
INCLUDE_ASM("asm/shop/shop/Func_80b0958.s");
INCLUDE_ASM("asm/shop/shop/Func_80b09fc.s");
INCLUDE_ASM("asm/shop/shop/Func_80b0a20.s");

extern unsigned char iwram_3001f2c__a3[];   /* @ 0x03001F2C */
extern void Func_80b09fc(void *arg0, unsigned int arg1, unsigned int arg2, int arg3);

void Func_80b0a6c(void *arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *base = *(unsigned char **)iwram_3001f2c__a3;

    if (arg0 != 0) {
        arg1 = arg1 + (*(unsigned short *)((char *)arg0 + 0xc) << 3) + 8;
        arg2 = arg2 + (*(unsigned short *)((char *)arg0 + 0xe) << 3) + 8;
    }
    Func_80b09fc(base + 0x380, arg1, arg2, *(signed char *)(base + 0x3a8));
}

INCLUDE_ASM("asm/shop/shop/Func_80b0aac.s");
INCLUDE_ASM("asm/shop/shop/Func_80b0fa4.s");
extern void _Func_801e7c0(unsigned int, unsigned int, unsigned int, unsigned int);
extern void _Func_801ea08(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80b10cc(void)
{
    extern unsigned char gState[];
    unsigned int r5;
    char *state;

    r5 = *(unsigned int *)(iwram_3001f2c + 0xc);
    if (r5 != 0) {
        _Func_801e7c0(0xc8a, r5, 0, 0);
        state = (char *)gState;
        _Func_801ea08(*(unsigned int *)(state + 0x10), 6, r5, 0x20, 8);
    }
}
INCLUDE_ASM("asm/shop/shop/Func_80b110c.s");

extern void _Func_8016498(void);
extern void _Func_801e7c0(unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80b11a4(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    r6 = arg1;
    if (r5 != 0) {
        _Func_8016498();
        _Func_801e7c0(r6, r5, 0, 0);
    }
}

INCLUDE_ASM("asm/shop/shop/Func_80b11c4.s");
INCLUDE_ASM("asm/shop/shop/Func_80b1260.s");
INCLUDE_ASM("asm/shop/shop/Func_80b1470.s");
INCLUDE_ASM("asm/shop/shop/Func_80b153c.s");
INCLUDE_ASM("asm/shop/shop/Func_80b1614.s");
extern int _GetEquippedItem(int, int);
extern void _PlaySound(int);
extern int _GiveItemTo(int, int);
extern int _AddCoins(int);
extern unsigned int _AddCoinsSpent(int);
extern void Func_80b0574(int);
extern int Func_80b1868(int, int);
extern int Func_80b196c(int, int);
void Func_80b17e4(int unit, int item, int count)
{
    short *info = _GetItemInfo(item);
    int slot = 0;
    int eq = _GetEquippedItem(unit, ((unsigned char *)info)[2]);
    int i;
    _PlaySound(0x65);
    for (i = 0; i < count; i++) {
        slot = _GiveItemTo(unit, item);
        _AddCoins(-info[0]);
        _AddCoinsSpent(info[0]);
        Func_80b10cc();
    }
    Func_80b0574(0xca1);
    if (Func_80b1868(unit, slot))
        Func_80b196c(unit, eq);
}
INCLUDE_ASM("asm/shop/shop/Func_80b1868.s");
INCLUDE_ASM("asm/shop/shop/Func_80b196c.s");
int Func_80b19cc(unsigned int item)
{
    int price = *(short *)_GetItemInfo(item);
    if (((unsigned char *)_GetItemInfo(item))[3] & 8)
        price = 0;
    else if (item & 0x400)
        price = price / 2;
    else
        price = price * 3 / 4;
    return price;
}
INCLUDE_ASM("asm/shop/shop/Func_80b1a14.s");
INCLUDE_ASM("asm/shop/shop/Func_80b1bd0.s");
void Func_80b1dec(int box, int pc)
{
    extern unsigned char *_GetUnit(unsigned int unitID);
    extern void _Func_8016478(int);
    extern int _FindEmptyInventorySlot(int);
    extern void _DrawSmallText(int, int, int, int);
    extern unsigned char *_Func_801eb90(int, int, int, int, int);
    struct Unit *u;
    int i, x, y;

    u = (struct Unit *)_GetUnit(pc);
    x = 8;
    y = 0;
    if (box == 0)
        return;
    _Func_8016478(box);
    if (_FindEmptyInventorySlot(pc) == 0) {
        _DrawSmallText(0xc91, box, 8, 0x14);
        return;
    }
    for (i = 0; i <= 14; i++) {
        if (u->items[i] != 0)
            _Func_801eb90(u->items[i], 0x1b, box, x, y)[0xf] = 0xfc;
        x += 0x10;
        if (i == 4) {
            x = 8;
            y += 0x10;
        }
        if (i == 9) {
            x = 8;
            y += 0x10;
        }
    }
}
INCLUDE_ASM("asm/shop/shop/Func_80b1e80.s");
INCLUDE_ASM("asm/shop/shop/Func_80b1f4c.s");


unsigned int Func_80b20e8(unsigned int arg0)
{
    short *p;
    int v;

    p = _GetItemInfo(arg0);
    v = p[0] / 4;
    if ((arg0 & (0x80 << 3)) == 0)
        v = 0;
    return v;
}

extern void Func_80b1a14(void);

unsigned int Func_80b2110(void) {
    Func_80b1a14();
    return 0;
}

INCLUDE_ASM("asm/shop/shop/Func_80b211c.s");
INCLUDE_ASM("asm/shop/shop/Func_80b2328.s");
INCLUDE_ASM("asm/shop/shop/Func_80b24e4.s");

int NumShops(void) { return 0x23; }

extern short gShopItemLists[][33] asm(".Lb41ac");

extern int _GetFlag(int flag);
extern void _SetFlag(int flag);
extern int _Func_8078ad0(int item, int count);

void Func_80b26cc(int shop)
{
    int flag = shop + 0x400;
    int item;
    int i;

    if (_GetFlag(flag))
        return;
    _SetFlag(flag);
    for (i = 0; i < 8 && (item = gShopItemLists[shop][24 + i]) != 0; i++)
        _Func_8078ad0(item, 1);
}

int Func_80b2720(int shop, unsigned short *out)
{
    int n;

    for (n = 0; n < 24 && gShopItemLists[shop][n] != 0; n++)
        out[n] = gShopItemLists[shop][n];
    out[n] = 0;
    return n;
}

extern short Lb41ac[] __asm__(".Lb41ac");

short Func_80b2764(unsigned int arg0)
{
    return Lb41ac[arg0 * 33 + 32];
}

extern unsigned char *_GetUnit();

unsigned int Func_80b2778(unsigned int arg0, unsigned int arg1)
{
	unsigned char *p;
	unsigned char v;
	unsigned int result;

	p = _GetUnit();
	v = p[15];
	result = 0;
	if (arg1 == 0)
		result = (v * 5) << 2;
	else if (arg1 == 1)
		result = 10;
	else if (arg1 == 2)
		result = 50;
	else if (arg1 == 3)
		result = (v * 5) << 1;
	return result;
}


unsigned int Func_80b27b0(unsigned int arg0, unsigned int arg1)
{
	unsigned char *unit;
	unsigned int result;

	unit = _GetUnit(arg0);
	result = 0;
	if ((((arg1 == 0 && (*(short *)(unit + 0x38) <= 0)) ||
	      (arg1 == 1 && (*(signed char *)(unit + 0x131) != 0))) ||
	     (arg1 == 2 && (*(unsigned char *)(unit + 0x140) != 0))) ||
	    (arg1 == 3 && (*(signed char *)(unit + 0x130) != 0)))
	{
		result = 1;
	}
	return result;
}

INCLUDE_ASM("asm/shop/shop/Func_80b280c.s");
extern unsigned char Lconst_d24[] __asm__(".Lconst_d24");
extern unsigned char Lconst_d2e[] __asm__(".Lconst_d2e");
extern unsigned char Lconst_d38[] __asm__(".Lconst_d38");
extern unsigned char Lconst_d42[] __asm__(".Lconst_d42");
/* pooled literal (ldr rN, =0xd24, =0xd2e, =0xd38, =0xd42 in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_d24, 0xd24\n.equ .Lconst_d2e, 0xd2e\n.equ .Lconst_d38, 0xd38\n.equ .Lconst_d42, 0xd42");
unsigned int Func_80b2884(unsigned int m)
{
    signed char t = (*(unsigned char **)iwram_3001f2c__a1)[0x3aa];
    if (t == 1)
        m += (int)Lconst_d2e - (int)Lconst_d24;
    if (t == 2)
        m += (int)Lconst_d38 - (int)Lconst_d24;
    if (t == 3)
        m += (int)Lconst_d42 - (int)Lconst_d24;
    return m;
}

extern unsigned char iwram_3001f2c__a4[] __asm__("iwram_3001f2c");
extern unsigned int _GetSpriteVoice(unsigned short id);
extern unsigned int Func_80b2884(unsigned int arg0);
extern void _Func_8017658(unsigned int a, int b, int c, unsigned int d);
extern int _Func_8017364(void);

void Func_80b28d4(unsigned int arg0)
{
    unsigned char *r5 = *(unsigned char **)iwram_3001f2c__a4;
    unsigned int voice;

    voice = _GetSpriteVoice(*(unsigned short *)(r5 + (0xe9 << 2)));
    _Func_8019a54();
    arg0 = Func_80b2884(arg0);
    _Func_8017658(arg0, 5, 0, (voice << 16) | 0x22);
    while (!_Func_8017364()) {
        WaitFrames(1);
    }
    WaitFrames(1);
}

void Func_80b2928(unsigned int arg0)
{
    unsigned char *r5 = *(unsigned char **)iwram_3001f2c__a4;
    unsigned int voice;
    unsigned char saved;
    unsigned char **pp = (unsigned char **)(r5 + (0xe0 << 2));

    saved = (*pp)[5];
    voice = _GetSpriteVoice(*(unsigned short *)(r5 + (0xe9 << 2)));
    arg0 = Func_80b2884(arg0);
    (*pp)[5] = 0xd;
    _Func_8019a54();
    _Func_8017658(arg0, 5, 0, (voice << 16) | 0x22);
    while (_Func_8017364() == 0)
        WaitFrames(1);
    WaitFrames(1);
    (*(unsigned char **)(r5 + (0xe0 << 2)))[5] = saved;
}
INCLUDE_ASM("asm/shop/shop/UI_Sanctum.s");
INCLUDE_ASM("asm/shop/shop/Func_80b2b10.s");
INCLUDE_ASM("asm/shop/shop/Func_80b2da8.s");
INCLUDE_ASM("asm/shop/shop/Func_80b2e30.s");
/* pooled literal (ldr rN, =0xd2c, =0xd2d in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
__asm__(".equ .Lconst_d2c, 0xd2c\n.equ .Lconst_d2d, 0xd2d");
void Func_80b2ed8(int win, int item)
{
    extern unsigned char *iwram_3001f2c__e8 __asm__("iwram_3001f2c");
    extern void _Func_8016478(int);
    extern void _Func_8019908(int, int);
    extern void _DrawSmallText(int, int, int, int);
    int k = *(signed char *)(iwram_3001f2c__e8 + 0x3aa);
    int price = Func_80b2778(item, k);
    extern unsigned char Lconst_d2c[] __asm__(".Lconst_d2c");
    extern unsigned char Lconst_d2d[] __asm__(".Lconst_d2d");
    int msg;

    if (win == 0)
        return;
    _Func_8016478(win);
    if (Func_80b27b0(item, k))
        msg = (int)Lconst_d2c;
    else
        msg = (int)Lconst_d2d;
    msg = Func_80b2884(msg);
    _Func_8019908(price, 5);
    _DrawSmallText(msg, win, 0, 0);
}
INCLUDE_ASM("asm/shop/shop/Func_80b2f4c.s");
extern void _Func_809b804(void *);
extern void _Sprite_SetColorswap(void *, int);
extern int Random(void);
void Func_80b2ffc(void)
{
    unsigned char *b = *(unsigned char **)iwram_3001f2c__a1;
    unsigned char *p = b + 0x3b0;
    int i;
    signed char c;
    for (i = 0; i < 24; i++) {
        _Func_809b804(p);
        p += 0x48;
    }
    c = b[0x3ab];
    if (c != -1) {
        int r = (unsigned int)(Random() * 7) >> 16;
        int off = (c << 2) + 0x114;
        _Sprite_SetColorswap(*(void **)(b + off), r);
    }
}
INCLUDE_ASM("asm/shop/shop/Func_80b3050.s");

extern unsigned char iwram_3001f2c__a5[] __asm__("iwram_3001f2c");
extern signed char Lb4ab6[] __asm__(".Lb4ab6");

int Func_80b3210(int priceIndex)
{
  extern unsigned char *_GetUnit(unsigned int unitID);
  unsigned char *shop;
  signed char priceByte;
  signed char *prices;
  signed char partyCount;
  int livingCount;
  int price;
  int memberIndex;
  int memberOffset;
  unsigned char *members;
  int unitID;
  unsigned char *unit;
  int hp;
  shop = *((unsigned char **) iwram_3001f2c__a5);
  prices = Lb4ab6;
  priceByte = prices[priceIndex];
  price = (int) priceByte;
  partyCount = *((signed char *) (shop + 0x3a7));
  livingCount = 0;
  memberIndex = 0;
  if (livingCount >= ((int) partyCount))
  {
    goto done;
  }
  members = shop + 2;
  memberOffset = 0xdb << 2;
  do
  {
    unitID = *((short *) (members + memberOffset));
    unit = _GetUnit(unitID);
    hp = *((short *) (unit + 0x38));
    if (hp != 0)
    {
      livingCount++;
    }
    partyCount = *((signed char *) (shop + 0x3a7));
    memberIndex++;
    memberOffset += 2;
  }
  while (memberIndex < ((int) partyCount));
  done:
  return price * livingCount;

}

INCLUDE_ASM("asm/shop/shop/Func_80b3284.s");
void InnHeal(int cost)
{
    extern int _Func_80796c4(short *);
    extern void _UpdateStatBarPercent(int);
    extern void _MapTransitionOut(void);
    extern void _MapTransitionIn(void);
    extern void _WaitMapTransition(void);
    extern unsigned char *iwram_3001ebc__inn __asm__("iwram_3001ebc");
    short party[8];
    int n = _Func_80796c4(party);
    int i;

    _AddCoins(-cost);
    for (i = 0; i < n; i++) {
        struct Unit *u = (struct Unit *)_GetUnit(party[i]);
        if (u->HP != 0) {
            u->HP = u->maxHP;
            u->PP = u->maxPP;
            _UpdateStatBarPercent(party[i]);
        }
    }
    {
        unsigned char *b = iwram_3001ebc__inn;
        *(int *)(b + 0x1c0) = 0x209;
        *(int *)(b + 0x1c8) = 0x3c;
    }
    WaitFrames(0x14);
    _MapTransitionOut();
    _WaitMapTransition();
    _PlaySound(0x56);
    Func_80b04c4();
    WaitFrames(10);
    _MapTransitionIn();
    _WaitMapTransition();
    WaitFrames(0x1e);
    *(int *)(iwram_3001ebc__inn + 0x1c8) = 0x10;
}
INCLUDE_ASM("asm/shop/shop/UI_SellMenu.s");
INCLUDE_ASM("asm/shop/shop/Func_80b362c.s");
INCLUDE_ASM("asm/shop/shop/Func_80b386c.s");
