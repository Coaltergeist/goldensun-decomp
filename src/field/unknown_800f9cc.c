/* field/unknown_800f9cc.c */
#include "nonmatching.h"

extern void Func_801161c();
extern unsigned char Data_97b8[];
extern int *iwram_3001e70;
extern void Func_8010230(unsigned int a, unsigned int b);
extern void UpdateFieldScreen(void);
#include "gba/io.h"
#include "dma.h"
extern unsigned char gBuffer[];
extern unsigned char ewram_2038000[];
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
/* Func_80118a8; halfword 0 at element i (12-byte stride) + 0x22 of the array
 * at *iwram_3001e70__a1. base temp forces the deref early; the separate element
 * pointer keeps base the add accumulator and 0x22 the strh immediate; tarpman
 * var forces `movs` for the stored 0. */
extern unsigned char *iwram_3001e70__a2 __asm__("iwram_3001e70");
/* Func_80118c0; twin of Func_80118a8 but stores 1 (`movs r3,#1`). */
extern unsigned char *iwram_3001e70__a3 __asm__("iwram_3001e70");
extern unsigned char iwram_3001e70__a4[] __asm__("iwram_3001e70");
extern void Func_80042c8(void *);
extern unsigned char iwram_3001e70__a5[] __asm__("iwram_3001e70");
extern void Func_80119cc(void);
extern void StopTask();
extern void gfree();
extern void Func_8011bf4();
extern int StartTask(void *task, int priority);
/* FF: int HeightTile_0(char * param_1) */
extern unsigned char gScript_080133fc[] __asm__("gScript_080133fc");
/* FF: int HeightTile_E(char * param_1) */
/* FF: int HeightTile_F(char * param_1) */
extern unsigned int Func_8012204(unsigned int);
extern unsigned char iwram_3001e70__a6[] __asm__("iwram_3001e70");

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

INCLUDE_ASM("asm/field/unknown_800f9cc/DecodeMetatileset.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_800fa8c.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/UnpackTilemap.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/LoadMapData.s");

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

INCLUDE_ASM("asm/field/unknown_800f9cc/UpdateScreenEdge_V.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/UpdateScreenEdge_H.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/UpdateFieldScreen.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8010230.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/CopyMapTiles.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8010560.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80105d4.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8010704.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8010788.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80108c4.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80108e4.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/InitWorldMap.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8010d48.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8010e14.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8010ff0.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80110e0.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011164.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80111b4.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80113e4.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80114a0.s");

void Func_8011568(void) {
    do { u32 _value = 0x682; REG_BG1CNT = _value; } while (0);
    DMA3_COPY(gBuffer, (void *)0x6006a00, 0x9600);
}

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011590.s");

void Func_801161c(void) {
    do { u32 _value = 0x501; REG_BG1CNT = _value; } while (0);
    DMA3_COPY(ewram_2038000, (void *)0x6008000, 0x8000);
}

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011644.s");

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

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_801179c.s");

void Func_80118a8(int i) {
    unsigned char *base = iwram_3001e70__a2;
    unsigned char *p = base + i * 12;
    unsigned short v = 0;
    *(unsigned short *)(p + 0x22) = v;
}

void Func_80118c0(int i) {
    unsigned char *base = iwram_3001e70__a3;
    unsigned char *p = base + i * 12;
    unsigned short v = 1;
    *(unsigned short *)(p + 0x22) = v;
}

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80118d8.s");

void Func_8011984(void) {
    signed char r3;
    r3 = *(signed char *)((char *)*(unsigned int *)iwram_3001e70__a4 + 0xfc);
    if (r3 == 0) {
        Func_80042c8(Func_801179c);
    }
}

void Func_80119a8(void) {
    signed char r3;
    unsigned char *base;

    base = *(unsigned char **)iwram_3001e70__a5;
    r3 = (signed char)*(unsigned char *)(base + 0xfc);
    if (r3 == 0) {
        Func_800439c(Func_801179c);
    }
}

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80119cc.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011a84.s");

void Func_8011ae0(void) {
    Func_80042c8(Func_80119cc);
}

void Func_8011af0(void) {
    Func_800439c(Func_80119cc);
}

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011b00.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011b54.s");

void Func_8011bc8(void) {
    StopTask(Func_8011bf4);
    gfree(0x1c);
}

void Func_8011be0(void) {
    StartTask(Func_8011bf4, 200 << 4);
}

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011bf4.s");

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

INCLUDE_ASM("asm/field/unknown_800f9cc/HeightTile_3.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/HeightTile_4.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/HeightTile_5.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/HeightTile_6.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/HeightTile_7.s");

int HeightTile_8(unsigned char *param_1, unsigned int param_2)
{
    int v;
    if (param_2 <= 7)
        v = *(signed char *)param_1;
    else
        v = *(signed char *)(param_1 + 1);
    return v << 19;
}

int HeightTile_9(signed char *param_1, int param_2, unsigned int param_3)
{
    int v;

    if (param_3 <= 7)
        v = param_1[0];
    else
        v = param_1[1];
    return v << 19;
}

INCLUDE_ASM("asm/field/unknown_800f9cc/HeightTile_A.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/HeightTile_B.s");

int HeightTile_C(int param_1, int param_2, int param_3)
{
    return *(signed char *)(param_1 + gScript_080133fc[param_2 + (param_3 << 4)]) << 19;
}

int HeightTile_D(int param_1, int param_2, int param_3)
{
    return ((signed char *)param_1)[gScript_080133fc[(param_3 << 4) - param_2 + 15]] << 19;
}

unsigned int HeightTile_E(unsigned int arg0) {
    return ((*(unsigned char *)arg0 << 24) >> 24) << 19;
}

unsigned int HeightTile_F(unsigned char *arg0) {
    unsigned char value = *arg0;
    return (value << 24) >> 24 << 19;
}

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011f54.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8011fd8.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8012038.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8012078.s");

unsigned int Func_80120b4(int x, int y)
{
    unsigned char *p;
    int idx;

    idx = (x / 16) + ((y / 16) << 7);
    p = gBuffer + (idx << 2);
    return (unsigned int)p[1] >> 6;
}

INCLUDE_ASM("asm/field/unknown_800f9cc/TestCollision.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_801219c.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8012204.s");

unsigned int Func_80122ac(unsigned int arg0, unsigned int arg1)
{
	unsigned int r0;

	r0 = Func_8012204(arg1);
	if (r0 - 5 <= 7) {
		return 0;
	}
	return -1;
}

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80122c8.s");

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

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8012350.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_8012388.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/Func_80123f4.s");

INCLUDE_ASM("asm/field/unknown_800f9cc/rodata.s");
