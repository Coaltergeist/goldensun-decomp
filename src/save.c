// fakematch
/* save.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned int Func_8005b24();

INCLUDE_ASM("asm/save/Func_80056cc.s");
INCLUDE_ASM("asm/save/Func_8005810.s");
INCLUDE_ASM("asm/save/Func_8005868.s");
INCLUDE_ASM("asm/save/Func_80058ac.s");

extern unsigned short (*ewram_2004c14)(unsigned short);

unsigned short Func_8005904(unsigned short arg)
{
    return ewram_2004c14(arg);
}

INCLUDE_ASM("asm/save/SomethingSaveHeader.s");
INCLUDE_ASM("asm/save/Func_8005a78.s");

extern unsigned int Func_8005b64(void);

unsigned int Func_8005ac0(void)
{
	unsigned int r3;
	if (Func_8005b24() > 0xf)
		return 1;
	r3 = Func_8005b64();
	return (unsigned int)(-(int)r3 | (int)r3) >> 31;
}

extern unsigned int iwram_3001f1c;

unsigned int Func_8005ae0(void) {
    unsigned char *base;
    unsigned char *p;
    unsigned int sum;
    unsigned int i;

    base = (unsigned char *)iwram_3001f1c;
    sum = 0;
    i = 0;
    p = base + 0x50;
    do {
        sum += p[0];
        sum += p[1];
        sum += p[2];
        sum += p[3];
        sum += p[4];
        sum += p[5];
        sum += p[6];
        sum += p[7];
        i += 8;
        p += 8;
    } while (i <= 0xfe7);
    return sum;
}
unsigned int Func_8005b24(unsigned int arg0)
{
    unsigned char *base;
    unsigned short *hp;
    unsigned int i;
    unsigned int best;
    unsigned int result;

    base = (unsigned char *)iwram_3001f1c;
    hp = (unsigned short *)(base + 0x20);
    best = 0;
    result = 0x10;
    for (i = 0; i <= 0xf; i++) {
        if (base[i] != 0 && arg0 == base[i + 0x10] && best < hp[i]) {
            best = hp[i];
            result = i;
        }
    }
    return result;
}

INCLUDE_ASM("asm/save/Func_8005b64.s");

int Func_8005c08(unsigned char *arg0, unsigned char *arg1, unsigned int arg2)
{
	int diff;
	diff = 0;
	while (arg2 != 0) {
		diff = *arg0 - *arg1;
		if (diff != 0)
			break;
		arg2--;
		arg0++;
		arg1++;
	}
	return diff;
}

extern unsigned char *iwram_3001f1c__a1 __asm__("iwram_3001f1c");

unsigned int Func_8005c2c(unsigned int arg0)
{
    unsigned char *base;
    unsigned short *hp;
    unsigned int max;
    int i;

    base = iwram_3001f1c__a1;
    hp = (unsigned short *)(base + 0x20);
    max = 0;
    for (i = 0; (unsigned int)i <= 0xf; i++) {
        if (base[i] != 0 && arg0 == base[i + 0x10]) {
            if (max < hp[i])
                max = hp[i];
        }
    }
    return max;
}

INCLUDE_ASM("asm/save/Func_8005c68.s");

extern void SetIntrHandler(int intr, unsigned int dispstat, void *vector);
extern int  gfree(int index);

int Func_8005cf8(void)
{
    SetIntrHandler(5, 0, 0);
    return gfree(0x33);
}
