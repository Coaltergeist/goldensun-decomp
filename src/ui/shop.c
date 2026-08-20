// fakematch
/* ui/shop.c -- consolidated TU. */
#include "nonmatching.h"

extern void Func_80b00f4();

INCLUDE_ASM("asm/ui/shop/Func_80b0070.s");

extern unsigned int iwram_3001f2c;
extern void Func_80b08b8(unsigned int x);

void Func_80b00f4(void) {
    Func_80b08b8(iwram_3001f2c + 0x380);
}

INCLUDE_ASM("asm/ui/shop/Func_80b010c.s");

extern unsigned char iwram_3001f2c__a1[] __asm__("iwram_3001f2c");
extern void StopTask(void *task);
extern void _Func_8019a54(void);
extern void Func_8003f3c(unsigned short id);
extern void gfree(int index);

void Func_80b0204(void)
{
    unsigned char *r5 = *(unsigned char **)iwram_3001f2c__a1;

    StopTask(Func_80b00f4);
    _Func_8019a54();
    Func_8003f3c(*(unsigned short *)(r5 + (0xe4 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x392));
    Func_8003f3c(*(unsigned short *)(r5 + (0xe5 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x396));
    Func_8003f3c(*(unsigned short *)(r5 + (0xe6 << 2)));
    Func_8003f3c(*(unsigned short *)(r5 + 0x39a));
    gfree(0x37);
}

INCLUDE_ASM("asm/ui/shop/Func_80b0278.s");
INCLUDE_ASM("asm/ui/shop/Debug_TestEquipAndStatus.s");

extern void WaitFrames(unsigned int nframes);
extern int _Func_80f954c(void);

void Func_80b04c4(void)
{
	while (_Func_80f954c() != 0)
		WaitFrames(1);
}

INCLUDE_ASM("asm/ui/shop/Func_80b04dc.s");
INCLUDE_ASM("asm/ui/shop/Func_80b0574.s");

extern unsigned char iwram_3001f2c__a2[] __asm__("iwram_3001f2c");
extern void _Func_80a17c4(unsigned int);
extern unsigned int _YesNoMenu2(int, int, unsigned int);

unsigned int Func_80b0634(unsigned int arg0)
{
  unsigned char *r5;
  unsigned char r6;
  unsigned int r7;
  r5 = (unsigned char *) ((*((unsigned int *) iwram_3001f2c__a2)) + 0x380);
  r7 = arg0;
  arg0++;
  arg0--;
  r6 = *((unsigned char *) ((*((unsigned int *) r5)) + 5));
  _Func_80a17c4(*((unsigned int *) r5));
  r7 = _YesNoMenu2(7, 5, r7);
  *((unsigned char *) ((*((unsigned int *) r5)) + 5)) = r6;
  return r7;
}

extern unsigned char iwram_3001f2c__a3[] __asm__("iwram_3001f2c");

unsigned int Func_80b0664(unsigned int arg0)
{
  unsigned char *r5;
  unsigned char r6;
  unsigned int r7;
  r5 = (unsigned char *) ((*((unsigned int *) iwram_3001f2c__a3)) + 0x380);
  r7 = arg0;
  arg0++;
  arg0--;
  r6 = *((unsigned char *) ((*((unsigned int *) r5)) + 5));
  _Func_80a17c4(*((unsigned int *) r5));
  r7 = _YesNoMenu2(7, 7, r7);
  *((unsigned char *) ((*((unsigned int *) r5)) + 5)) = r6;
  return r7;
}

INCLUDE_ASM("asm/ui/shop/Func_80b0694.s");
INCLUDE_ASM("asm/ui/shop/Func_80b06c0.s");
INCLUDE_ASM("asm/ui/shop/Func_80b06ec.s");
INCLUDE_ASM("asm/ui/shop/Func_80b0744.s");
INCLUDE_ASM("asm/ui/shop/Func_80b0840.s");

extern unsigned int iwram_3001ebc;

void Func_80b0894(void) {
    unsigned int r0;
    unsigned int r3;

    r3 = (unsigned int)&iwram_3001ebc;
    r0 = *(unsigned int *)r3;
    r3 = 0x236;
    r0 += r3;
    _Func_8091200(r0, 1);
    _Func_8091254(0x10);
}

INCLUDE_ASM("asm/ui/shop/Func_80b08b8.s");
INCLUDE_ASM("asm/ui/shop/Func_80b0958.s");
INCLUDE_ASM("asm/ui/shop/Func_80b09fc.s");
INCLUDE_ASM("asm/ui/shop/Func_80b0a20.s");

extern unsigned char iwram_3001f2c__a3[];   /* @ 0x03001F2C */
extern void Func_80b09fc(void *arg0, unsigned int arg1, unsigned int arg2, int arg3);

void Func_80b0a6c(void *arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *base = *(unsigned char **)iwram_3001f2c__a3;

    if (arg0 != 0) {
        arg1 = arg1 + (*(unsigned short *)((char *)arg0 + 0xc) << 3) + 8;
        arg2 = arg2 + (*(unsigned short *)((char *)arg0 + 0xe) << 3) + 8;
    }
    Func_80b09fc(base + 0x380, arg1, arg2, *(signed char *)(base + 0x3a8));
}

INCLUDE_ASM("asm/ui/shop/Func_80b0aac.s");
INCLUDE_ASM("asm/ui/shop/Func_80b0fa4.s");
INCLUDE_ASM("asm/ui/shop/Func_80b10cc.s");
INCLUDE_ASM("asm/ui/shop/Func_80b110c.s");

extern void _Func_8016498(void);
extern void _Func_801e7c0(unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80b11a4(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    r6 = arg1;
    if (r5 != 0) {
        _Func_8016498();
        _Func_801e7c0(r6, r5, 0, 0);
    }
}

INCLUDE_ASM("asm/ui/shop/Func_80b11c4.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1260.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1470.s");
INCLUDE_ASM("asm/ui/shop/Func_80b153c.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1614.s");
INCLUDE_ASM("asm/ui/shop/Func_80b17e4.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1868.s");
INCLUDE_ASM("asm/ui/shop/Func_80b196c.s");
INCLUDE_ASM("asm/ui/shop/Func_80b19cc.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1a14.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1bd0.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1dec.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1e80.s");
INCLUDE_ASM("asm/ui/shop/Func_80b1f4c.s");

extern short *_GetItemInfo(unsigned int arg);

unsigned int Func_80b20e8(unsigned int arg0)
{
    short *p;
    int v;

    p = _GetItemInfo(arg0);
    v = p[0] / 4;
    if ((arg0 & (0x80 << 3)) == 0)
        v = 0;
    return v;
}

extern void Func_80b1a14(void);

unsigned int Func_80b2110(void) {
    Func_80b1a14();
    return 0;
}

INCLUDE_ASM("asm/ui/shop/Func_80b211c.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2328.s");
INCLUDE_ASM("asm/ui/shop/Func_80b24e4.s");

int NumShops(void) { return 0x23; }

INCLUDE_ASM("asm/ui/shop/Func_80b26cc.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2720.s");

extern short Lb41ac[] __asm__(".Lb41ac");

short Func_80b2764(unsigned int arg0)
{
    return Lb41ac[arg0 * 33 + 32];
}

extern unsigned char *_GetUnit();

unsigned int Func_80b2778(unsigned int arg0, unsigned int arg1)
{
	unsigned char *p;
	unsigned char v;
	unsigned int result;

	p = _GetUnit();
	v = p[15];
	result = 0;
	if (arg1 == 0)
		result = (v * 5) << 2;
	else if (arg1 == 1)
		result = 10;
	else if (arg1 == 2)
		result = 50;
	else if (arg1 == 3)
		result = (v * 5) << 1;
	return result;
}


unsigned int Func_80b27b0(unsigned int arg0, unsigned int arg1)
{
	unsigned char *unit;
	unsigned int result;

	unit = _GetUnit(arg0);
	result = 0;
	if ((((arg1 == 0 && (*(short *)(unit + 0x38) <= 0)) ||
	      (arg1 == 1 && (*(signed char *)(unit + 0x131) != 0))) ||
	     (arg1 == 2 && (*(unsigned char *)(unit + 0x140) != 0))) ||
	    (arg1 == 3 && (*(signed char *)(unit + 0x130) != 0)))
	{
		result = 1;
	}
	return result;
}

INCLUDE_ASM("asm/ui/shop/Func_80b280c.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2884.s");

extern unsigned char iwram_3001f2c__a4[] __asm__("iwram_3001f2c");
extern unsigned int _GetSpriteVoice(unsigned short id);
extern unsigned int Func_80b2884(unsigned int arg0);
extern void _Func_8017658(unsigned int a, int b, int c, unsigned int d);
extern int _Func_8017364(void);

void Func_80b28d4(unsigned int arg0)
{
    unsigned char *r5 = *(unsigned char **)iwram_3001f2c__a4;
    unsigned int voice;

    voice = _GetSpriteVoice(*(unsigned short *)(r5 + (0xe9 << 2)));
    _Func_8019a54();
    arg0 = Func_80b2884(arg0);
    _Func_8017658(arg0, 5, 0, (voice << 16) | 0x22);
    while (!_Func_8017364()) {
        WaitFrames(1);
    }
    WaitFrames(1);
}

INCLUDE_ASM("asm/ui/shop/Func_80b2928.s");
INCLUDE_ASM("asm/ui/shop/UI_Sanctum.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2b10.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2da8.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2e30.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2ed8.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2f4c.s");
INCLUDE_ASM("asm/ui/shop/Func_80b2ffc.s");
INCLUDE_ASM("asm/ui/shop/Func_80b3050.s");

extern unsigned char iwram_3001f2c__a5[] __asm__("iwram_3001f2c");
extern signed char Lb4ab6[] __asm__(".Lb4ab6");

int Func_80b3210(int param)
{
  unsigned char *r6;
  signed char r10;
  signed char *new_var;
  signed char max;
  int count;
  int new_var2;
  int r7;
  int r5;
  unsigned char *r8;
  int unit;
  int field;
  r6 = *((unsigned char **) iwram_3001f2c__a5);
  new_var = Lb4ab6;
  r10 = new_var[param];
  new_var2 = (int) r10;
  max = *((signed char *) (r6 + 0x3a7));
  count = 0;
  r7 = 0;
  if (count >= ((int) max))
  {
    goto done;
  }
  r8 = r6 + 2;
  r5 = 0xdb << 2;
  do
  {
    unit = *((short *) (r8 + r5));
    unit = _GetUnit(unit);
    field = *((short *) (((char *) unit) + 0x38));
    if (field != 0)
    {
      count++;
    }
    max = *((signed char *) (r6 + 0x3a7));
    r7++;
    r5 += 2;
  }
  while (r7 < ((int) max));
  done:
  return new_var2 * count;

}

INCLUDE_ASM("asm/ui/shop/Func_80b3284.s");
INCLUDE_ASM("asm/ui/shop/InnHeal.s");
INCLUDE_ASM("asm/ui/shop/UI_SellMenu.s");
INCLUDE_ASM("asm/ui/shop/Func_80b362c.s");
INCLUDE_ASM("asm/ui/shop/Func_80b386c.s");
