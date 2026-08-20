// fakematch
/* battle/battle.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned int GetBattleActor();
extern unsigned int Func_80b7f70();
extern void Func_80b7e04();
extern int Func_80b7ed8();

INCLUDE_ASM("asm/battle/battle/Func_80b5a0c.s");

#include "dma.h"
extern int _call_via_r3(void);
extern void Func_80008d4(int dst, int size);
static inline void Dma3Raw(const void *src, void *dst, u32 cnt)
{
register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
register const void *_src __asm__("r0") = src;
register void *_dst __asm__("r1") = dst;
register u32 _cnt __asm__("r2") = cnt;
    __asm__ volatile (
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        :
        : "r" (_base), "r" (_src), "r" (_dst), "r" (_cnt)
        : "r0", "r1", "r2", "memory"
    );
}

int Func_80b5ad4(void)
{
    int (*f)(int, int);

    Dma3Raw((void *)0x6000290, (void *)0x6000280, 0x80000008);
    f = (int (*)(int, int))Func_80008d4;
    return f(0x600028c, 20);
}

#define REG_BG0VOFS (*(volatile unsigned short *)0x04000012)

void ResetBG0VOFS(void) {
    unsigned short value = 0;
    REG_BG0VOFS = value;
}

void Func_80b5b14(void) {}

INCLUDE_ASM("asm/battle/battle/Func_80b5b18.s");
INCLUDE_ASM("asm/battle/battle/Func_80b5c08.s");
INCLUDE_ASM("asm/battle/battle/Func_80b5d3c.s");

void Func_80b5e10(void) {}

INCLUDE_ASM("asm/battle/battle/Func_80b5e14.s");
INCLUDE_ASM("asm/battle/battle/Func_80b5f0c.s");
INCLUDE_ASM("asm/battle/battle/Func_80b606c.s");
INCLUDE_ASM("asm/battle/battle/Func_80b60a0.s");
INCLUDE_ASM("asm/battle/battle/Func_80b6148.s");
INCLUDE_ASM("asm/battle/battle/Func_80b6378.s");
INCLUDE_ASM("asm/battle/battle/Func_80b63b0.s");
INCLUDE_ASM("asm/battle/battle/BattleMain.s");
INCLUDE_ASM("asm/battle/battle/Func_80b6a60.s");
INCLUDE_ASM("asm/battle/battle/Func_80b6ae0.s");
INCLUDE_ASM("asm/battle/battle/Func_80b6b40.s");
INCLUDE_ASM("asm/battle/battle/Func_80b6c08.s");

extern void Func_80b6c08(int, unsigned int *);
extern void CreateBattleSpriteOverlays(unsigned int *, int);

void Func_80b6c90(void)
{
  unsigned char buf[0x1c];
  Func_80b6c08(3, (unsigned int *)buf);
  CreateBattleSpriteOverlays((unsigned int *)buf, 1);
}


void Func_80b6cb0(void)
{
    unsigned char buf[0x1c];
    Func_80b6c08(3, (unsigned int *)buf);
    CreateBattleSpriteOverlays((unsigned int *)buf, 0);
}


unsigned int GetUnitDefaultColor(void) {
    unsigned int r0;
    unsigned int r1;

    r0 = GetBattleActor();
    r1 = *(unsigned int *)(r0 + 0x14);
    return r1;
}

INCLUDE_ASM("asm/battle/battle/Func_80b6cdc.s");
INCLUDE_ASM("asm/battle/battle/Func_80b6d30.s");
INCLUDE_ASM("asm/battle/battle/Func_80b6e30.s");

INCLUDE_ASM("asm/battle/battle/GetWeaponType.s");

INCLUDE_ASM("asm/battle/battle/GetWeaponSpriteID.s");

INCLUDE_ASM("asm/battle/battle/Func_80b6f44.s");

extern signed char Lc2a62[] __asm__(".Lc2a62");

void Func_80b7410(int idx, int *out1, int *out2)
{
    *out1 = Lc2a62[idx * 2];
    *out2 = Lc2a62[idx * 2 + 1];
}

INCLUDE_ASM("asm/battle/battle/Func_80b7424.s");

extern unsigned char *_GetUnit(int);

int Func_80b7514(void)
{
    int r5;
    int r6;

    r5 = 0;
    for (; r5 <= 5; r5++) {
        r6 = r5 + 0x80;
        if (_GetUnit(r6)[0x12a] == 0)
            break;
    }
    if (r5 == 6)
        return -1;
    return r6;
}

INCLUDE_ASM("asm/battle/battle/Func_80b7548.s");
INCLUDE_ASM("asm/battle/battle/Func_80b75dc.s");

unsigned int Func_80b770c(short *p, int x)
{
    unsigned int i;
    unsigned short v;

    if (x > 7)
        x += 0x78;

    i = 0;
    do {
        v = (unsigned short)p[0];
        p++;
        if (v == 0xff)
            return 0;
        if (v == (unsigned int)x)
            return 1;
        i++;
    } while (i <= 0xd);

    return 0;
}

INCLUDE_ASM("asm/battle/battle/Func_80b7738.s");
INCLUDE_ASM("asm/battle/battle/Func_80b78e4.s");
INCLUDE_ASM("asm/battle/battle/Func_80b7994.s");
INCLUDE_ASM("asm/battle/battle/Func_80b7aac.s");

extern void _DeleteSprite(void);

void Func_80b7b30(void) {
    unsigned int *actor;
    unsigned int r5;
    unsigned int r6;

    actor = GetBattleActor();
    if (actor == (unsigned int *)0) {
        return;
    }
    r5 = actor[0];
    if (r5 == 0) {
        return;
    }
    actor[8] = 0;
    actor[9] = 0;
    r6 = 0;
    while (Func_80b7f70(r5, r6) != 0) {
        _DeleteSprite();
        r6++;
    }
    *(unsigned char *)((char *)r5 + 0x54) = 0;
    *(unsigned int *)((char *)r5 + 0x50) = 0;
}

INCLUDE_ASM("asm/battle/battle/CreateBattleSpriteOverlays.s");

extern unsigned int iwram_3001e74;

unsigned int GetBattleActor(int unit)
{
    unsigned char *base;
    unsigned char *table;
    int idx;

    base = *(unsigned char **)&iwram_3001e74;
    table = base + 0x74;
    if (unit > 7)
        unit -= 0x78;
    idx = unit + 0x2dc;
    if (base[idx] == 0xff)
        return 0;
    return (unsigned int)(table + base[idx] * 0x2c);
}

void Func_80b7e04(unsigned int *p) {
    unsigned int v;
    int i;

    if (p) {
        v = 0;
        p = (unsigned int *)((char *)p + 0x28);
        for (i = 3; i >= 0; i--) {
            unsigned int e;
            e = *p++;
            if (e != 0) {
                *(unsigned int *)((char *)e + 0x10) = v;
            }
        }
    }
}


void Func_80b7e24(unsigned char *p) {
    unsigned int v;

    if (p == (unsigned char *)0)
        return;

    switch (*(unsigned char *)(p + 0x54) & 0xf) {
    case 1:
        Func_80b7e04(*(unsigned int *)(p + 0x50));
        break;
    case 2:
        {
            unsigned int *q;
            int i;

            q = *(unsigned int **)(p + 0x50);
            for (i = 3; i >= 0; i--) {
                v = *q++;
                if (v != 0)
                    Func_80b7e04(v);
            }
        }
        break;
    }
}

extern void Func_80b6e30(int);

int Func_80b7e60(int arg0)
{
    void *actor;
    unsigned short v;
    Func_80b6e30(arg0);
    actor = GetBattleActor(arg0);
    v = 1;
    *(unsigned short *)((char *)actor + 0x28) = v;
    return 0;
}

INCLUDE_ASM("asm/battle/battle/Func_80b7e7c.s");


unsigned int Func_80b7eb4(unsigned int arg0, unsigned int *arg1) {
    unsigned int r4;
    unsigned int r2;
    unsigned int r3;

    r4 = iwram_3001e74;
    r2 = arg0 * 0x2c;
    r3 = r2 + 0x80;
    r3 = *(unsigned int *)(r4 + r3);
    *arg1 = r3;
    *(unsigned int *)(arg1 + 1) = 0;
    r2 += 0x84;
    r3 = *(unsigned int *)(r4 + r2);
    *(unsigned int *)(arg1 + 2) = r3;
    return 0;
}

#include "gba/types.h"
extern void *iwram_3001e80;
extern void InitMatrixStack(void);
extern int _GetFlag(int flag);
extern int MatrixLook(vec3_t *a, vec3_t *b);
extern int MatrixSetLook(vec3_t *a, vec3_t *b);
extern void Func_8000a30(matrix_t *m);
extern unsigned char Lc2a7c[] __asm__(".Lc2a7c");

static inline void MatrixMultiply(matrix_t *m) {
    void (*mul)(matrix_t *m) = Func_8000a30;
    mul(m);
}

int Func_80b7ed8(void) {
    vec3_t *a;

    a = (vec3_t *)iwram_3001e80;
    InitMatrixStack();
    if (_GetFlag(0x16b) != 0) {
        MatrixMultiply((matrix_t *)Lc2a7c);
        return MatrixLook(a, (vec3_t *)((char *)a + 0xc));
    } else {
        return MatrixSetLook(a, (vec3_t *)((char *)a + 0xc));
    }
}

#include "gba/types.h"
#include "actor.h"
#include "math.h"
extern s32 PhysMove(vec3_t *src, vec3_t *dst);

int Func_80b7f20(unsigned int unitID, vec3_t *dest)
{
    struct Actor *actor;
    fx32 *tbl;
    vec3_t local;
    fx32 a;

    actor = *(struct Actor **)GetBattleActor(unitID);
    tbl = (fx32 *)Func_80b7f70((unsigned int)actor, 0);
    Func_80b7ed8();
    local.x = actor->pos.x;
    local.y = actor->pos.y;
    local.z = actor->pos.z;
    a = PhysMove(&local, dest);
    fx32_multiply(a, tbl[6]);
    return 0;
}

unsigned int Func_80b7f70(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p = (unsigned char *)arg0;
    unsigned int t = p[0x54] & 0xf;
    if (t == 1) {
        if (arg1 == 0)
            return *(unsigned int *)(p + 0x50);
    } else if (t == 2) {
        unsigned int base = *(unsigned int *)(p + 0x50);
        return *(unsigned int *)((arg1 << 2) + base);
    }
    return 0;
}

INCLUDE_ASM("asm/battle/battle/Func_80b7f9c.s");
INCLUDE_ASM("asm/battle/battle/Func_80b8000.s");

extern void _Actor_Stop(void *actor);
extern void _Actor_TravelTo(void *actor, int dist, int a2, int a3);
extern void _Actor_SetAnim(void *actor, int anim);

void Func_80b8064(unsigned int arg0)
{
    int *r6 = (int *)GetBattleActor(arg0);
    unsigned char *r5 = (unsigned char *)r6[0];

    *(int *)(r5 + 0x34) = 0x80 << 10;
    *(int *)(r5 + 0x30) = 0x80 << 12;
    *(int *)(r5 + 0x28) = 0xa0 << 11;
    *(int *)(r5 + 0x48) = 0x7851;
    *(int *)(r5 + 0x44) = 0;
    *(r5 + 0x5a) = 0;
    _Actor_Stop(r5);
    {
        int v = *(int *)((char *)r6 + 0xc);
        int t = (v << 1) + v;
        _Actor_TravelTo((void *)r5, t, 0, *(int *)((char *)r6 + 0x10));
    }
    _Actor_SetAnim((void *)r5, 1);
}

INCLUDE_ASM("asm/battle/battle/Func_80b80b8.s");

void Func_80b8144(unsigned int arg0) {
    unsigned int base;
    base = *(unsigned int *)arg0;
    *(unsigned int *)(base + 0x34) = 0x80 << 10;
    *(unsigned int *)(base + 0x30) = 0x80 << 12;
    *(unsigned int *)(base + 0x48) = 0xab85;
    *(unsigned int *)(base + 0x44) = 0;
    *(unsigned char *)(base + 0x5a) = 0;
    _Actor_TravelTo(base, *(unsigned int *)(arg0 + 0xc), 0, *(unsigned int *)(arg0 + 0x10));
}


void Func_80b8178(unsigned int arg0) {
    int *r6 = (int *)GetBattleActor(arg0);
    unsigned char *r5 = (unsigned char *)r6[0];

    *(int *)(r5 + 0x34) = 0x80 << 9;
    *(int *)(r5 + 0x30) = 0x80 << 11;
    *(int *)(r5 + 0x28) = 0xc0 << 10;
    *(int *)(r5 + 0x48) = 0x9999;
    *(int *)(r5 + 0x44) = 0;
    *(r5 + 0x5a) = 0;
    _Actor_Stop(r5);
    {
        int v = *(int *)((char *)r6 + 0xc);
        int t = v * 3;
        t = t / 2;
        _Actor_TravelTo((int)r5, t, 0, *(int *)((char *)r6 + 0x10));
    }
}

#include "math.h"

void Func_80b81c8(unsigned int arg0)
{
    int *r6 = (int *)GetBattleActor(arg0);
    unsigned char *r5 = (unsigned char *)r6[0];

    *(int *)(r5 + 0x34) = 0x80 << 9;
    *(int *)(r5 + 0x30) = 0x80 << 11;
    *(int *)(r5 + 0x28) = 0x80 << 11;
    *(int *)(r5 + 0x48) = 0x9999;
    *(int *)(r5 + 0x44) = 0;
    *(r5 + 0x5a) = 0;
    _Actor_Stop(r5);
    {
        int v = *(int *)((char *)r6 + 0xc);
        int t = fx32_multiply(v, 0x14ccc);
        _Actor_TravelTo((void *)r5, t, 0, *(int *)((char *)r6 + 0x10));
    }
    _Actor_SetAnim((void *)r5, 5);
}
