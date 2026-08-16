// fakematch
/* field/weather.c -- consolidated TU. */
#include "nonmatching.h"

extern void Func_80944ec();

extern unsigned char iwram_3001ed8[];

void Func_80944ec(void)
{
  unsigned int ptr;
  volatile unsigned int *new_var2;
  unsigned char idx;
  unsigned int off;
  unsigned int src;
  volatile unsigned short *dmareg;
  unsigned short r4;
  volatile unsigned int *bgofs;
  unsigned int v;
  unsigned int new_var;
  ptr = *((unsigned int *) iwram_3001ed8);
  idx = *((unsigned char *) (ptr + (0xf0 << 4)));
  new_var = ((unsigned int) idx) << 4;
  off = new_var - idx;
  off <<= 7;
  new_var2 = (volatile unsigned int *) 0x04000014;
  src = ptr + off;
  dmareg = (volatile unsigned short *) 0x040000b0;
  {
    unsigned int m1 = 0xc5ff;
    r4 = dmareg[5];
    dmareg[5] = m1 & r4;
  }
  {
    unsigned int m2 = 0x7fff;
    r4 = dmareg[5];
    dmareg[5] = m2 & r4;
  }
  bgofs = new_var2;
  {
    unsigned short scratch = dmareg[5];
    v = *((unsigned int *) src);
    src += 4;
    bgofs[0] = v;
    v = *((unsigned int *) src);
    src += 4;
    bgofs[0] = v;
    v = *((unsigned int *) src);
    src += 4;
    bgofs[0] = v;
    (void) scratch;
  }
  {
    register unsigned int s asm("r0") = src;
    register unsigned int d asm("r1") = (unsigned int) bgofs;
    register unsigned int c asm("r2") = 0xa6600003;
    register volatile unsigned short *p asm("r3") = dmareg;
    asm volatile("stmia %0!, {%1, %2, %3}\n\tsub %0, #0xc" : "+r"(p) : "r"(s), "r"(d), "r"(c) : "memory");
  }
}

INCLUDE_ASM("asm/field/weather/rom_944ec_a_a_a_a_c_a.s");

extern void Func_8094544(void);

void Func_80947e4(void)
{
  char *new_var;
  unsigned int *r2;
  unsigned short r3;
  unsigned short r1;
  StopTask(Func_80944ec);
  StopTask(Func_8094544);
  r2 = (unsigned int *) 0x040000b0;
  r3 = 0xc5ff;
  r1 = *((volatile unsigned short *) (((char *) r2) + 0xa));
  *((volatile unsigned short *) (((char *) r2) + 0xa)) = (r3 &= r1);
  r3 = 0x7fff;
  r2++;
  r2--;
  r1 = *((volatile unsigned short *) (((char *) r2) + 0xa));
  new_var = (char *) r2;
  r3 &= r1;
  *((volatile unsigned short *) (((char *) r2) + 0xa)) = r3;
  r3 = *((volatile unsigned short *) (new_var + 0xa));
}

INCLUDE_ASM("asm/field/weather/rom_944ec_a_a_a_a_c_c.s");

extern void *galloc_ewram(int index, unsigned int size);

void Func_8095214(void)
{
  unsigned char *base = (unsigned char *)galloc_ewram(0x1e, 0x1f88);
  unsigned short *r2 = (unsigned short *)(base + (0xfc << 5));
  unsigned short v = 0x7fff;
  unsigned short z = 0;
  *r2 = v;
  *((unsigned short *)(base + 0x1f82)) = z;
}


void Func_8095240(void)
{
  int new_var;
  unsigned char *base = (unsigned char *)galloc_ewram(0x1e, 0x1f88);
  int new_var2;
  unsigned short *r2 = (unsigned short *)(base + ((0xfc << 1) << 4));
  new_var = 0;
  new_var2 = 0xc;
  *r2 = new_var2;
  *((unsigned short *)(base + 0x1f82)) = new_var;
}


void Func_8095268(void)
{
  int v80;
  int v1;
  unsigned char *new_var;
  unsigned char *base = (unsigned char *) galloc_ewram(0x1e, 0x1f88);
  unsigned short *r2 = (unsigned short *) (base + ((0xfc << 1) << 4));
  v80 = 0x80;
  *r2 = v80;
  new_var = base + 0x1f82;
  v1 = 1;
  *((unsigned short *) new_var) = v1;
}

INCLUDE_ASM("asm/field/weather/rom_944ec_a_a_c_c_a.s");

void Func_8095348(int *p)
{
  int new_var;
  int *r4 = *((int **) (((char *) p) + 0x68));
  int v;
  v = *((int *) (((char *) p) + 8));
  v += ((*((int *) (((char *) r4) + 8))) - v) / 2;
  *((int *) (((char *) p) + 8)) = v;
  new_var = *((int *) (((char *) p) + 0xc));
  v = new_var;
  v += ((*((int *) (((char *) r4) + 0xc))) - v) / 2;
  *((int *) (((char *) p) + 0xc)) = v;
  v = *((int *) (((char *) p) + 0x10));
  v = v + (((*((int *) (((char *) r4) + 0x10))) - v) / 2);
  *((int *) (((char *) p) + 0x10)) = v;
}

INCLUDE_ASM("asm/field/weather/rom_944ec_a_a_c_c_c.s");

extern unsigned int iwram_3001f30;
extern void Func_809b804(unsigned char *p);

void Func_8095884(void) {
    unsigned char *p;
    int i;

    p = (unsigned char *)(iwram_3001f30 + 0x58);
    for (i = 0x17; i >= 0; i--) {
        Func_809b804(p);
        p += 0x48;
    }
}

INCLUDE_ASM("asm/field/weather/rom_944ec_a_c_a_a_a.s");

void Func_809592c(unsigned int arg0) {
    unsigned short val;
    val = *((unsigned short *)((char *)arg0 + 6));
    val += 0x2000;
    *((unsigned short *)((char *)arg0 + 6)) = val;
}

SECTION(".text.weather_2");


extern void FieldMove_NoTarget(void);
extern void FieldMove_Target(void);
extern void Func_8096ab0(void);
extern void Func_8096af0(void);

void FieldMove(int param_1)
{
	if (param_1 == 0)
		FieldMove_NoTarget();
	else if (param_1 == 1)
		FieldMove_Target();
	else if (param_1 == 2)
		Func_8096ab0();
	else if (param_1 == 3)
		Func_8096af0();
}

INCLUDE_ASM_SECTION("asm/field/weather/rom_944ec_a_c_c_a_a.s", ".text.weather_2");

extern void CutsceneStart(void);
extern void MessageID(unsigned int stringID);
extern void ActorMessage(unsigned int actor, unsigned int arg1);
extern void CutsceneEnd(void);
extern int _call_via_r3(void);
extern int _GetFlag(unsigned int flag);
extern void _Func_801776c(unsigned int, unsigned int);

int Func_8096b28(int *arg0, int arg1, int arg2)
{
    int (*f)(int, int);

    if (arg0 != 0) {
        if (arg0[2] != 0) {
            if (arg0[2] < 0x10000) {
                CutsceneStart();
                MessageID(arg0[2]);
                ActorMessage(arg2, 0);
                CutsceneEnd();
            } else {
                f = (int (*)(int, int)) arg0[2];
                f(arg1, arg2);
            }
        }
        if (_GetFlag(0x142)) {
            CutsceneStart();
            _Func_801776c(0x927, 1);
            CutsceneEnd();
        }
    }
    return 0;
}

INCLUDE_ASM_SECTION("asm/field/weather/rom_944ec_a_c_c_a_c.s", ".text.weather_2");

extern int vec3_translate();
extern int _Actor_TravelTo();

void Func_8096bec(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int v[3];

    if (arg0 != 0) {
        v[0] = *(unsigned int *)((char *)arg0 + 8);
        v[1] = *(unsigned int *)((char *)arg0 + 0xc);
        v[2] = *(unsigned int *)((char *)arg0 + 0x10);
        vec3_translate(arg1, arg2, v);
        _Actor_TravelTo(arg0, v[0], v[1], v[2]);
    }
}

extern unsigned char gSpriteAllocTable[512];

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

extern unsigned int Func_8003f3c(unsigned int);

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

INCLUDE_ASM_SECTION("asm/field/weather/rom_944ec_c_c.s", ".text.weather_2");
