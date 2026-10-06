/* battle/enemy.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c1a34.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c1afc.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c1c54.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c1df4.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c1ebc.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c1f50.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c1fa8.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/LoadEnemyGroup.s");

extern unsigned char Lc7420[] __asm__(".Lc7420");

int GetEnemyDeathSFX(int arg0)
{
    unsigned char *p;
    int v;
    p = Lc7420 + arg0 * 8;
    v = (int)(p[3] >> 5);
    if (v > 4)
        return -1;
    return v;
}

extern unsigned short Lc7420__a1[] __asm__(".Lc7420");

unsigned int Func_80c2384(unsigned int n)
{
    if (n > 0xab)
        return Lc7420__a1[0];
    return Lc7420__a1[n * 4];
}

struct EnemyAnimEntry {
    unsigned char pad0[3];
    unsigned char bit0 : 1;
    unsigned char field : 4;
    unsigned char rest : 3;
    unsigned char pad1[4];
};

extern struct EnemyAnimEntry Lc7420_entries[] __asm__(".Lc7420");

unsigned int Func_80c23a0(unsigned int arg0) {
    if (arg0 > 0xab)
        return *(unsigned short *)Lc7420_entries;
    return Lc7420_entries[arg0].field;

}
struct EnemyAttackEntry {
    unsigned char pad0[2];
    unsigned char bit0 : 1;
    unsigned char field : 4;
    unsigned char rest : 3;
    unsigned char pad1[5];
};

extern struct EnemyAttackEntry Lc7420_attack[] __asm__(".Lc7420");

unsigned int GetEnemyAttackAnimUnk(unsigned int arg0) {
    unsigned int result;

    if (arg0 > 0xab)
        return 0;
    result = 0;
    if (Lc7420_attack[arg0].bit0)
        result = 1;
    return result;
}

unsigned int GetEnemyAttackAnim(unsigned int arg0) {
    unsigned int v, result;

    if (arg0 > 0xab)
        return 1;
    v = Lc7420_attack[arg0].field;
    if (v != 0) {
        result = v;
    } else {
        unsigned int one = 1;
        result = one;
    }
    return result;
}

unsigned int GetEnemyAttackAnimParam(unsigned int arg0) {
    unsigned int v, result;

    if (arg0 > 0xab)
        return 0;
    v = Lc7420_attack[arg0].rest;
    if (v != 0) {
        result = v;
    } else {
        unsigned int zero = 0;
        result = zero;
    }
    return result;
}

extern int park(int, int);
extern int r2(int);
extern int reg(int, int, int);

unsigned int GetEnemyUnk(unsigned int param_1)
{
    unsigned char *t;
    unsigned int idx;
    unsigned char *p;

    if (param_1 > 0xab)
        return 0;
    t = Lc7420;
    idx = param_1 << 3;
    p = (unsigned char *)(idx + (unsigned int)t);
    return ((unsigned int)p[3] << 31) >> 31;
}


unsigned int GetEnemyHeight(unsigned int param_1)
{
    if (param_1 > 0xab)
        return 0;
    return Lc7420[(param_1 << 3) + 4];
}

extern unsigned char *_GetItemInfo(unsigned int arg);

unsigned int Func_80c2470(unsigned int arg0) {
	unsigned int r6;
	unsigned int r5;
	unsigned char r2;

	r6 = arg0 & 0x1ff;
	r5 = 0;
	if (r6 == 0)
		return 0;
	r2 = _GetItemInfo(r6)[3];
	if (r2 & 8)
		r5 = 1;
	r5 <<= 1;
	if (r2 & 4)
		r5 += 1;
	r5 <<= 9;
	r5 += r6;
	return r5;
}

INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c24b0.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c24f0.s");
INCLUDE_ASM("asm/modules/rom_b5000/battle/enemy/Func_80c2724.s");

void Func_80c2a08(void) {}
