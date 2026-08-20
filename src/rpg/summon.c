/* rpg/summon.c */
#include "nonmatching.h"

extern unsigned char *GetUnit(unsigned int unit);

extern unsigned char L84a9c[] __asm__("X84a9c");

unsigned char *GetSummonInfo(unsigned int param_1)
{
	if (param_1 > 0xf)
		return (unsigned char *)0;
	return L84a9c + (param_1 << 3);
}

extern unsigned int L88db8[] __asm__("X88db8");

unsigned int Func_80797ec(unsigned int arg0, unsigned int arg1)
{
    return L88db8[(arg0 << 2) + arg1];
}

INCLUDE_ASM("asm/rpg/summon/Func_80797fc.s");

extern int Func_80797fc(unsigned int a, unsigned char *b, unsigned char *c);

int Func_807987c(unsigned int arg0, int arg1)
{
    unsigned char *p;
    int buf[4];
    int ret;

    p = (unsigned char *)GetUnit(arg0);
    ret = 0;
    if (arg1 <= 3) {
        Func_80797fc(*(unsigned char *)(p + 0x128), p + 0xf8, (unsigned char *)buf);
        ret = buf[arg1] / 0xa;
    }
    return ret;
}

INCLUDE_ASM("asm/rpg/summon/Func_80798b4.s");
INCLUDE_ASM("asm/rpg/summon/InitEnemyElemStats.s");
INCLUDE_ASM("asm/rpg/summon/GetClassFromDjinn.s");

extern unsigned char L84a8c[] __asm__("X84a8c");

unsigned char *GetClassInfo(int classID) {
    return L84a8c + 0x90 + classID * 0x54;
}

extern unsigned int GetClassFromDjinn(unsigned char a, unsigned char *b);
extern void Func_8078bf0(unsigned int a);
extern void InitEnemyElemStats(unsigned int a, unsigned char *b);

void Func_8079ae8(unsigned int arg0) {
    unsigned char *unit;
    unsigned char v;
    unsigned char result;

    unit = GetUnit(arg0);
    v = *(unsigned char *)(unit + 0x94 * 2);
    result = GetClassFromDjinn(v, unit + 0xf8);
    *(unsigned char *)(unit + 0x129) = result;
    Func_8078bf0(arg0);
    InitEnemyElemStats(arg0, unit + 0x24);
}

INCLUDE_ASM("asm/rpg/summon/Func_8079b24.s");
