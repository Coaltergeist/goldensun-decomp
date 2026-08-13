/* field/weather.c */
#include "nonmatching.h"

extern void Func_8094544(void);
extern void Func_80944ec();
extern void *galloc_ewram(int index, unsigned int size);
extern unsigned int iwram_3001f30;
extern void Func_809b804(unsigned char *p);

INCLUDE_ASM("asm/field/weather/Func_8094544.s");

INCLUDE_ASM("asm/field/weather/Func_8094730.s");

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

INCLUDE_ASM("asm/field/weather/Task_Rain.s");

INCLUDE_ASM("asm/field/weather/Task_Thunder.s");

INCLUDE_ASM("asm/field/weather/StartRain.s");

INCLUDE_ASM("asm/field/weather/Task_Snow.s");

INCLUDE_ASM("asm/field/weather/StartSnow.s");

INCLUDE_ASM("asm/field/weather/Task_Earthquake.s");

INCLUDE_ASM("asm/field/weather/StartEarthquake.s");

INCLUDE_ASM("asm/field/weather/StartThunder.s");

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

INCLUDE_ASM("asm/field/weather/StartThunder2.s");

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

INCLUDE_ASM("asm/field/weather/Func_809537c.s");

INCLUDE_ASM("asm/field/weather/Func_80955b0.s");

INCLUDE_ASM("asm/field/weather/Func_8095680.s");

INCLUDE_ASM("asm/field/weather/Func_8095778.s");

void Func_8095884(void) {
    unsigned char *p;
    int i;

    p = (unsigned char *)(iwram_3001f30 + 0x58);
    for (i = 0x17; i >= 0; i--) {
        Func_809b804(p);
        p += 0x48;
    }
}

INCLUDE_ASM("asm/field/weather/Func_80958a8.s");

INCLUDE_ASM("asm/field/weather/Func_80958e4.s");

void Func_809592c(unsigned int arg0) {
    unsigned short val;
    val = *((unsigned short *)((char *)arg0 + 6));
    val += 0x2000;
    *((unsigned short *)((char *)arg0 + 6)) = val;
}
