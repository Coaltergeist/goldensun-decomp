/* field/map_data.c -- consolidated TU. */
#include "nonmatching.h"

extern void Func_801161c();

extern unsigned char Data_97b8[];

void Func_800f9cc(unsigned char *p, int count)
{
    unsigned char *table = Data_97b8;
    int n = count - 1;

    if (n != -1) {
        do {
            *p = table[*p];
            n--;
            p++;
        } while (n != -1);
    }
}

INCLUDE_ASM("asm/field/map_data/rom_f9cc_a_c.s");

extern int *iwram_3001e70;
extern void Func_8010230(unsigned int a, unsigned int b);
extern void UpdateFieldScreen(void);

void Func_800fe9c(void)
{
    int *p;
    unsigned int a;
    unsigned int b;
    unsigned int c;

    p = (int *)*((int *)iwram_3001e70);
    a = 0;
    c = 0;
    b = 0;
    if (p != (int *)0) {
        a = *p++;
        c = *p++;
        b = *p;
    }
    Func_8010230(a, b - c);
    UpdateFieldScreen();
}

INCLUDE_ASM("asm/field/map_data/rom_f9cc_c.s");

INCLUDE_ASM("asm/field/map_data/rom_10424.s");

INCLUDE_ASM("asm/field/map_data/rom_108e4.s");

#include "gba/io.h"
#include "dma.h"
extern unsigned char gBuffer[];

void Func_8011568(void) {
    do { u32 _value = 0x682; REG_BG1CNT = _value; } while (0);
    DMA3_COPY(gBuffer, (void *)0x6006a00, 0x9600);
}

INCLUDE_ASM("asm/field/map_data/rom_11568_a_c_a.s");

#include "gba/io.h"
#include "dma.h"
extern unsigned char ewram_2038000[];

void Func_801161c(void) {
    do { u32 _value = 0x501; REG_BG1CNT = _value; } while (0);
    DMA3_COPY(ewram_2038000, (void *)0x6008000, 0x8000);
}

INCLUDE_ASM("asm/field/map_data/rom_11568_a_c_c_a.s");

extern unsigned char *iwram_3001e70__a1 __asm__("iwram_3001e70");
extern void (*iwram_3001cfc)(void);
extern void Func_80113e4(void);
extern void Func_801179c(void);
extern void Func_800439c(void *func);
extern void WaitFrames(unsigned int nframes);
extern void *GetFile(int index);
extern void DecompressLZ(void *src, void *dst);
extern unsigned char gBuffer__a1[65536] __asm__("gBuffer");
extern int _FILE_d5;
typedef struct {
unsigned char pad[0x100];
unsigned short f100;
unsigned short f102;
} FieldState;

void Func_801173c(void)
{
    FieldState *base;

    base = (FieldState *)iwram_3001e70__a1;
    iwram_3001cfc = Func_801161c;
    base->f100 = 0;
    base->f102 = 0x9f;
    WaitFrames(1);
    DecompressLZ(GetFile((int)&_FILE_d5), gBuffer__a1);
    Func_80113e4();
    Func_800439c(Func_801179c);
    WaitFrames(1);
}

INCLUDE_ASM("asm/field/map_data/rom_11568_a_c_c_c.s");

/* Func_80118a8; halfword 0 at element i (12-byte stride) + 0x22 of the array
 * at *iwram_3001e70__a1. base temp forces the deref early; the separate element
 * pointer keeps base the add accumulator and 0x22 the strh immediate; tarpman
 * var forces `movs` for the stored 0. */
extern unsigned char *iwram_3001e70__a2 __asm__("iwram_3001e70");

void Func_80118a8(int i) {
    unsigned char *base = iwram_3001e70__a2;
    unsigned char *p = base + i * 12;
    unsigned short v = 0;
    *(unsigned short *)(p + 0x22) = v;
}

/* Func_80118c0; twin of Func_80118a8 but stores 1 (`movs r3,#1`). */
extern unsigned char *iwram_3001e70__a3 __asm__("iwram_3001e70");

void Func_80118c0(int i) {
    unsigned char *base = iwram_3001e70__a3;
    unsigned char *p = base + i * 12;
    unsigned short v = 1;
    *(unsigned short *)(p + 0x22) = v;
}

INCLUDE_ASM("asm/field/map_data/rom_11568_c_c_a_a.s");

extern unsigned char iwram_3001e70__a4[] __asm__("iwram_3001e70");
extern void Func_80042c8(void *);

void Func_8011984(void) {
    signed char r3;
    r3 = *(signed char *)((char *)*(unsigned int *)iwram_3001e70__a4 + 0xfc);
    if (r3 == 0) {
        Func_80042c8(Func_801179c);
    }
}

extern unsigned char iwram_3001e70__a5[] __asm__("iwram_3001e70");

void Func_80119a8(void) {
    signed char r3;
    unsigned char *base;

    base = *(unsigned char **)iwram_3001e70__a5;
    r3 = (signed char)*(unsigned char *)(base + 0xfc);
    if (r3 == 0) {
        Func_800439c(Func_801179c);
    }
}

INCLUDE_ASM("asm/field/map_data/rom_11568_c_c_a_c_c.s");

extern void Func_80119cc(void);

void Func_8011ae0(void) {
    Func_80042c8(Func_80119cc);
}


void Func_8011af0(void) {
    Func_800439c(Func_80119cc);
}

INCLUDE_ASM("asm/field/map_data/rom_11568_c_c_c_c_a_a.s");

extern void StopTask();
extern void gfree();
extern void Func_8011bf4();

void Func_8011bc8(void) {
    StopTask(Func_8011bf4);
    gfree(0x1c);
}

extern int StartTask(void *task, int priority);

void Func_8011be0(void) {
    StartTask(Func_8011bf4, 200 << 4);
}

INCLUDE_ASM("asm/field/map_data/rom_11568_c_c_c_c_c.s");

/* FF: int HeightTile_0(char * param_1) */
unsigned int HeightTile_0(unsigned char *arg0) {
    return (*arg0 << 24) >> 24 << 19;
}

int HeightTile_1(signed char *param_1, int param_2)
{
    int a;
    int b;

    a = param_1[0] << 19;
    b = param_1[1] << 19;
    return a + ((b - a) * param_2) / 16;
}
int HeightTile_2(signed char *param_1, int param_2, int param_3) {
    int a;
    int b;

    a = (int)param_1[0] << 19;
    b = (int)param_1[1] << 19;
    return a + ((b - a) * param_3) / 16;
}

INCLUDE_ASM("asm/field/map_data/rom_11ce0_a_c_c_a_a.s");

int HeightTile_8(unsigned char *param_1, unsigned int param_2)
{
    int v;
    if (param_2 <= 7)
        v = *(signed char *)param_1;
    else
        v = *(signed char *)(param_1 + 1);
    return v << 19;
}

/* HeightTile_9 @ 0x08011e6c  (was Func_8011e6c; renamed by the weekend alias pass)
 * [asm/rom_9000/rom_11ce0_a_c_c_a_c.s]
 *
 * cmp r2,#7; bhi +0xe -> ROM falls through (r2<=7) to param_1[0], branches
 * (r2>7) to param_1[1]. The `if (param_3 > 7) [1] else [0]` form compiled to the
 * MIRROR branch (bls, param_1[1] in fall-through). Writing the <=7 case as the
 * then-branch puts param_1[0] in fall-through and yields `bhi` to the [1] block.
 * param_2 unused but must exist so param_3 lands in r2.
 */
int HeightTile_9(signed char *param_1, int param_2, unsigned int param_3)
{
    int v;

    if (param_3 <= 7)
        v = param_1[0];
    else
        v = param_1[1];
    return v << 19;
}

INCLUDE_ASM("asm/field/map_data/rom_11ce0_a_c_c_a_c_c.s");

extern unsigned char L133fc[] __asm__(".L133fc");

int HeightTile_C(int param_1, int param_2, int param_3)
{
    return *(signed char *)(param_1 + L133fc[param_2 + (param_3 << 4)]) << 19;
}


int HeightTile_D(int param_1, int param_2, int param_3)
{
    return ((signed char *)param_1)[L133fc[(param_3 << 4) - param_2 + 15]] << 19;
}

/* FF: int HeightTile_E(char * param_1) */
unsigned int HeightTile_E(unsigned int arg0) {
    return ((*(unsigned char *)arg0 << 24) >> 24) << 19;
}
/* FF: int HeightTile_F(char * param_1) */
unsigned int HeightTile_F(unsigned char *arg0) {
    unsigned char value = *arg0;
    return (value << 24) >> 24 << 19;
}

INCLUDE_ASM("asm/field/map_data/rom_11ce0_c_a.s");


unsigned int Func_80120b4(int x, int y)
{
    unsigned char *p;
    int idx;

    idx = (x / 16) + ((y / 16) << 7);
    p = gBuffer + (idx << 2);
    return (unsigned int)p[1] >> 6;
}

INCLUDE_ASM("asm/field/map_data/rom_11ce0_c_c.s");

INCLUDE_ASM("asm/field/map_data/rom_1219c_a_a.s");

extern unsigned int Func_8012204(unsigned int);

unsigned int Func_80122ac(unsigned int arg0, unsigned int arg1)
{
	unsigned int r0;

	r0 = Func_8012204(arg1);
	if (r0 - 5 <= 7) {
		return 0;
	}
	return -1;
}

INCLUDE_ASM("asm/field/map_data/rom_1219c_a_c_a.s");

extern unsigned char iwram_3001e70__a6[] __asm__("iwram_3001e70");

void Func_8012330(int arg0, int arg1, int arg2)
{
    unsigned int *r3;
    r3 = *(unsigned int **)iwram_3001e70__a6;
    if (arg0 >= 0)
        r3[1] = arg0;
    if (arg1 >= 0)
        r3[2] = arg1;
    if (arg2 >= 0)
        r3[3] = arg2;
}

INCLUDE_ASM("asm/field/map_data/rom_1219c_a_c_c_a.s");

extern void *_GetSpriteInfo(int spriteId);

unsigned int SpriteTest_ChangeVar(int arg0, int arg1)
{
  int r5;
  int r6;
  unsigned char *r0;
  r5 = arg0;
  r6 = arg1;
  L12afe:
  r5 = r5 + r6;

  if (r5 < 0)
  {
    r6++;
    r6--;
    r5 = 0x200;
    goto L12afe;
  }
  if (r5 >= 0x200)
  {
    r5 = -1;
    goto L12afe;
  }
  r0 = (unsigned char *) _GetSpriteInfo(r5);
  if (r0[0] == 0)
  {
    goto L12afe;
  }
  return (unsigned int) r5;
}

INCLUDE_ASM("asm/field/map_data/rom_1219c_a_c_c_c.s");

extern unsigned int iwram_3001e60;

void SpriteTest_SetLayerColorswap(unsigned int layer, unsigned int colorswap) {
    unsigned int base;
    unsigned int off;
    int i;

    base = iwram_3001e60;
    off = ((layer & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        unsigned int e;
        e = *(unsigned int *)((char *)base + off);
        *(unsigned char *)((char *)e + 5) = colorswap;
        base += 0x38;
    }
}
void SpriteTest_SetLayerPriority(int layer, int value) {
    unsigned char **p;
    int idx;
    int i;

    p = (unsigned char **)iwram_3001e60;
    idx = ((layer & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        *(unsigned char *)(*(unsigned char **)((char *)p + idx) + 6) = value;
        p = (unsigned char **)((char *)p + 0x38);
    }
}

INCLUDE_ASM("asm/field/map_data/rom_1219c_c_a.s");

extern unsigned int *iwram_3001e60__a1 __asm__("iwram_3001e60");
extern void InitSpriteLayer(unsigned int layer);

void Func_8012de8(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p;
    int off;
    int i;

    p = (unsigned char *)iwram_3001e60__a1;
    _GetSpriteInfo(arg1);
    off = ((arg0 & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        unsigned short *t = *(unsigned short **)(p + off);
        *t = arg1;
        InitSpriteLayer(*(unsigned int *)(p + off));
        p += 0x38;
    }
}

INCLUDE_ASM("asm/field/map_data/rom_1219c_c_c.s");
