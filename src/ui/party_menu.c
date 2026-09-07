// fakematch
/* unknown/sub_80a1050.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned int LoadUIHandCursorGFX();
extern void Func_80a2444();
extern void Func_80a345c();
extern void Func_80a1114();
extern void Func_80a23f4();
extern unsigned int Func_80ae908();

extern void Func_80043e0(void);
extern void _Func_80119a8(void);
extern void _ClearFlag(int);

unsigned int Func_80a1050(void) {
    Func_80043e0();
    _Func_80119a8();
    _ClearFlag(0xb3 << 1);
    _ClearFlag(0xa9 << 1);
}

extern void _SetFlag(unsigned int);
extern void _Func_8011984(void);
extern unsigned int Func_800430c(void);

unsigned int Func_80a1070(void) {
    _SetFlag(0xa9 << 1);
    _SetFlag(0xb3 << 1);
    _Func_8011984();
    return Func_800430c();
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a1090.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a10d0.s");

extern void _CloseUIBox();

void Func_80a1114(arg0) unsigned int *arg0; {
    if (arg0[0]) {
        _CloseUIBox(arg0[0]);
        arg0[0] = 0;
    }
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a112c.s");

extern void _Func_801e9d4(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4);

void Func_80a14f0(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    int i;
    int num;

    num = arg0;
    for (i = 1; i <= 15; i++) {
        num = num / 10;
        if (num <= 9) {
            break;
        }
    }
    i = i + 1;
    arg2 -= i * 8;
    _Func_801e9d4(arg0, i, arg1, arg2, arg3);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a153c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a15f0.s");

extern unsigned char GFX_UICursor_Copy[] __asm__("GFX_UICursor_Copy");
extern void *AllocSpriteSlot(void);
extern void UploadSpriteGFX(int slot, unsigned int size, unsigned char *gfx);
extern unsigned int _Func_801eadc(void *slot, unsigned int mode, unsigned int arg0, unsigned int arg2, unsigned int arg3);

unsigned int Func_80a172c(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int result;
    void *slot;

    result = 0;
    slot = AllocSpriteSlot();
    if (slot != 0) {
        UploadSpriteGFX((int)slot, 0x80, GFX_UICursor_Copy);
        result = _Func_801eadc(slot, 0x40000000, arg0, arg2, arg3);
    }
    return result;
}

// fakematch

unsigned int LoadUIHandCursorGFX(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    int slot;
    register unsigned int ret __asm__("r6");

    slot = AllocSpriteSlot();
    __asm__ volatile ("movs %0, #0" : "=r" (ret) : "r" (slot));
    if (slot != 0) {
        UploadSpriteGFX(slot, 0x80, GFX_UICursor_Copy);
        ret = _Func_801eadc(slot, 0x80 << 23, arg0, arg1, arg2);
    }
    return ret;
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a17c4.s");

extern void _Func_801ed40();

void Func_80a1804(void) {
    int unset;
    _Func_801ed40(0, unset, 0);
}

extern void Func_80a10d0(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

unsigned int Func_80a1814(unsigned int arg0)
{
    unsigned int zero;
    unsigned int box;
    unsigned int ret;
    unsigned int tmp;
    unsigned char state;
    int v;

    zero = 0;
    *(unsigned int *)(arg0 + 0x10) = zero;
    Func_80a10d0(arg0 + 0x10, 0, 0, 0xd, 5, 2);
    box = *(unsigned int *)(arg0 + 0x10);
    ret = LoadUIHandCursorGFX(box, -8, 0xb);
    *(unsigned char *)(ret + 5) = 0xd;
    *(unsigned char *)(arg0 + 0x1c) = 0xff;
    *(unsigned char *)(arg0 + 0x1d) = zero;
    *(unsigned int *)(arg0 + 0x14) = ret;
    state = 0xfe;
    *(unsigned char *)(ret + 0xf) = state;
    tmp = *(unsigned int *)(arg0 + 0x18);
    v = state - 0xff;
    *(unsigned char *)(tmp + 0xf) = v;
    return box;
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a1870.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a195c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a19a0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a1a40.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a1ac0.s");

void Func_80a1bc8(void) {}

extern void Func_80a1bdc(int a, int b, int c);

void Func_80a1bcc(void) {
    Func_80a1bdc(0x6c, 0x28, 8);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a1bdc.s");

extern void Func_80a17c4(unsigned char *);

void Func_80a1c2c(unsigned char **pp, int idx, int arg2, int arg3, int arg4)
{
    unsigned char *p;

    if (idx > 0x1f)
        idx = 0;
    p = *pp;
    *(unsigned short *)(p + 8) = ((idx / arg4) << 4) + arg3;
    *(unsigned short *)(p + 6) = ((idx % arg4) << 4) + arg2;
    Func_80a17c4(p);
}

INCLUDE_ASM("asm/ui/party_menu/Func_a1c6c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a1cb0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a1d08.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a1e38.s");
INCLUDE_ASM("asm/ui/party_menu/Func_a1f74.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a1fd4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a2144.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a21b0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a2268.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a22f4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a2324.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a23c0.s");

void Func_80a23f4(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
	if (arg0) {
		*(unsigned short *)(arg0 + 8) = arg3;
		*(unsigned short *)(arg0 + 0xc) = arg1;
		*(unsigned short *)(arg0 + 0xa) = arg4;
		*(unsigned short *)(arg0 + 0xe) = arg2;
	}
}

extern unsigned int iwram_3001e8c;

void Func_80a2408(void) {
    unsigned int addr;
    addr = iwram_3001e8c + 0xea6;
    *(unsigned char *)addr = 1;
}

void Func_80a2420(void) {
    unsigned int addr;
    addr = iwram_3001e8c + 0xea6;
    *(unsigned char *)addr = 0;
}

extern unsigned int _PlaySound();

unsigned int Func_80a2438(void) {
    _PlaySound();
    return 1;
}

extern unsigned int gKeyPress;
extern void StopTask(void *task);

void Func_80a2444(void) {
    if (gKeyPress & 8) {
        _PlaySound(0x71);
        _SetFlag(0xa8 << 1);
        StopTask(Func_80a2444);
    }
}

extern void StartTask(void *, int);

void Func_80a2474(void) {
    int priority;
    _ClearFlag(0xa8 << 1);
    priority = 0xc8 << 4;
    StartTask(Func_80a2444, priority);
}

/* Func_80a2444 is a function (defined above); the stray void* redecl removed */

void Func_80a2490(void) {
    int r0;
    r0 = _GetFlag(0xa8 << 1);
    if (r0 == 0) {
        StopTask(Func_80a2444);
    }
}

extern void _SetTextColor(int);

void Func_80a24ac(void) {
    _SetTextColor(15);
}


void Func_80a24b8(void) {
    _SetTextColor(2);
}


void Func_80a24c4(void) {
    _SetTextColor(4);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a24d0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a2680.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a32b8.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a3354.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a33d4.s");

extern unsigned int iwram_3001f2c;

void Func_80a345c(void) {
    unsigned int *p;
    unsigned char v0;
    int i;

    p = (unsigned int *)((char *)iwram_3001f2c + 0x48);
    v0 = 0xd;
    for (i = 0x1f; i >= 0; i--) {
        unsigned int e;
        e = *p++;
        if (e != 0) {
            *(unsigned char *)((char *)e + 5) = v0;
        }
    }
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a3480.s");

extern void Func_80a195c(void);
extern void WaitFrames(unsigned int nframes);

void Func_80a34c0(void) {
    unsigned int r5;
    unsigned int r2;
    unsigned int r3;

    r5 = iwram_3001f2c;
    Func_80a195c();
    Func_80a345c();
    WaitFrames(1);
    r2 = 0xbe;
    r2 <<= 1;
    r3 = r5 + r2;
    r2 = *(unsigned int *)r3;
    *(unsigned char *)(r2 + 5) = 0xd;
    Func_80a1114(r5 + 0x10, 1);
    Func_80a1114(r5 + 0x20, 1);
    r3 = 0x86;
    r3 <<= 1;
    Func_80a1114(r5 + r3, 1);
    Func_80a1114(r5 + 0x24, 1);
    Func_80a1114(r5 + 0x28, 1);
    Func_80a1114(r5 + 0x2c, 1);
    Func_80a1114(r5 + 0x30, 1);
    Func_80a1114(r5 + 0x34, 1);
    Func_80a1114(r5 + 0x38, 1);
    Func_80a1114(r5 + 0x3c, 1);
    Func_80a1114(r5 + 0x40, 1);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a355c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a35f8.s");

extern unsigned char iwram_3001f2c__a2[] __asm__("iwram_3001f2c");
extern void Func_80a9cbc(void);
extern void _Func_8016498(unsigned int);
extern void Func_80a9a5c(unsigned int, unsigned int, int);

void Func_80a38a8(unsigned int arg0) {
    unsigned int *r5;
    unsigned int r6;
    r6 = arg0;
    r5 = *(unsigned int **)iwram_3001f2c__a2;
    Func_80a9cbc();
    _Func_8016498(*(unsigned int *)((char *)r5 + 0x20));
    Func_80a9a5c(*(unsigned int *)((char *)r5 + 0x20), r6, 0);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a38d0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a3c08.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a3c98.s");
unsigned int Func_80a3ce4(int x)
{
	switch (x) {
	case 0xc1 ... 0xc4:
		return 1;
	}
	return 0;
}


void Func_80a3cf8(unsigned int arg0, unsigned int arg1) {
    unsigned int r5;
    unsigned int r6;

    r5 = iwram_3001f2c;
    r5 += 0x86 * 2;
    r6 = arg1;
    _Func_8016498(*(unsigned int *)r5);
    _Func_801e7c0(r6, *(unsigned int *)r5, 0, 0);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a3d24.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a3d6c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a3d9c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a3ddc.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a3e28.s");

extern unsigned char *iwram_3001f2c__a4 __asm__("iwram_3001f2c");
extern unsigned int _GetUnit(unsigned int arg0);
extern unsigned int Func_80a3ddc(unsigned int unit, unsigned short *ptr, int flag);
extern void Func_80a1cb0(unsigned int arg1);
extern void Func_80a3e28(unsigned short *ptr, int flag);
extern unsigned int Func_80a3d6c(unsigned int arg0);
extern void _Func_801e7c0(unsigned int msg, unsigned int arg1, int arg2, int arg3);

void Func_80a3e88(unsigned int arg0, unsigned int arg1) {
    unsigned char *r7;
    unsigned short *r5;
    unsigned char *r3;
    unsigned int u;
    unsigned int ret;

    r7 = iwram_3001f2c__a4;
    u = _GetUnit(arg0);
    r5 = (unsigned short *)(r7 + 0xe4 * 2);
    ret = Func_80a3ddc(u, r5, 0);
    r3 = r7 + 0x86 * 4;
    *r3 = (unsigned char) ret;
    _Func_8016498(*(unsigned int *)(r7 + 0x20));
    Func_80a1cb0(arg1);
    Func_80a3e28(r5, 0);
    if (Func_80a3d6c(arg0) == 0) {
        _Func_801e7c0(0xad7, *(unsigned int *)(r7 + 0x20), 8, 0x18);
    }
}

void Func_80a3eec(void) {}

INCLUDE_ASM("asm/ui/party_menu/Func_80a3ef0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a40ac.s");

extern unsigned int Laf2e4[] __asm__(".Laf2e4");

unsigned int Func_80a4110(int arg0, int arg1)
{
    if (arg0 > 2 || arg1 > 2 || arg0 < 0 || arg1 < 0)
        return 0;
    return Laf2e4[arg1 * 3 + arg0];
}

int Func_80a413c(int arg0, int arg1)
{
    if (arg1 == 0)
        return 0x1e;
    return 0x26;
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a414c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a448c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a45cc.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a46b4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a4754.s");

INCLUDE_ASM("asm/ui/party_menu/Func_80a47b4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a4800.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a4924.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a4db4.s");

extern unsigned char iwram_3001f2c__a5[] __asm__("iwram_3001f2c");

void Func_80a4e20(void)
{
	int *r3 = *(int **)iwram_3001f2c__a5;
	Func_80a23f4(*(int *)((char *)r3 + 0x20), 0xd, 5, 0x11, 0xa);
}

extern unsigned char iwram_3001f2c__a6[] __asm__("iwram_3001f2c");

void Func_80a4e44(void)
{
	unsigned int *r3 = *(unsigned int **)iwram_3001f2c__a6;
	Func_80a23f4(*(int *)((char *)r3 + 0x20), 0xd, 3, 0x11, 0xa);
}

extern unsigned char iwram_3001f2c__a7[] __asm__("iwram_3001f2c");

void Func_80a4e68(void)
{
    unsigned int r3;
    unsigned int r2;
    unsigned int r0;
    r3 = *(unsigned int *)iwram_3001f2c__a7;
    r2 = 0x86;
    r2 = r2 << 1;
    r3 = r3 + r2;
    r0 = *(unsigned int *)r3;
    Func_80a23f4(r0, 0xd, 0, 0x11, 5);
}

extern unsigned char iwram_3001f2c__a8[] __asm__("iwram_3001f2c");

void Func_80a4e90(void) {
    unsigned int r3;
    unsigned int r0;
    r3 = *(unsigned int *)iwram_3001f2c__a8;
    r0 = *(unsigned int *)(r3 + (0x86 << 1));
    Func_80a23f4(r0, 0xd, 0, 0x11, 6);
}

extern unsigned char iwram_3001f2c__a9[] __asm__("iwram_3001f2c");

void Func_80a4eb8(void) {
    unsigned int r3;
    unsigned int r0;
    r3 = *(unsigned int *)iwram_3001f2c__a9;
    r0 = *(unsigned int *)(r3 + (0x86 << 1));
    Func_80a23f4(r0, 0xd, 0, 0x11, 7);
}

extern unsigned char iwram_3001f2c__a10[] __asm__("iwram_3001f2c");

void Func_80a4ee0(void) {
    unsigned int r3;
    unsigned int r0;
    r3 = *(unsigned int *)iwram_3001f2c__a10;
    r0 = *(unsigned int *)(r3 + (0x86 << 1));
    Func_80a23f4(r0, 0xd, 0, 0x11, 3);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a4f08.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a51d0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a524c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a5388.s");

extern unsigned char iwram_3001f2c__a11[] __asm__("iwram_3001f2c");
extern unsigned char GFX_Equip_StatUp_Copy[] __asm__("GFX_Equip_StatUp_Copy");
extern unsigned char GFX_Equip_StatDown_Copy[] __asm__("GFX_Equip_StatDown_Copy");

void Func_80a5534(void) {
    unsigned char *r5;
    int r0;

    r5 = *(unsigned char **)iwram_3001f2c__a11;
    r0 = AllocSpriteSlot();
    *(unsigned short *)(r5 + 0x392) = r0;
    UploadSpriteGFX(r0, 0x80, GFX_Equip_StatUp_Copy);
    r0 = AllocSpriteSlot();
    r5 += 0xe5 << 2;
    *(unsigned short *)r5 = r0;
    UploadSpriteGFX(r0, 0x80, GFX_Equip_StatDown_Copy);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a5578.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a5614.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a56c8.s");

/* FF: int stub_080A5780(void) */
unsigned int Func_80a5780(void) {
    return 1;
}
void Func_80a5784(void) {}

INCLUDE_ASM("asm/ui/party_menu/Func_80a5788.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a5b94.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a5cc0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a5fe0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a602c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a60d4.s");

extern unsigned char *iwram_3001f2c__a12 __asm__("iwram_3001f2c");

void Func_80a6384(unsigned int arg0) {
    unsigned char *r7;
    unsigned short *r6;
    unsigned char *r5;
    unsigned int u;
    unsigned int ret;

    r7 = iwram_3001f2c__a12;
    u = _GetUnit(arg0);
    r6 = (unsigned short *)(r7 + 0xe4 * 2);
    ret = Func_80a68ec(u, r6, 2);
    r5 = r7 + 0x86 * 4;
    *r5 = (unsigned char) ret;
    _Func_8016498(*(unsigned int *)(r7 + 0x20));
    Func_80a1bdc(0x6c, 0x20, 8);
    Func_80a68a8(r6);
    if (*r5 == 0) {
        _Func_801e7c0(0xaf2, *(unsigned int *)(r7 + 0x20), 0, 0x18);
    }
}

/* FF: int stub_080A63DC(void) */
unsigned int Func_80a63dc(void) {
    return 1;
}
void Func_80a63e0(void) {}

INCLUDE_ASM("asm/ui/party_menu/Func_80a63e4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a65e4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a6614.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a6794.s");

extern unsigned char iwram_3001f2c__a13[] __asm__("iwram_3001f2c");

void Func_80a6874(void)
{
    unsigned int r5;
    unsigned int r3;

    r5 = *(unsigned int *)iwram_3001f2c__a13;
    Func_80a195c();
    _CloseUIBox(*(unsigned int *)(r5 + 0x10), 1);
    _CloseUIBox(*(unsigned int *)(r5 + 0x20), 1);
    r3 = 0x86;
    r3 <<= 1;
    r5 += r3;
    _CloseUIBox(*(unsigned int *)r5, 1);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a68a8.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a68ec.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a6a00.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a6a98.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a6b64.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a6ccc.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a735c.s");

INCLUDE_ASM("asm/ui/party_menu/Func_80a7380.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a7440.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a7478.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a76d0.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a77a4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a7850.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a7a34.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a7d68.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a7f44.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a8034.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a8088.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a8114.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a847c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a8508.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a8578.s");

INCLUDE_ASM("asm/ui/party_menu/Func_80a8604.s");

void Func_80a8904(void) {
    register int i;
    for (i = 0xff; i >= 0; i--) {
        asm("");
    }
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a8914.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a8b10.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a8b8c.s");
INCLUDE_ASM("asm/ui/party_menu/LoadMoveRangeIcons.s");

extern void _Func_8019000(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80a8cc0(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    _Func_8019000(a0, (a3 * 2 + 0xf281) | 0x400, a1, a2, 0);
    _Func_8019000(a0, a3 * 2 + 0xf280, a1 + 1, a2, 0);
    _Func_8019000(a0, a3 * 2 + 0xf281, a1 + 2, a2, 0);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a8d34.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a8f40.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a90bc.s");

/* FF: int stub_080A9370(void) */
unsigned int Func_80a9370(void) {
    return 1;
}


void Func_80a9374(unsigned int arg0, unsigned int arg1) {
    unsigned int r5;

    r5 = iwram_3001f2c;
    _GetUnit(arg1);
    Func_80a345c();
    r5 += 0xe4 << 1;
    Func_80a68a8(r5);
}

void Func_80a939c(void) {}
void Func_80a93a0(void) {}

INCLUDE_ASM("asm/ui/party_menu/Func_80a93a4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a9598.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a96d8.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a99b0.s");

/* FF: int stub_080A9A58(void) */
unsigned int Func_80a9a58(void) {
    return 1;
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a9a5c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a9aec.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a9b94.s");


void Func_80a9bd8(unsigned char *p, int idx, int yoff, int xoff, int arg4) {
    if (idx > 0x1f)
        idx = 0;
    *(unsigned short *)(p + 8) = ((idx / arg4) << 4) + xoff;
    *(unsigned short *)(p + 6) = ((idx % arg4) << 4) + yoff;
    Func_80a17c4(p);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a9c18.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a9cbc.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a9cf8.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a9d3c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a9d84.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80a9dc4.s");

extern void Func_80a22f4(void);
extern void Func_80a2144(int);

void Func_80a9e34(void) {
	Func_80a22f4();
	Func_80a2144(0xd);
}

void Func_80a9e44(void) {}

INCLUDE_ASM("asm/ui/party_menu/Func_80a9e48.s");

/* FF: int stub_080A9F0C(void) */
unsigned int Func_80a9f0c(void) {
    return 1;
}

INCLUDE_ASM("asm/ui/party_menu/Func_80a9f10.s");

extern int _GetItemInfo(void);
extern void Func_80aa460(int);

void Func_80aa448(void) {
    unsigned char *p = (unsigned char *)_GetItemInfo();
    Func_80aa460(*(unsigned short *)(p + 0x28) & 0x3fff);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80aa460.s");

int Func_80aa534(void) { return 0; }

int Func_80aa538(int arg0, int arg1) {
    return (arg0 + arg1) % arg1;
}


unsigned int Func_80aa544(unsigned int arg0)
{
    unsigned short *p;
    unsigned int v;
    int i;

    p = (unsigned short *)(iwram_3001f2c + 0x9a * 2);
    arg0 += 0x3d;
    v = 0x20;
    for (i = 3; i >= 0; i--) {
        p[0] = v;
        p[8] = arg0;
        v += 0x38;
        p++;
    }
    return arg0;
}

INCLUDE_ASM("asm/ui/party_menu/Func_80aa56c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80aa768.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80aac84.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80aad10.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80aae14.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80aaf58.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80aafb8.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ab1f4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ab21c.s");

extern void Func_80ab21c(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80ab2ec(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4, unsigned int arg5)
{
    unsigned int r4;
    unsigned int r5;
    unsigned int r6;
    r4 = arg0;
    r5 = arg5;
    r6 = arg3;
    Func_80ab21c(
        *(unsigned short *)((char *)r4 + 0xc) + arg1 + 1,
        *(unsigned short *)((char *)r4 + 0xe) + arg2 + 1,
        r6,
        arg4,
        r5
    );
}

INCLUDE_ASM("asm/ui/party_menu/Func_80ab314.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ab5e4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ac8fc.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80aca04.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80acab8.s");

INCLUDE_ASM("asm/ui/party_menu/Func_80ad274.s");

extern int _DeleteSprite(int task);
extern int Func_80ad35c;

void Func_80ad318(void) {
    unsigned char *base;
    int i;

    base = (unsigned char *)iwram_3001f2c;
    for (i = 0x89; i <= 0x8c; i++) {
        if (*(unsigned int *)(base + (i << 2)) != 0) {
            _DeleteSprite(*(unsigned int *)(base + (i << 2)));
            *(unsigned int *)(base + (i << 2)) = 0;
        }
    }
    StopTask((int)&Func_80ad35c);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80ad35c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ad40c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ad508.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ad5b4.s");
extern unsigned int *iwram_3001f2c__c1 __asm__("iwram_3001f2c");

void Func_80ad5f4(unsigned int arg0, unsigned int arg1)
{
    unsigned int idx;
    unsigned int *base = iwram_3001f2c__c1;
    idx = (arg0 + 0x91) * 4;
    *(unsigned int *)((char *)base + idx) = arg1;
}

extern unsigned char iwram_3001f2c__b1[] __asm__("iwram_3001f2c");   /* @ 0x03001F2C */
extern unsigned int Laf304[] __asm__(".Laf304");
extern void *_CreateSprite(unsigned int id);
extern void _Sprite_SetAnim(unsigned char *sprite, unsigned int animID);

unsigned int Func_80ad608(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *base;
    unsigned int idx;
    unsigned char *sprite;

    base = *(unsigned char **)iwram_3001f2c__b1;
    idx = (arg0 << 2) + 0x224;
    if (*(unsigned int *)(base + idx) != 0) {
        _DeleteSprite(*(unsigned int *)(base + idx));
        *(unsigned int *)(base + idx) = 0;
    }
    sprite = _CreateSprite(Laf304[arg1]);
    if (sprite != 0) {
        _Sprite_SetAnim(sprite, arg2);
    }
    *(unsigned char **)(base + idx) = sprite;
    return 1;
}

extern unsigned char iwram_3001f2c__b2[] __asm__("iwram_3001f2c");   /* @ 0x03001F2C */
extern void Func_80ad40c(void);

void Func_80ad658(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001f2c__b2;
    int i;

    for (i = 0x89; i <= 0x8c; i++) {
        if (*(unsigned int *)(base + (i << 2)) != 0) {
            _DeleteSprite(*(unsigned int *)(base + (i << 2)));
            *(unsigned int *)(base + (i << 2)) = 0;
        }
    }
    StopTask((void *)&Func_80ad40c);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80ad69c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ad6d4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ae2f4.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ae714.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ae778.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ae7fc.s");

extern unsigned char iwram_3001f2c__a17[] __asm__("iwram_3001f2c");
extern unsigned char GFX_Djinn_StatUp_Copy[] __asm__("GFX_Djinn_StatUp_Copy");
extern unsigned char GFX_Djinn_StatDown_Copy[] __asm__("GFX_Djinn_StatDown_Copy");

void Func_80ae88c(void) {
    unsigned char *r5;
    int r0;

    r5 = *(unsigned char **)iwram_3001f2c__a17;
    r0 = AllocSpriteSlot();
    *(unsigned short *)(r5 + 0x392) = r0;
    if (r0 != -1) {
        UploadSpriteGFX(r0, 0x80, GFX_Djinn_StatUp_Copy);
    }
    r0 = AllocSpriteSlot();
    *(unsigned short *)(r5 + (0xe5 << 2)) = r0;
    if (r0 != -1) {
        UploadSpriteGFX(r0, 0x80, GFX_Djinn_StatDown_Copy);
    }
}

extern unsigned char iwram_3001f2c__a18[] __asm__("iwram_3001f2c");
extern void Func_8003f3c(unsigned short);

void Func_80ae8dc(void)
{
    unsigned char *r5;
    r5 = *(unsigned char **)iwram_3001f2c__a18;
    Func_8003f3c(*(unsigned short *)(r5 + 0x392));
    Func_8003f3c(*(unsigned short *)(r5 + 0xe5 * 4));
}

extern void *galloc_ewram(int index, unsigned int size);
extern void _LoadMoveIcon(unsigned int a0, unsigned int a1, unsigned int *a2, unsigned int *a3, unsigned int a4);
extern unsigned int UploadSprite2(unsigned int slot, void *gfx);
extern void gfree(int index);

unsigned int Func_80ae908(unsigned int arg0, unsigned int arg1)
{
    void *p;
    unsigned int local1;
    unsigned int local2;
    unsigned int result;

    p = galloc_ewram(0x11, 0xc1 << 3);
    local1 = arg1;
    _LoadMoveIcon(arg0, 0, &local1, &local2, 1);
    result = UploadSprite2(arg1, (void *)((unsigned int)p + (0x80 << 3)));
    gfree(0x11);
    return result;
}


unsigned int Func_80ae958(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
	unsigned int slot;

	slot = AllocSpriteSlot();
	if (slot == 0x60)
		return;
	Func_80ae908(arg3, slot);
	return _Func_801eadc(slot, 0x40000000, arg0, arg1, arg2);
}

INCLUDE_ASM("asm/ui/party_menu/Func_80ae99c.s");
INCLUDE_ASM("asm/ui/party_menu/Func_80ae9f0.s");
