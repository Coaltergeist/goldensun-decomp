// fakematch
/* battle/mechanics.c -- consolidated TU. */
#include "nonmatching.h"

extern int Func_80b8808();

INCLUDE_ASM("asm/battle/mechanics/rom_b8228_a_a.s");

extern void *GetBattleActor();
extern void _Actor_Stop(void *);
extern void _Actor_SetAnim(void *, int);

void Func_80b8394(void) {
    void *r5;
    r5 = *(void **)GetBattleActor();
    _Actor_Stop(r5);
    _Actor_SetAnim(r5, 2);
}

void Func_80b83b0(void) {}

INCLUDE_ASM("asm/battle/mechanics/rom_b8228_c_a_a.s");

extern unsigned char *_Sprite_AddLayer(unsigned int a, unsigned int b);
extern void _SpriteLayer_SetAnim(unsigned char *p, unsigned int b);
extern void WaitFrames(unsigned int nframes);

void Func_80b8418(void) {
    unsigned char *actor;
    unsigned char *r5;
    actor = *(unsigned char **)GetBattleActor();
    if (actor != (unsigned char *)0 && (*(unsigned char *)(actor + 0x54) & 0xf) == 1) {
        r5 = _Sprite_AddLayer(*(unsigned int *)(actor + 0x50), 0x11b);
        if (r5 != (unsigned char *)0) {
            _SpriteLayer_SetAnim(r5, 1);
            *(unsigned char *)(r5 + 6) = 3;
        }
        WaitFrames(0xa);
    }
}

#include "gba/types.h"
#include "actor.h"
#include "math.h"
extern unsigned int Func_80b7f70(unsigned int arg0, unsigned int arg1);
extern int Func_80b7ed8(void);
extern s32 PhysMove(vec3_t *src, vec3_t *dst);
extern int Func_80b8530(unsigned int unit);

int Func_80b845c(unsigned int unitID, vec3_t *dest)
{
    fx32 *tbl;
    struct Actor *actor;
    vec3_t junk;

    (void)&junk;
    actor = *(struct Actor **)GetBattleActor(unitID);
    tbl = (fx32 *)Func_80b7f70((unsigned int)actor, 0);
    Func_80b7ed8();
    dest->y -= fx32_multiply(fx32_multiply(PhysMove(&actor->pos, dest), tbl[6]), Func_80b8530(unitID) >> 16);
    return 0;
}

#include "gba/types.h"
#include "actor.h"
#include "math.h"
extern unsigned char *_GetUnit();
extern int GetEnemyAttackAnimUnk(unsigned int arg0);

int Func_80b84c0(unsigned int unitID, vec3_t *dest)
{
    fx32 *tbl;
    struct Actor *actor;
    fx32 tmp;
    unsigned char *unit;

    actor = *(struct Actor **)GetBattleActor(unitID);
    tbl = (fx32 *)Func_80b7f70((unsigned int)actor, 0);
    Func_80b7ed8();
    tmp = fx32_multiply(PhysMove(&actor->pos, dest), tbl[6]);
    unit = _GetUnit(unitID);
    if (GetEnemyAttackAnimUnk(*(unsigned char *)(unit + 0x128)) != 0) {
        dest->y -= fx32_multiply(tmp, 0x18);
    } else {
        dest->y -= fx32_multiply(tmp, 0x30);
    }
    return 0;
}

INCLUDE_ASM("asm/battle/mechanics/rom_b8228_c_a_c_a_a_c_c.s");

int Func_80b8808(unsigned int r0)
{
	unsigned int r3;

	if (r0 <= 7) {
		return 0;
	}
	r3 = r0 - 0x80;
	if (r3 <= 5) {
		return 0;
	}
	return -1;
}

INCLUDE_ASM("asm/battle/mechanics/rom_b8228_c_a_c_a_c_a.s");

extern void _Func_80198dc(void);
extern void _Func_8019908(unsigned int arg0, unsigned int arg1);
extern void _Func_80175a0(unsigned int arg0);

unsigned int Func_80b8888(short *arg0)
{
	int id;
	unsigned char *unit;
	int r0;

	id = arg0[0];
	unit = _GetUnit(id);
	r0 = Func_80b8808(id);
	if (r0 < 0)
		return -1;
	if (*(short *)(unit + 0x38) <= 0)
		return 0;
	_Func_80198dc();
	_Func_8019908(id, 1);
	_Func_80175a0(0x816);
	return 0;
}

INCLUDE_ASM("asm/battle/mechanics/rom_b8228_c_a_c_a_c_c.s");

extern void _Sprite_SetAnim(unsigned char *, unsigned int);
extern void _Func_800befc(unsigned char *);
extern void Func_80b7e60(unsigned int);

void Func_80b8ec4(unsigned int arg0) {
    unsigned char *p;
    short *s;
    unsigned char **q;
    unsigned char *r5;
    unsigned char *r2;
    int idx;

    p = _GetUnit(arg0);
    s = (short *)p;
    idx = 0x38 / 2;
    if (s[idx] <= 0) {
        q = (unsigned char **)GetBattleActor(arg0);
        r5 = *(unsigned char **)(*q + 0x50);
        _Sprite_SetAnim(r5, 5);
        r2 = *(unsigned char **)(r5 + 0x28);
        r2[5] = 6;
        r2[0x16] = 0xff;
        WaitFrames(4);
        _Func_800befc(r5);
        Func_80b7e60(arg0);
    }
}

INCLUDE_ASM("asm/battle/mechanics/rom_b8228_c_a_c_c_a.s");

extern unsigned int iwram_3001e74;

short Func_80b9a44(unsigned int arg0)
{
    unsigned char *base;
    int off;

    base = (unsigned char *)iwram_3001e74;
    if (arg0 & 0x80) {
        off = ((arg0 & 0xf) << 1) + 0x64;
        base += 2;
    } else {
        off = ((arg0 & 0xf) << 1) + 0x58;
    }
    return *(short *)(base + off);
}

INCLUDE_ASM("asm/battle/mechanics/rom_b8228_c_a_c_c_c.s");

void Func_80b9b2c(void) {}

INCLUDE_ASM("asm/battle/mechanics/rom_b9b30_a.s");

extern void Func_80c10e8(unsigned int arg0, unsigned int arg1);
extern void WaitTextPrompt(void);
extern void Func_80bbb0c(unsigned char *arg0, unsigned int arg1);
extern void Func_80bb938(void);

unsigned int Func_80ba27c(unsigned char *arg0)
{
	int n;
	int i;

	Func_80c10e8(0, 0);
	n = *(signed char *)(arg0 + 1);
	if (n == 0) {
		WaitTextPrompt();
	} else {
		i = 0;
		while (i < n) {
			Func_80bbb0c(arg0, i);
			Func_80bb938();
			n = *(signed char *)(arg0 + 1);
			i++;
		}
	}
	WaitFrames(1);
}

INCLUDE_ASM("asm/battle/mechanics/rom_b9b30_c.s");

INCLUDE_ASM("asm/battle/mechanics/rom_bb588_a.s");

extern unsigned int iwram_3001ee4;

void Func_80bb8d8(void) {
    unsigned int *ptr = (unsigned int *)iwram_3001ee4;
    ptr[2] = 1;
}

extern void _Func_80782a0(unsigned char *base, int arg1);
extern void Func_80bac6c(unsigned int arg0);
extern void _DeleteActor(unsigned int arg0);

unsigned int Func_80bb8e8(unsigned int arg0) {
    unsigned char *r5;
    unsigned char *base;

    base = _GetUnit(arg0);
    if (*(unsigned char *)(base + 0x12a) == 1) {
        _Func_80782a0(base, 0);
        Func_80bac6c(arg0);
        Func_80b7e60(arg0);
        r5 = GetBattleActor(arg0);
        _DeleteActor(*(unsigned int *)r5);
        *(unsigned int *)r5 = 0;
        *(unsigned short *)(r5 + 0x28) = 0;
    }
}

unsigned int Func_80bb928(unsigned int arg0) {
    unsigned int *ptr = (unsigned int *)(arg0 + (0xb6 << 1));
    *ptr |= 1;
    return arg0 + (0xb6 << 1);
}

INCLUDE_ASM("asm/battle/mechanics/rom_bb588_c_c_a_a.s");

/* Func_80bbabc @ 0x080bbabc  [asm/rom_b5000/rom_bb588_c_c_a.s]
 * Queue push off *iwram_3001e74: byte array at +0x6b8 (0xd7<<3), word array
 * at +0x6f8 (= base+0x40), count at +0x7fc. pop {r1}; bx r1 with r0 = arg0
 * untouched -> function returns arg0.
 */

unsigned int Func_80bbabc(unsigned int arg0, unsigned int arg1)
{
    unsigned char *base;
    unsigned int *count;
    unsigned int i;
    unsigned int ofs;

    base = (unsigned char *)iwram_3001e74 + 0x6b8;
    count = (unsigned int *)((unsigned char *)iwram_3001e74 + 0x7fc);
    i = *count;
    ofs = (i << 2) + 0x40;
    base[i] = arg0;
    *(unsigned int *)(base + ofs) = arg1;
    *count = i + 1;
    return arg0;
}

unsigned int Func_80bbae8(int x)
{
	switch (x) {
	case 0x1f:
	case 0x20:
	case 0x3c:
	case 0x45:
		return 1;
	}
	return 0;
}

INCLUDE_ASM("asm/battle/mechanics/rom_bbb0c_a_a_a.s");

unsigned int Func_80bd3c8(int arg0)
{
	int r3;
	if (arg0 == 0x7e)
		return 1;
	arg0 = (int)_GetMoveInfo(arg0);
	r3 = *(unsigned char *)((char *)arg0 + 9);
	return (unsigned int)(-r3 | r3) >> 31;
}

INCLUDE_ASM("asm/battle/mechanics/rom_bbb0c_a_a_c.s");


void Func_80bd7dc(int arg)
{
    unsigned char *base;
    base = (unsigned char *)iwram_3001e74;
    if (*(unsigned int *)(base + 0x800) == 0) {
        *(unsigned int *)(base + 0x800) = 1;
        if (arg != 0) {
            *(unsigned int *)(base + 0x820) = arg;
        }
    }
}

extern unsigned char iwram_3001e74__a3[] __asm__("iwram_3001e74");
extern void Func_80bd898(void);
extern short StartTask(void *task, unsigned int priority);

volatile unsigned int Func_80bd808(unsigned int arg0)
{
  unsigned char *base;
  base = *((unsigned char **) iwram_3001e74__a3);
  *((unsigned int *) (base + 0x7fc)) = 0;
  *((unsigned int *) (base - -0x804)) = 0;
  *((unsigned int *) (base + 0x808)) = arg0;
  *((unsigned int *) (base + 0x800)) = 2;
  base[0x655] = 0;
  StartTask((void *) Func_80bd898, 0xc80);
}

INCLUDE_ASM("asm/battle/mechanics/rom_bbb0c_a_c_a_a_c.s");

extern unsigned char iwram_3001e74__a4[] __asm__("iwram_3001e74");

void Func_80bdfec(void) {
    unsigned int *r2;
    r2 = *(unsigned int **)iwram_3001e74__a4;
    *(unsigned int *)((char *)r2 + 0x800) = 0;
    *(unsigned int *)((char *)r2 + 0x7fc) = 0;
    *(unsigned int *)((char *)r2 + 0x804) = 0;
    *(unsigned int *)((char *)r2 + 0x808) = 0;
    *(unsigned int *)((char *)r2 + 0x7f8) = 0;
    *(unsigned int *)((char *)r2 + 0x820) = 0x86;
    *(unsigned int *)((char *)r2 + 0x824) = 0;
}

INCLUDE_ASM("asm/battle/mechanics/rom_bbb0c_a_c_a_c.s");

extern int _RPGRandom(void);

unsigned int Func_80bf208(int arg0, int arg1, int arg2)
{
	int v;
	int t;
	v = _GetUnit();
	if (arg1 <= 5) {
		int e;
		e = *(unsigned char *)(v + 0x42);
		t = (e * 3 - arg1 * 5 + arg2) * 0x28f;
		if (t >= (_RPGRandom() & 0xffff))
			return 1;
	}
	return 0;
}

INCLUDE_ASM("asm/battle/mechanics/rom_bbb0c_a_c_c_a.s");

extern void Func_80bf5a8(void);

unsigned int Func_80bf65c(void) {
    register int i;
    for (i = 0x13; i >= 0; i--) {
        Func_80bf5a8();
    }
    return 0;
}

void Func_80bf674(void) {}

INCLUDE_ASM("asm/battle/mechanics/rom_bbb0c_c.s");

INCLUDE_ASM("asm/battle/mechanics/rom_bffb8_a_a_a.s");

#include "dma.h"
extern unsigned char iwram_3001ef8[];
extern unsigned char Lc5a30[] __asm__(".Lc5a30");

void Func_80c0184(void)
{
    unsigned int val;
    val = *(unsigned int *)(*(unsigned int *)iwram_3001ef8) - 1;
    if (val <= 0x1f) {
        DMA3_COPY(Lc5a30 + ((val >> 2) << 5), (void *)0x6005000, 32);
    }
}

INCLUDE_ASM("asm/battle/mechanics/rom_bffb8_a_a_c.s");

#define REG_BG0VOFS (*(volatile unsigned short *)0x04000012)

void Func_80c0298(void) {
    unsigned short value = 0;
    REG_BG0VOFS = value;
}

INCLUDE_ASM("asm/battle/mechanics/rom_bffb8_a_c_a.s");

extern void gfree(int index);

void Func_80c08e0(void) {
    gfree(10);
}

INCLUDE_ASM("asm/battle/mechanics/rom_bffb8_a_c_c.s");

#define REG_BLDCNT (*(volatile unsigned short *)0x04000050)

void Func_80c0ea8(void) {
    REG_BLDCNT = 0xbf;
}

/* Func_80c0eb8 @ 0x080c0eb8  [asm/rom_b5000/rom_bffb8_c_a.s]
 *
 * Same {0x10000,0,0,0}x3 stmia block as MatrixReset -- see
 * src/rom_c0/rom_49a8_c_c_c_a_b.c for why this needs the Dma3Raw-style
 * register-asm idiom + empty-asm barriers (the struct-by-value form goes
 * through the stack; 2026-06-10 diag). The original was likely a shared
 * macro/static inline; the definition here must stay identical.
 * Then m[1] = old + m[0], with old read BEFORE the block (m[0] is 0x10000
 * after it). ROM allocation: m -> r5 (live across the r0-clobbering asm),
 * old -> r6, push {r5,r6,lr} only (r4 is call-clobbered via the Makefile
 * -fcall-used-r4).
 */

static inline void MatrixResetRaw(int *dst)
{
    register int *_p __asm__("r0");
    register int _a __asm__("r1");
    register int _b __asm__("r2");
    register int _c __asm__("r3");
    register int _d __asm__("r4");

    __asm__ volatile ("" : : : "r0");
    _p = dst;
    __asm__ volatile ("" : : "r" (_p));
    _a = 0x80;
    _b = 0;
    _c = 0;
    _d = 0;
    _a <<= 9;
    __asm__ volatile (
        "stmia\tr0!, {r1, r2, r3, r4}\n\t"
        "stmia\tr0!, {r1, r2, r3, r4}\n\t"
        "stmia\tr0!, {r1, r2, r3, r4}"
        :
        : "r" (_p), "r" (_a), "r" (_b), "r" (_c), "r" (_d)
        : "r0", "memory"
    );
}

void Func_80c0eb8(int *m)
{
    int old = m[0];

    MatrixResetRaw(m);
    m[1] = old + m[0];
}

int Func_80c0edc(int x)
{
    return x / 16;
}

INCLUDE_ASM("asm/battle/mechanics/rom_bffb8_c_c.s");
