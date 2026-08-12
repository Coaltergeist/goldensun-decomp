// fakematch
/* save.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned int Func_8005b24();

INCLUDE_ASM("asm/save/rom_56cc_a_a_a.s");

extern unsigned short (*ewram_2004c14)(unsigned short);

unsigned short Func_8005904(unsigned short arg)
{
    return ewram_2004c14(arg);
}

INCLUDE_ASM("asm/save/rom_56cc_a_a_c_a.s");

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

INCLUDE_ASM("asm/save/rom_56cc_a_c.s");

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

INCLUDE_ASM("asm/save/rom_56cc_c_c.s");

extern void SetIntrHandler(int intr, unsigned int dispstat, void *vector);
extern int  gfree(int index);

int Func_8005cf8(void)
{
    SetIntrHandler(5, 0, 0);
    return gfree(0x33);
}

INCLUDE_ASM("asm/save/rom_5cf8_a_a_a_a_c.s");

extern unsigned char ewram_2002240;

void Func_8005e70(void) {
    unsigned char *p = &ewram_2002240;
    if (p[0]) {
        p[8] = 1;
    }
}

extern unsigned char ewram_2002240__a1[] __asm__("ewram_2002240");

void Func_8005e88(void)
{
    *(volatile unsigned short *)0x4000208 = 0;
    *(volatile unsigned short *)0x4000200 &= 0xff3f;
    *(volatile unsigned short *)0x4000208 = 1;
    *(volatile unsigned short *)0x4000128 = 0x2003;
    *(volatile unsigned int *)0x400010c = 0xc963;
    *(volatile unsigned short *)0x4000202 = 0xc0;
    ewram_2002240__a1[8] = 0;
}

INCLUDE_ASM("asm/save/rom_5cf8_a_a_a_c_c.s");

extern volatile unsigned short iwram_3001cb0;

void Func_8006358(void)
{
    iwram_3001cb0 = 0;
    SetIntrHandler(7, 0, (void *)0);
    SetIntrHandler(6, 0, (void *)0);
}

INCLUDE_ASM("asm/save/rom_5cf8_a_a_c_a.s");

extern void WaitFrames(unsigned int nframes);
extern unsigned int ewram_2002080;
extern unsigned int ewram_20023ac;

void Func_8006458(void)
{
    unsigned int count;
    count = 0;
    if (ewram_2002080 != 0) {
        do {
            WaitFrames(1);
            count++;
            if (count > 0x927bf)
                break;
        } while (ewram_2002080 != 0);
    }
}
void Func_8006488(void)
{
    unsigned int count;
    count = 0;
    if (ewram_20023ac != 0) {
        do {
            WaitFrames(1);
            count++;
            if (count > 0x927bf)
                break;
        } while (ewram_20023ac != 0);
    }
}

INCLUDE_ASM("asm/save/rom_5cf8_a_a_c_c.s");


unsigned int Func_80064f4(void)
{
    unsigned int result;

    result = 0;
    if (ewram_2002080 != 0)
        result = 1;
    if (ewram_20023ac != 0)
        result |= 2;
    return result;
}

#include "dma.h"
#include "gba/io.h"
extern unsigned char  ewram_2002220[];
extern unsigned short ewram_2002008;
extern unsigned short ewram_2002238;

void Func_800651c(void)
{
    register unsigned char *p __asm__("r1") = ewram_2002220;
    register volatile unsigned short *ime __asm__("r0") =
        (volatile unsigned short *)REG_ADDR_IME;
    register u32 imeBackup __asm__("r4");
    register u32 zero __asm__("r2");

    __asm__ volatile ("" : : "r" (p));
    __asm__ volatile ("" : : "r" (ime));
    imeBackup = *ime;
    __asm__ volatile ("" : : "r" (imeBackup));
    *ime = (u32)ime;
    zero = 0;
    __asm__ volatile ("" : : "r" (zero));
    p[1] = 0x80;
    ewram_2002080 = zero;
    ewram_2002008 = zero;
    ewram_20023ac = zero;
    p[3] = zero;
    p[2] = zero;
    ewram_2002238 = zero;
    *ime = imeBackup;
}

INCLUDE_ASM("asm/save/rom_5cf8_a_c_c.s");

void Func_8006798(void) {}

INCLUDE_ASM("asm/save/rom_5cf8_c.s");
