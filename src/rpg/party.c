#include "nonmatching.h"
#include "rpg.h"

#include "nonmatching.h"

extern void GameInit(void);
extern void _GameStart(int);
extern void *GetUnit(int unit);
extern unsigned char ewram_200024c[];

void Debug_StartGame(void)
{
	GameInit();
	_GameStart(0);
}

void *Func_8077330(int r0) {
    if (r0 != 0) {
        return GetUnit(0x83);
    }
    return ewram_200024c;
}

extern int GetPartySize(void);
struct PartyOrder_q { unsigned char pad[0x1f8]; unsigned char members[8]; };
extern struct PartyOrder_q gState__q __asm__("gState");
int Func_8077348(void)
{
    int sum = 0;
    int n = GetPartySize();
    int i;

    if (n == 0)
        return 0;
    for (i = 0; i < n; i++)
        sum += ((unsigned char *)GetUnit(gState__q.members[i]))[0xf];
    sum /= n;
    return sum;
}

SECTION(".text.party_2");

#include "nonmatching.h"

extern unsigned char Data_80ec8;
extern void SetFlag(unsigned int flagID);
extern void Func_8079ae8(unsigned int arg0);
extern void CalcStats(unsigned int pc);
extern void *GetUnit(int unit);

unsigned int GetEnemyInfo(int param) {
    unsigned int idx;
    idx = param - 8;
    if (idx > 0xf9)
        idx = 0;
    return (unsigned int)(&Data_80ec8 + idx * 0x54);
}

void Func_80773f4(unsigned char *arg0, unsigned char *arg1, int arg2, int arg3)
{
	int i;
	if (arg3 != 0) {
		for (i = 0; i < arg2; i++) {
			*arg1 = *arg0;
			arg0++;
			arg1++;
		}
	} else {
		if (arg2 > 0) {
			i = arg2;
			do {
				*arg0 = *arg1;
				i--;
				arg1++;
				arg0++;
			} while (i != 0);
		}
	}
}

INCLUDE_ASM_SECTION("asm/rpg/party/CalcStats.s", ".text.party_2");

INCLUDE_ASM_SECTION("asm/rpg/party/CheckLure.s", ".text.party_2");

INCLUDE_ASM_SECTION("asm/rpg/party/Func_8077cb8.s", ".text.party_2");

INCLUDE_ASM_SECTION("asm/rpg/party/GameInit.s", ".text.party_2");

void Func_8077f40(void)
{
	SetFlag(0x20);
	Func_8079ae8(0);
	Func_8079ae8(1);
	Func_8079ae8(5);
	CalcStats(0);
	CalcStats(1);
	CalcStats(5);
}

INCLUDE_ASM_SECTION("asm/rpg/party/Func_8077f70.s", ".text.party_2");

INCLUDE_ASM_SECTION("asm/rpg/party/Func_807808c.s", ".text.party_2");

INCLUDE_ASM_SECTION("asm/rpg/party/Func_8078144.s", ".text.party_2");

void Func_8078228(void) {}

void UpdateStatBarPercent(unsigned int unit) {
    void *r5;
    int r0;
    int r1;
    int r3;
    int r2;

    r5 = GetUnit(unit);
    r2 = 0x38;
    r0 = *(short *)((char *)r5 + r2);
    r3 = 0x34;
    r1 = *(short *)((char *)r5 + r3);
    r0 <<= 14;
    r0 /= r1;
    r3 = 0x80;
    r3 <<= 7;
    if (r0 > r3) {
        r3 = 0x80 << 7;
    } else {
        if (r0 < 0) {
            r3 = 0;
        } else {
            r3 = r0;
        }
    }
    *(short *)((char *)r5 + 0x14) = r3;
    if ((r3 << 16) != 0) {
        goto label_0x3a;
    }
    r2 = 0x38;
    r3 = *(short *)((char *)r5 + r2);
    if (r3 == 0) {
        goto label_0x3a;
    }
    r3 = 1;
    *(short *)((char *)r5 + 0x14) = r3;
label_0x3a:
    r3 = 0x3a;
    r0 = *(short *)((char *)r5 + r3);
    r2 = 0x36;
    r1 = *(short *)((char *)r5 + r2);
    r0 <<= 14;
    r0 /= r1;
    r3 = 0x80;
    r3 <<= 7;
    if (r0 > r3) {
        r3 = 0x80 << 7;
    } else {
        if (r0 < 0) {
            r3 = 0;
        } else {
            r3 = r0;
        }
    }
    *(short *)((char *)r5 + 0x16) = r3;
    if ((r3 << 16) != 0) {
        goto label_0x6c;
    }
    r2 = 0x3a;
    r3 = *(short *)((char *)r5 + r2);
    if (r3 == 0) {
        goto label_0x6c;
    }
    r3 = 1;
    *(short *)((char *)r5 + 0x16) = r3;
label_0x6c:
    return;
}

static inline int Clamp_(int value, int min, int max) {
    if (value > max)
        return max;
    if (value < min)
        return min;
    return value;
}
void Func_80782a0(struct Unit *u, int hp)
{
    short v;

    v = u->HP = Clamp_(hp, 0, u->maxHP);
    v = u->percentHP = Clamp_((v << 16 >> 2) / u->maxHP, 0, 0x4000);
    if (v == 0 && u->HP != 0)
        u->percentHP = v = 1;
    v = u->percentPP = Clamp_((u->PP << 14) / u->maxPP, 0, 0x4000);
    if (v == 0 && u->PP != 0)
        u->percentPP = v = 1;
}

INCLUDE_ASM_SECTION("asm/rpg/party/Func_8078320.s", ".text.party_2");

static inline int Clamp(int value, int min, int max) {
    if (value > max)
        return max;
    if (value < min)
        return min;
    return value;
}

int ModifyHP(int unit, int amount) {
    struct Unit *u = GetUnit(unit);

    u->HP = Clamp(u->HP + amount, 0, u->maxHP);
    UpdateStatBarPercent(unit);
    return u->HP;
}

int ModifyPP(int unit, int amount) {
    struct Unit *u = GetUnit(unit);

    u->PP = Clamp(u->PP + amount, 0, u->maxPP);
    UpdateStatBarPercent(unit);
    return u->PP;
}

INCLUDE_ASM_SECTION("asm/rpg/party/rodata.s", ".text.party_2");
