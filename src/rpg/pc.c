#include "nonmatching.h"
#include "rpg.h"

extern unsigned char *GetUnit(unsigned int unit);

extern int GetPartySize();
extern int RPGRandom();
extern void Func_8079ae8();
extern unsigned char * GetDjinniInfo();

typedef struct {
    unsigned char data[0xb4];
} PCStats;

extern PCStats gPCStats[];

PCStats *GetPCBaseStats(unsigned int idx) {
    PCStats *base = gPCStats;
    return base + idx;
}

INCLUDE_ASM("asm/rpg/pc/ResetPCs.s");

void Func_8079004(void) {}

extern int L7a830[] __asm__(".L7a830");
unsigned int GetPCStatGrowth(unsigned int unit, unsigned int arg1)
{
    struct Unit *u = (struct Unit *)GetUnit(unit);
    int lvl = arg1;
    if (u->curClass != 0) {
        if (lvl <= 0)
            return 0;
        if (lvl <= 0x63 && u->pcID <= 7)
            return L7a830[u->pcID * 99 + lvl - 1];
    }
    return -1;
}
INCLUDE_ASM("asm/rpg/pc/Func_807905c.s");

extern unsigned int GetPCStatGrowth(unsigned int arg0, unsigned int arg1);
extern unsigned int Func_807905c(unsigned int arg0, unsigned int arg1);
extern void CalcStats(int pc);

unsigned int Func_80792c4(unsigned int arg0, unsigned int arg1)
{
    unsigned char *unit;

    unit = GetUnit(arg0);
    if (*(unsigned int *)(unit + 0x124) >= GetPCStatGrowth(arg0, *(unsigned char *)(unit + 0xf) + 1))
    {
        if (Func_807905c(arg0, arg1))
            return arg1;
    }
    return 0;
}
void SetMinLevel(int pcID, unsigned int level) {
    unsigned char *unit;
    int curLevel;
    int buf[4];

    unit = (unsigned char *)GetUnit(pcID);
    curLevel = unit[15];
    while (curLevel < (int)level) {
        Func_807905c(pcID, buf);
        curLevel++;
    }
    CalcStats(pcID);
}

SECTION(".text.rpg_pc_2");

INCLUDE_ASM_SECTION("asm/rpg/pc/InitEnemyUnit.s", ".text.rpg_pc_2");

extern int GetFlag(int flagID);

int GetPartySize(void) {
    int count;
    int i;

    count = 0;
    for (i = 0; i <= 7; i++) {
        if (GetFlag(i))
            count++;
    }
    return count;
}

extern void SetFlag(int);
extern unsigned char gState__p[] __asm__("gState");
int AddPartyMember(int id)
{
    int n = GetPartySize();
    int i;
    SetFlag(id);
    for (i = 0; i < n; i++)
        if (gState__p[0x1f8 + i] == id)
            return n;
    gState__p[0x1f8 + i] = id;
    return n + 1;
}
INCLUDE_ASM_SECTION("asm/rpg/pc/Func_8079664.s", ".text.rpg_pc_2");

#include "state/global_state.h"
extern GlobalState gState;

unsigned int Func_80796c4(unsigned int arg0)
{
    unsigned short *r5;
    unsigned int r0;
    unsigned int r1;
    unsigned int r3;
    unsigned int r4;
    unsigned char *r2;

    r5 = (unsigned short *)arg0;
    r0 = 0;
    if (r5 == 0) {
        return r0;
    }
    r0 = GetPartySize();
    r1 = 0;
    if (r0 != 0) {
        r4 = 0xfc;
        r4 <<= 1;
        r2 = (unsigned char *)&gState + r4;
        do {
            r3 = *r2;
            r1++;
            *r5 = r3;
            r2++;
            r5++;
        } while (r1 != r0);
    }
    *(unsigned short *)r5 = 0xff;
    return r0;
}

int AddCoins(int amount)
{
  int r3;
  int r2;
  char *new_var;
  r2 = 0xf423f;
  new_var = (char *) (&gState);
  r3 = *((int *) (new_var + 0x10));
  r3 = r3 + amount;
  if (r3 > r2)
  {
    r3 = r2;
  }
  if (r3 < 0)
  {
    if (1)
    {
    }
    r3 = 0;
  }
  *((int *) (new_var + 0x10)) = r3;
  return r3;
}

extern unsigned int gState__a2[] __asm__("gState");

unsigned int AddCoinsSpent(int coins)
{
    int val;
    int idx;

    idx = 0x8c << 1;
    val = *(int *)((char *)gState__a2 + idx);
    val += coins;
    if (val > 0xf423f)
        val = 0xf423f;
    if (val < 0)
        val = 0;
    *(int *)((char *)gState__a2 + idx) = val;
    return val;
}


int Func_8079754(int delta)
{
    int value;
    int idx;

    idx = 0x8e << 1;
    value = *(signed char *)((char *)gState__a2 + idx);

    value += delta;

    if (value > 28)
        value = 28;

    if (value < 0)
        value = 0;

    *(unsigned char *)((char *)gState__a2 + idx) = value;

    return value;
}
extern unsigned char X84a8c[];
extern int *Func_8077330();
int Func_807977c(unsigned char *out)
{
    unsigned char *p = X84a8c;
    unsigned char *end = X84a8c + 0xf;
    int n = 0;
    int one = 1;

    do {
        unsigned char id = *p++;
        if (*Func_8077330(0) & (one << id)) {
            *out++ = id;
            n++;
        }
    } while (p <= end);
    *out = 0x20;
    return n;
}

SECTION(".text.rpg_pc_3");

#include "nonmatching.h"

extern int Func_8079b24();
int Func_8079bf8(int a, int b, int c, int d)
{
    int r;

    a -= b;
    if (a < 0)
        a = 0;
    r = Func_8079b24(d, 1) * (a + c * 2) / 512;
    if (r < 0)
        r = 0;
    return r;
}

extern int Func_8079b24(int a, int b);

int Func_8079c30(int arg0, int arg1, int arg2) {
    int t;
    int result;

    t = Func_8079b24(arg1, 0);
    result = (t * arg0) * arg2;
    if (result < 0) {
        result += 0xffff;
    }
    return result >> 16;
}

int Func_8079c5c(int arg0, int arg1, int arg2) {
    extern int Func_8079b24(int a, int b);
    int t;
    int result;

    t = Func_8079b24((arg1 << 1) - 0xc8, 0);
    result = (t * arg0) * arg2;
    if (result < 0) result += 0xffff;
    return result >> 16;
}

int Func_8079c8c(unsigned int pc)
{
    extern unsigned int Func_80798b4(struct Unit *unit);
    extern unsigned char *Func_807882c(struct Unit *unit, int type);
    struct Unit *unit;
    unsigned char *item;

    unit = (struct Unit *)GetUnit(pc);
    if (unit->curClass == 0)
        return Func_80798b4(unit);
    item = Func_807882c(unit, 1);
    if (item != 0)
        return *(int *)(item + 0x14);
    return 4;
}
int CheckEquipmentCritBoost(struct Unit *unit)
{
    extern unsigned char *GetItemInfo(int item);
    int total = 0;
    int i, j;
    unsigned char *e;

    for (i = 0; i < 15; i++) {
        if (unit->items[i] & 0x200) {
            e = GetItemInfo(unit->items[i]) + 0x18;
            for (j = 0; j < 4; j++, e += 4) {
                if (e[0] == 0x17)
                    total += (signed char)e[1];
            }
        }
    }
    if (total < 0)
        total = 0;
    return total;
}
int Func_8079d1c(struct Unit *unit)
{
    extern unsigned char *Func_807882c(struct Unit *unit, int type);
    extern int CheckEquipmentCritBoost(struct Unit *unit);
    unsigned char *item;
    int chance;

    if (unit->curClass == 0)
        return 1;
    item = Func_807882c(unit, 1);
    if (item == 0)
        return 1;
    if (*(unsigned short *)(item + 0xe) == 0)
        return 1;
    chance = ((CheckEquipmentCritBoost(unit) + item[0xb] * 5) << 16) / 100;
    if (chance > (RPGRandom() & 0xffff))
        return *(unsigned short *)(item + 0xe);
    return 1;
}
int Func_8079d7c(int id)
{
    switch (id) {
    case 12: case 13: return 70;
    case 16: case 17: return 75;
    case 22: return 30;
    case 23: return 40;
    case 24: return 45;
    case 18: case 19: case 25: return 55;
    case 26: return 25;
    case 27: return 20;
    case 20: case 31: return 65;
    case 21: case 34: return 35;
    case 35: return 50;
    case 56: return -60;
    case 57: return -90;
    case 8: case 9: case 28: case 32: return 60;
    default: return -100;
    }
}
INCLUDE_ASM_SECTION("asm/rpg/pc/Func_8079e9c.s", ".text.rpg_pc_3");

int Func_8079ef8(int arg0)
{
	if (arg0 == 5 || arg0 == 0x38 || arg0 == 0x39) {
		return 1;
	}
	return 0;
}

INCLUDE_ASM_SECTION("asm/rpg/pc/Func_8079f10.s", ".text.rpg_pc_3");

SECTION(".text.rpg_pc_4");

/* Give an item to a party member (equip plus stat/flag update). */
#include "nonmatching.h"

void Func_807a628(unsigned int arg0, unsigned int arg1)
{
    extern int GiveItemTo(unsigned int unit, unsigned int item);
    extern int EquipItem(unsigned int unit, unsigned int slot);
    unsigned short *unit;
    int i;
    extern unsigned char *GetUnit_2(unsigned int unit) __asm__("GetUnit");

    unit = (unsigned short *)GetUnit_2(arg0);
    GiveItemTo(arg0, arg1);
    i = 0;
    unit = (unsigned short *)((char *)unit + 0xd8);
    while (i <= 14) {
        if (*unit++ == arg1) {
            EquipItem(arg0, i);
        }
        i++;
    }
}

INCLUDE_ASM_SECTION("asm/rpg/pc/Func_807a664.s", ".text.rpg_pc_4");
INCLUDE_ASM_SECTION("asm/rpg/pc/Func_807a7a0.s", ".text.rpg_pc_4");
