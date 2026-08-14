/* rpg/pc.c -- consolidated TU. */
#include "nonmatching.h"

extern int GetPartySize();
extern unsigned short RPGRandom();
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

INCLUDE_ASM("asm/rpg/pc/rom_78ee8_a.s");

void Func_8079004(void) {}

INCLUDE_ASM("asm/rpg/pc/rom_79008_a.s");

extern unsigned char *GetUnit(unsigned int unit);
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

INCLUDE_ASM_SECTION("asm/rpg/pc/rom_79460_a.s", ".text.rpg_pc_2");

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

INCLUDE_ASM_SECTION("asm/rpg/pc/rom_79460_c_a_a_a.s", ".text.rpg_pc_2");

typedef struct { unsigned char _bytes[704]; } GlobalState;
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

INCLUDE_ASM_SECTION("asm/rpg/pc/rom_79460_c_c_a_a_a.s", ".text.rpg_pc_2");
