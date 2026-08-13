/* field/unknown_8096c24.c */
#include "nonmatching.h"

extern unsigned char gSpriteAllocTable[512];
extern unsigned int Func_8003f3c(unsigned int);

unsigned int Func_8096c24(void)
{
    unsigned char *p;
    unsigned int count;
    int i;

    p = gSpriteAllocTable;
    count = 0;
    for (i = 0x200; i != 0; i--) {
        unsigned char v = *p;
        p++;
        if (v == 0xff)
            count++;
    }
    return count;
}

unsigned int Func_8096c48(unsigned int arg0, unsigned int arg1)
{
	unsigned char *p5 = (unsigned char *)arg0;
	unsigned char *p6 = (unsigned char *)arg1;

	if (!arg0)
		return 0;

	if (!arg1) {
		p5[0x1d] |= 1;
	} else {
		Func_8003f3c(p5[0x1c]);
		p5[0x1c] = p6[0x1c];
		p5[0x1d] |= 1;
		p5 = p6;
	}

	return (unsigned int)p5;
}

INCLUDE_ASM("asm/field/unknown_8096c24/CreateParticleActor.s");

INCLUDE_ASM("asm/field/unknown_8096c24/rodata.s");
