/* rpg/party.c -- consolidated TU. */
#include "nonmatching.h"

extern void GameInit(void);
extern void _GameStart(int);

void Debug_StartGame(void)
{
	GameInit();
	_GameStart(0);
}

extern void *GetUnit(int unit);
extern unsigned char ewram_200024c[];

void *Func_8077330(int r0) {
    if (r0 != 0) {
        return GetUnit(0x83);
    }
    return ewram_200024c;
}

INCLUDE_ASM("asm/rpg/party/rom_77320_a_a_c_c_a.s");

extern unsigned char Data_80ec8;

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

INCLUDE_ASM("asm/rpg/party/rom_77320_a_c_a.s");

extern void SetFlag(unsigned int flagID);
extern void Func_8079ae8(unsigned int arg0);
extern void CalcStats(unsigned int pc);

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

INCLUDE_ASM("asm/rpg/party/rom_77320_a_c_c.s");

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

INCLUDE_ASM("asm/rpg/party/rom_77320_c_c.s");
