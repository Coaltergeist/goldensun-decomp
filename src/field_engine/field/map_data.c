#include "nonmatching.h"

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
/* Func_80118a8: clears the halfword at +0x22 of element i (12-byte stride) of
 * the array at *iwram_3001e70__a1. */
extern unsigned char *iwram_3001e70__a2 __asm__("iwram_3001e70");
/* Func_80118c0: as Func_80118a8, but stores 1. */
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

INCLUDE_ASM("asm/field_engine/field/map_data/DecodeMetatileset.s");

void Func_800fa8c(void)
{
    unsigned int *p;
    int count;
    unsigned int i;
    int mask;
    unsigned int val;
    unsigned int low;

    p = (unsigned int *)gBuffer;
    i = 0x4000;
    count = -1;
    mask = 0xfff;
    for (; i != 0; i--) {
        val = *p++;
        low = val & mask;
        if (low == mask) {
            if (count != (int)low) {
                count++;
            }
            val = val + count - low;
            p[-1] = val;
        }
    }
}

INCLUDE_ASM("asm/field_engine/field/map_data/UnpackTilemap.s");

INCLUDE_ASM("asm/field_engine/field/map_data/LoadMapData.s");

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

INCLUDE_ASM("asm/field_engine/field/map_data/UpdateScreenEdge_V.s");

INCLUDE_ASM("asm/field_engine/field/map_data/UpdateScreenEdge_H.s");

INCLUDE_ASM("asm/field_engine/field/map_data/UpdateFieldScreen.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8010230.s");

INCLUDE_ASM("asm/field_engine/field/map_data/CopyMapTiles.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8010560.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80105d4.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8010704.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8010788.s");

void Func_80108c4(unsigned int v)
{
    unsigned char *base = (unsigned char *)iwram_3001e70;
    unsigned int m = v & 0xe00;

    *(unsigned short *)(base + 0x14) = (*(unsigned short *)(base + 0x14) & 0xf1ff) | m;
}

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80108e4.s");

INCLUDE_ASM("asm/field_engine/field/map_data/InitWorldMap.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8010d48.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8010e14.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8010ff0.s");

void Func_80110e0(s32 row)
{
    u16 *src = (u16 *)(0x02020000 + (((row / 2) & 0x1f) << 7));
    u16 *dst = (u16 *)(0x06004000 + ((row & 0x3e) << 6));
    u32 i = 0;
    u32 offset;
    u32 tile;

loop1:
    offset = *src;
    offset <<= 2;
    *dst = *(u16 *)(0x02010000 + offset);
    tile = *(u16 *)(0x02010002 + offset);
    offset = (u32)dst + 0x40;
    *(u16 *)offset = tile;
    dst += 1;
    src += 2;
    i++;
    if (i <= 0x1f)
        goto loop1;

    dst = (u16 *)((u32)dst + 0xfc0);
    src = (u16 *)((u32)src + 0xf80);
    i = 0;

loop2:
    offset = *src;
    offset <<= 2;
    *dst = *(u16 *)(0x02010000 + offset);
    tile = *(u16 *)(0x02010002 + offset);
    offset = (u32)dst + 0x40;
    *(u16 *)offset = tile;
    dst += 1;
    src += 2;
    i++;
    if (i <= 0x1f)
        goto loop2;
}

void Func_8011164(s32 col)
{
    u16 *src = (u16 *)(0x02020000 + (((col / 2) & 0x1f) << 2));
    u16 *dst = (u16 *)(0x06004000 + (col & 0x3e));
    u32 i = 0;
    u32 offset;
    u32 tile;

loop:
    offset = *src;
    offset <<= 2;
    *dst = *(u16 *)(0x02010000 + offset);
    tile = *(u16 *)(0x02010002 + offset);
    offset = (u32)dst + 0x40;
    *(u16 *)offset = tile;
    dst += 0x40;
    src += 0x40;
    i++;
    if (i <= 0x3f)
        goto loop;
}

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80111b4.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80113e4.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80114a0.s");

void Func_8011568(void) {
    do { u32 _value = 0x682; REG_BG1CNT = _value; } while (0);
    DMA3_COPY(gBuffer, (void *)0x6006a00, 0x9600);
}

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8011590.s");

void Func_801161c(void) {
    do { u32 _value = 0x501; REG_BG1CNT = _value; } while (0);
    DMA3_COPY(ewram_2038000, (void *)0x6008000, 0x8000);
}

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8011644.s");

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

INCLUDE_ASM("asm/field_engine/field/map_data/Func_801179c.s");

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

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80118d8.s");

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

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80119cc.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8011a84.s");

void Func_8011ae0(void) {
    Func_80042c8(Func_80119cc);
}

void Func_8011af0(void) {
    Func_800439c(Func_80119cc);
}

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8011b00.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8011b54.s");

void Func_8011bc8(void) {
    StopTask(Func_8011bf4);
    gfree(0x1c);
}

void Func_8011be0(void) {
    StartTask(Func_8011bf4, 200 << 4);
}

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8011bf4.s");

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

int HeightTile_3(signed char *param_1, int param_2, int param_3)
{
    int a;
    int b;
    int max;
    int s;

    a = param_1[0] << 19;
    b = param_1[1] << 19;
    max = a;
    if (b > a)
        max = b;
    s = param_2 + param_3;
    if (s == 15)
        return max;
    if ((unsigned int)s <= 14)
        return a;
    return b;
}

int HeightTile_4(signed char *param_1, int param_2, int param_3)
{
    int a;
    int b;
    int max;

    a = param_1[0] << 19;
    b = param_1[1] << 19;
    max = a;
    if (b > a)
        max = b;
    param_2 = param_3 - param_2 + 15;
    if (param_2 == 15)
        return max;
    if ((unsigned int)param_2 < 15)
        return a;
    return b;
}

int HeightTile_5(signed char *p, int param_2, int param_3)
{
    int a, b, c;

    a = *p++ << 19;
    b = p[0] << 19;
    c = p[1] << 19;
    param_2 += param_3;
    if (param_2 == 15)
        return b;
    if ((unsigned int)param_2 < 15)
        return a + ((b - a) * param_2) / 15;
    param_2 -= 15;
    return b + ((c - b) * param_2) / 15;
}

INCLUDE_ASM("asm/field_engine/field/map_data/HeightTile_6.s");

extern unsigned char gScript_080132fc[] __asm__("gScript_080132fc");

int HeightTile_7(signed char *param_1, int param_2, int param_3)
{
    int i, a, b;

    i = 0;
    a = param_1[i];
    i = 1;
    b = param_1[i];
    a <<= 19;
    b <<= 19;
    return a + (b - a) * gScript_080132fc[param_2 + param_3 * 16];
}

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

int HeightTile_A(signed char *p, int idx)
{
    int a, b;

    a = *p++ << 19;
    b = *p++ << 19;
    if ((unsigned int)idx <= 7) {
        return a + ((b - a) * idx) / 8;
    } else {
        a = *p << 19;
        return b + ((a - b) * (idx - 8)) / 8;
    }
}

int HeightTile_B(unsigned char *p, int unused, int idx)
{
    int a, b;

    a = *p++ << 19;
    b = *p++ << 19;
    if ((unsigned int)idx <= 7) {
        return a + ((b - a) * idx) / 8;
    } else {
        a = *p << 19;
        return b + ((a - b) * (idx - 8)) / 8;
    }
}

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

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8011f54.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8011fd8.s");

struct MapTile {
    unsigned char unk0;
    unsigned char unk1;
    unsigned char unk2;
    unsigned char unk3;
};

struct MapLayer {
    struct MapTile *tiles;
    unsigned char pad4[0x2c];
};

struct MapLayerState {
    unsigned char pad0[0x130];
    struct MapLayer layers[4];
};

unsigned int Func_8012038(int layer, int x, int z)
{
    struct MapLayerState *field = (struct MapLayerState *)iwram_3001e70;
    struct MapTile *tiles;

    x >>= 20;
    z >>= 20;
    tiles = (struct MapTile *)gBuffer;
    if (field != 0)
        tiles = field->layers[layer & 3].tiles;
    tiles += x + (z << 7);
    return tiles->unk2;
}

void Func_8012078(int layer, int x, int z, int value)
{
    struct MapLayerState *field = (struct MapLayerState *)iwram_3001e70;
    struct MapTile *tiles;

    x >>= 20;
    z >>= 20;
    if (field != 0) {
        tiles = field->layers[layer & 3].tiles;
        tiles += x + (z << 7);
        tiles->unk2 = value;
    }
}

unsigned int Func_80120b4(int x, int y)
{
    unsigned char *p;
    int idx;

    idx = (x / 16) + ((y / 16) << 7);
    p = gBuffer + (idx << 2);
    return (unsigned int)p[1] >> 6;
}

INCLUDE_ASM("asm/field_engine/field/map_data/TestCollision.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_801219c.s");

INCLUDE_ASM("asm/field_engine/field/map_data/Func_8012204.s");

unsigned int Func_80122ac(unsigned int arg0, unsigned int arg1)
{
	unsigned int r0;

	r0 = Func_8012204(arg1);
	if (r0 - 5 <= 7) {
		return 0;
	}
	return -1;
}

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80122c8.s");

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

void Func_8012350(void)
{
    int *state = (int *)iwram_3001e70;
    int i;

    for (i = 0; i < 300; i++) {
        if (state[1] <= 0xff && state[2] <= 0xff)
            break;
        WaitFrames(1);
    }
    state[3] = 0;
}

extern unsigned char ewram_201c000[];
extern void *gPtrs;
extern unsigned char ewram_203c000[];
extern void *galloc_iwram(int index, unsigned int size);
extern int Func_8009e7c(void);
extern unsigned char _Func_8009e7c_SIZE[];

void Func_8012388(unsigned int arg0, unsigned int arg1)
{
    unsigned char *ptr;
    void *dst;
    unsigned char *gp;
    unsigned char *p2;
    int (*f)(unsigned int, unsigned int, unsigned char *, unsigned char *);

    ptr = ewram_201c000;
    do {
        dst = galloc_iwram(0x31, (unsigned int)_Func_8009e7c_SIZE);
        DMA3_COPY((const void *)Func_8009e7c, dst, (unsigned int)_Func_8009e7c_SIZE);
    } while (0);
    gp = (unsigned char *)&gPtrs;
    p2 = ewram_203c000;
    ptr += 0x1000;
    gp += 0xc4;
    f = *(int (**)(unsigned int, unsigned int, unsigned char *, unsigned char *))gp;
    f(arg0, arg1, p2, ptr);
    gfree(0x31);
}

INCLUDE_ASM("asm/field_engine/field/map_data/Func_80123f4.s");

INCLUDE_ASM("asm/field_engine/field/map_data/rodata.s");
