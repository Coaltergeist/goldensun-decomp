/* rom_7fa4ec (overlay file 970): consolidated TU — lalivero_ship map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/lalivero_ship/exports.s");

extern void OvlFunc_970_2009188();

extern unsigned char gOvl_020096c8[];

unsigned int LaliveroShip_GetEntrances(void) {
    return (unsigned int)gOvl_020096c8;
}

unsigned int LaliveroShip_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009710[];

void *LaliveroShip_GetExits(void) {
    return (void *)gOvl_02009710;
}
extern unsigned char gOvl_0200971c[];

void *LaliveroShip_GetActors(void) {
    return (void *)gOvl_0200971c;
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_970_200804c(void)
{
  unsigned char *base;
  int new_var;
  short *new_var2;
  short val;
  int new_var3;
  unsigned int addr;
  base = *((unsigned char **) iwram_3001ebc);
  new_var = 0xa0;
  base += 0xb6 << 1;
  new_var2 = (short *) base;
  val = *new_var2;
  __Func_8091e9c(val);
 do { addr = new_var; } while (0);
  new_var3 = 0;
  addr <<= 19;
  *((unsigned short *) addr) = new_var3;
}


void OvlFunc_970_2008070(void) {
    OvlFunc_970_2009188();
}

extern void OvlFunc_970_20090d4(int, int, int, int, int, int, int);

void OvlFunc_970_200807c(void) {
    OvlFunc_970_20090d4(0, 0x80 << 11, 0x80 << 9, 0x80 << 6, 0x80 << 9, 0x80 << 8, 0x80 << 7);
}

extern unsigned char gOvl_020097ac[];

void *LaliveroShip_GetEvents(void) {
    return (void *)gOvl_020097ac;
}

#include "dma.h"

extern unsigned short Lm970_181c __asm__(".Lm970_181c");
extern unsigned short Lm970_14ac[] __asm__(".Lm970_14ac");
extern unsigned int _udivsi3_RAM(unsigned int, unsigned int);

void OvlFunc_970_20080b0(void)
{
    unsigned short idx;
    void *src;

    idx = _udivsi3_RAM(Lm970_181c, 6);
    src = &Lm970_14ac[idx];
    DMA3_SET(src, (void *)0x050000e8, 0x80000006);

    if ((unsigned int)(++Lm970_181c << 16) > 0x230000) {
        Lm970_181c = 0;
    }
}

extern int __Random(void);
extern void __Actor_SetAnim(void *actor, int anim);
extern void __Actor_SetScript(void *actor, void *script);
extern unsigned char gScript_970__020094c4[];

void OvlFunc_970_2008100(void *actor)
{
    char *a = (char *)actor;
    signed short f64s = *(signed short *)(a + 0x64);
    int f64u = *(unsigned short *)(a + 0x64);

    if (f64s != 0) {
        f64u = f64u - 1;
        *(unsigned short *)(a + 0x64) = f64u;
        *(int *)(a + 8) += __Random() - __Random();
        *(int *)(a + 0xc) += 0xcccc;
    } else if (*(signed short *)(a + 0x66) != 0) {
        unsigned short *animp;
        int anim_state;

        *(unsigned short *)(a + 0x66) = f64s;
        __Actor_SetAnim(actor, 1);
        animp = (unsigned short *)(a + 0x5e);
        anim_state = 0x14;
        *animp = anim_state;
        __Actor_SetScript(actor, gScript_970__020094c4);
    }
}

extern int Lm970_17f4[] __asm__(".Lm970_17f4");
extern int Lm970_17f0[] __asm__(".Lm970_17f0");

void OvlFunc_970_2008168(void)
{
    if (++Lm970_17f4[0] == 0x28) {
        if (Lm970_17f0[0] > 4) {
            Lm970_17f0[0] -= 1;
            Lm970_17f4[0] = 0;
        }
    }
}

INCLUDE_ASM("asm/maps/lalivero_ship/OvlFunc_970_2008194.s");
extern int *__MapActor_GetActor(int idx);
extern int Lm970_180c[] __asm__(".Lm970_180c");
extern int Lm970_1810[] __asm__(".Lm970_1810");
extern int Lm970_1818[] __asm__(".Lm970_1818");

int OvlFunc_970_20083c0(void)
{
    int *dst = Lm970_180c;
    *dst = __MapActor_GetActor(0)[3];
    return 0;
}

int OvlFunc_970_20083dc(void)
{
    int *dst = Lm970_1810;
    *dst = __MapActor_GetActor(1)[3];
    return 0;
}

extern unsigned char gOvl_02009814[];

int OvlFunc_970_20083f8(void)
{
    int *dst = (int *)gOvl_02009814;
    *dst = __MapActor_GetActor(3)[3];
    return 0;
}

int OvlFunc_970_2008414(void)
{
    int *dst = Lm970_1818;
    *dst = __MapActor_GetActor(2)[3];
    return 0;
}
INCLUDE_ASM("asm/maps/lalivero_ship/OvlFunc_970_2008430.s");
INCLUDE_ASM("asm/maps/lalivero_ship/OvlFunc_970_2008b34.s");
typedef unsigned char GlobalState;
extern GlobalState gState;
extern unsigned char iwram_3001e70[];
extern int __GiveItemTo(int, int);
extern void __Func_800fe9c(void);

int LaliveroShip_MapInit(void)
{
    unsigned char *r1;
    int r2;
    int r3;
    unsigned char *base;
    char *actor;
    int val;
    volatile unsigned short temp;
    volatile unsigned short *bld;

    r2 = 0xe1;
    r2 <<= 1;
    r3 = (int)&gState + r2;
    r2 = 0;
    base = *(unsigned char **)iwram_3001e70;
    if (*(short *)((char *)r3 + r2) == 0x63) {
        __GiveItemTo(0, 0xf2);
    }

    r3 = *(int *)(iwram_3001e70 + 0x4c);
    r2 = 0xe0;
    r2 <<= 1;
    r3 += r2;
    r2 -= 0xc0;
    *(int *)r3 = r2;

    ((char *)__MapActor_GetActor(8))[0x59] = 0;
    val = 2;
    ((char *)__MapActor_GetActor(8))[0x23] = val;

    ((char *)__MapActor_GetActor(9))[0x59] = 0;
    ((char *)__MapActor_GetActor(9))[0x23] = val;

    actor = (char *)__MapActor_GetActor(8);
    val -= 0xf;
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;

    actor = (char *)__MapActor_GetActor(9);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;

    actor = (char *)__MapActor_GetActor(0);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;
    (*(char **)(actor + 0x50))[0x15] = ((*(char **)(actor + 0x50))[0x15] & val) | 4;

    actor = (char *)__MapActor_GetActor(1);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;
    (*(char **)(actor + 0x50))[0x15] = ((*(char **)(actor + 0x50))[0x15] & val) | 4;

    actor = (char *)__MapActor_GetActor(2);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;
    (*(char **)(actor + 0x50))[0x15] = ((*(char **)(actor + 0x50))[0x15] & val) | 4;

    actor = (char *)__MapActor_GetActor(3);
    (*(char **)(actor + 0x50))[9] = ((*(char **)(actor + 0x50))[9] & val) | 4;
    (*(char **)(actor + 0x50))[0x15] = ((*(char **)(actor + 0x50))[0x15] & val) | 4;

    temp = (REG_BG3CNT & 0xfffc) | 2;
    REG_BG3CNT = temp;
    temp = (REG_BG2CNT & 0xfffc) | 3;
    REG_BG2CNT = temp;
    temp = (REG_BG1CNT & 0xfffc) | 3;
    REG_BG1CNT = temp;

    do {
        r2 = 0x2648;
        bld = (volatile unsigned short *)0x04000050;
    } while (0);
    *bld = r2;
    r2 = 0x81;
    r2 <<= 4;
    bld++;
    *bld = r2;

    r3 = 0x9a;
    r3 <<= 1;
    r1 = base + r3;
    *(int *)(r1 + 0xc) += 0xffa60000;

    r3 = 0xb2;
    r3 <<= 1;
    r1 = base + r3;
    *(int *)(r1 + 0xc) += 0xffa60000;

    __Func_800fe9c();
    OvlFunc_970_200807c();

    return 0;
}
extern unsigned char iwram_3001ed8[];

#include "dma0.h"

void OvlFunc_970_2008f30(void)
{
    unsigned char *base;
    unsigned char idx;
    unsigned int *entry;
    unsigned int *bg3hofs = (unsigned int *)&REG_BG3HOFS;

    base = *((unsigned char **) iwram_3001ed8);
    idx = base[0xf00];
    entry = (unsigned int *)(base + idx * 0x780);
    UnknownDMAPrefix();
    *bg3hofs = *entry++;
    DMA0_SET(entry, (void *)bg3hofs, 0xa6600001);
}

INCLUDE_ASM("asm/maps/lalivero_ship/OvlFunc_970_2008f80.s");
extern void OvlFunc_970_2008f80(void);
extern void *__galloc_ewram(int tag, int size);

struct Wave970 {
    unsigned char pad[0xf01];
    unsigned char flag;
    unsigned char pad2[0xf08 - 0xf01 - 1];
    int val_f08;
    int val_f0c;
    int val_f10;
    int val_f14;
    int val_f18;
    int val_f1c;
};

void OvlFunc_970_20090d4(int p0, int p1, int p2, int p3, int p4, int p5, int p6)
{
    struct Wave970 *task;

    task = (struct Wave970 *)__galloc_ewram(0x22, 0xf20);
    DMA3_FILL(task, 0, 0xf20);
    WaitForDma3();

    task->flag = p0;
    task->val_f08 = p1;
    task->val_f0c = p4;
    task->val_f18 = p3;
    task->val_f1c = p6;
    task->val_f10 = p2;
    task->val_f14 = p5;

    __StartTask(OvlFunc_970_2008f80, 0xc8 << 4);
    __StartTask(OvlFunc_970_2008f30, 0x90 << 3);
}


extern void OvlFunc_970_2008f30(void);
extern void OvlFunc_970_2008f80(void);

void OvlFunc_970_2009188(void)
{
  char *new_var;
  unsigned int *r2;
  unsigned short r3;
  unsigned short r1;
  __StopTask(OvlFunc_970_2008f30);
  __StopTask(OvlFunc_970_2008f80);
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

extern short Lm970_1c18 __asm__(".Lm970_1c18");
extern short Lm970_1c1a __asm__(".Lm970_1c1a");

struct SpriteSlot970 { short f0; short f2; };
extern struct SpriteSlot970 gSpriteSlots[];

struct OamEntry970 { int attr0; int attr1; int attr2; };
extern struct OamEntry970 Lm970_1af8[] __asm__(".Lm970_1af8");

extern void __Func_8003dec(void *entry, int a);

INCLUDE_ASM("asm/maps/lalivero_ship/OvlFunc_970_20091c4.s");


#include "dma.h"

extern void OvlFunc_970_20091c4(void);

static inline void *alloc_ewram_helper(int size)
{
    return __alloc_ewram(size << 1);
}

void OvlFunc_970_20092ac(void)
{
    void *gfx;

    gfx = alloc_ewram_helper(0x80);
    Lm970_1c1a = __AllocSpriteSlot();
    DMA3_FILL(gfx, 0x11111111, 0x100);
    __UploadSpriteGFX(Lm970_1c1a, 0x80 << 1, gfx);
    Lm970_1c18 = 0x30;
    __StartTask(OvlFunc_970_20091c4, 0xc80);
}

INCLUDE_ASM("asm/maps/lalivero_ship/imports.s");
INCLUDE_ASM("asm/maps/lalivero_ship/lalivero_ship_data.s");
