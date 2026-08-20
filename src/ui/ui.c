/* ui/ui.c -- consolidated TU. */
#include "nonmatching.h"

extern void Func_8016498(unsigned char *p);
extern void Func_80164ac();
extern void Func_8016594(unsigned char *arg0);
extern void Func_8015ec0();
extern void Func_801789c();
extern unsigned int Func_8017364();

INCLUDE_ASM("asm/ui/ui/ClearUIRegion.s");
INCLUDE_ASM("asm/ui/ui/Func_8016230.s");
INCLUDE_ASM("asm/ui/ui/CreateUIBox.s");

extern void WaitFrames(unsigned int nframes);

void UIBox_WaitAnim(unsigned char *box)
{
    if ((*(unsigned short *)(box + 0x16) & 2) == 0) {
        while (*(short *)(box + 0x1a) != 0) {
            WaitFrames(1);
        }
    }
}

INCLUDE_ASM("asm/ui/ui/CloseUIBox.s");


void Func_8016478(void *arg0) {
    unsigned char *r5;
    unsigned short r2;
    int r3;
    r5 = (unsigned char *)arg0;
    r2 = *(unsigned short *)(r5 + 0x16);
    r3 = 8;
    r3 &= r2;
    if (r3 == 0) {
        Func_8016498(r5);
        Func_80164ac(r5);
    }
}

extern int FillUIRegion(int a, int b, int c, int d);

void Func_8016498(unsigned char *p)
{
    FillUIRegion(*(unsigned short *)(p + 0xc), *(unsigned short *)(p + 0xe),
                 *(unsigned short *)(p + 8), *(unsigned short *)(p + 0xa));
}


void Func_80164ac(unsigned int *arg0)
{
    unsigned int *r3;
    unsigned int *r5;
    unsigned int *r0;
    r3 = arg0;
    r5 = (unsigned int *)0;
    if (r3 == (unsigned int *)0)
        return;
    r0 = (unsigned int *)*r3;
    r3[1] = (unsigned int)r3;
    r3[0] = (unsigned int)r5;
    if (r0 == (unsigned int *)0)
        return;
    do {
        r5 = (unsigned int *)*r0;
        Func_8016594(r0);
        r0 = r5;
    } while (r0 != (unsigned int *)0);
}

INCLUDE_ASM("asm/ui/ui/Func_80164d4.s");

void Func_801656c(int *arg0) {
    int *r2;
    int *r3;
    r2 = arg0;
    r3 = (int *)*arg0;
    while (r3 != (int *)0) {
        r2 = r3;
        r3 = (int *)*r2;
    }
    arg0[1] = (int)r2;
}

void Func_8016584(unsigned int arg0, unsigned int arg1)
{
    if (arg0 != 0) {
        *(unsigned int *)(*(unsigned int *)(arg0 + 4)) = arg1;
        *(unsigned int *)(arg0 + 4) = arg1;
    }
}

extern int iwram_3001e8c__a1 __asm__("iwram_3001e8c");
extern void Func_8003f3c(unsigned int arg0);

void Func_8016594(unsigned char *arg0) {
    Func_8015ec0((unsigned int)arg0);
    if (arg0[4] != 0) {
        Func_8003f3c(arg0[0xe]);
        if (arg0[4] == 2) {
            unsigned char *base = *(unsigned char **)&iwram_3001e8c__a1;
            unsigned int idx = ((arg0[0x19] >> 4) << 1) + 0x12d0;
            *(unsigned short *)(base + idx) = 0x3e7;
        }
    }
    arg0[5] = 0;
}

INCLUDE_ASM("asm/ui/ui/Func_80165d8.s");
INCLUDE_ASM("asm/ui/ui/Func_8016670.s");
INCLUDE_ASM("asm/ui/ui/Func_801671c.s");
INCLUDE_ASM("asm/ui/ui/Func_8016738.s");
INCLUDE_ASM("asm/ui/ui/Func_8016758.s");
INCLUDE_ASM("asm/ui/ui/Func_80167ac.s");

void Func_80167d8(unsigned int r0) {
    unsigned short r3;
    r3 = 2;
    *(unsigned short *)(r0 + 0x1c) = r3;
}

INCLUDE_ASM("asm/ui/ui/Func_80167e0.s");
INCLUDE_ASM("asm/ui/ui/Func_8016868.s");
INCLUDE_ASM("asm/ui/ui/AdvanceMsgText.s");
INCLUDE_ASM("asm/ui/ui/Func_8016f2c.s");
INCLUDE_ASM("asm/ui/ui/Func_8017004.s");
INCLUDE_ASM("asm/ui/ui/Func_80170c4.s");
INCLUDE_ASM("asm/ui/ui/FillUIRegion.s");
INCLUDE_ASM("asm/ui/ui/Func_8017248.s");

extern unsigned char iwram_3001e8c__a2[] __asm__("iwram_3001e8c");

unsigned int Func_8017364(void)
{
    char *p;
    void *obj;
    int i;

    p = (char *)(*(unsigned int *)iwram_3001e8c__a2) + 0x620;
    i = 0;
    do {
        obj = *(void **)p;
        if (obj != 0) {
            if (*(unsigned short *)((char *)obj + 0x14) == 0) {
                return 0;
            }
        }
        i++;
        p += 0x28;
    } while (i != 3);
    return 1;
}

unsigned int Func_8017394(unsigned char *box)
{
    if (*(unsigned short *)(box + 0x16) == 0)
        if (*(short *)(box + 0x1a) == 0)
            return 1;
    return 0;
}

INCLUDE_ASM("asm/ui/ui/Func_80173ac.s");
INCLUDE_ASM("asm/ui/ui/Func_80173f4.s");

extern void *iwram_3001e8c__a3 __asm__("iwram_3001e8c");
extern int UploadSpriteGFX(int slot, unsigned int size, unsigned char *gfx);
extern void StartTask(void *task, int priority);

void Func_8017464(int param_1)
{
    unsigned char *r5;
    unsigned short gfxRes;
    unsigned short *pA;
    unsigned short vA;
    unsigned short *pB;
    unsigned short vB;
    unsigned short *pC;
    unsigned short vC;
    unsigned short *pD;
    unsigned short vD;
    unsigned short *pE;
    int prio;

    r5 = (unsigned char *)iwram_3001e8c__a3;
    if (param_1 != 0) {
        gfxRes = (unsigned short)UploadSpriteGFX(0x5f, 0x80 << 6, 0);
        *(unsigned short *)(r5 + 0x12b8) = gfxRes;
    }
    pA = (unsigned short *)(r5 + 0x12b0);
    vA = 9;
    *pA = vA;
    pB = (unsigned short *)(r5 + 0xea8);
    vB = 10;
    *pB = vB;
    pC = (unsigned short *)(r5 + 0xeac);
    vC = 0;
    *pC = vC;
    pD = (unsigned short *)(r5 + 0xeae);
    vD = 15;
    *pD = vD;
    pE = (unsigned short *)(r5 + 0x12b2);
    *pE = vC;
    prio = 0xc8 << 4;
    StartTask(Func_801789c, prio);
}

extern unsigned char iwram_3001ee4[];
extern void CloseUIBox(void *, int);

void Func_80174d8(void) {
    unsigned int **r5;
    r5 = *(unsigned int ***)iwram_3001ee4;
    if (r5[0]) {
        CloseUIBox(r5[0], 1);
        r5[0] = 0;
    }
}

INCLUDE_ASM("asm/ui/ui/PrintBattleText.s");

extern void PrintBattleText(void);

void Func_80175a0(void) {
    PrintBattleText();
    while (!Func_8017364()) {
        WaitFrames(1);
    }
    WaitFrames(1);
}

INCLUDE_ASM("asm/ui/ui/Func_80175c0.s");

extern unsigned char *iwram_3001e8c__a4 __asm__("iwram_3001e8c");

void Func_8017620(unsigned int arg0)
{
    unsigned char *p = iwram_3001e8c__a4;
    if (p != (unsigned char *)0) {
        if (arg0 & 1)
            *(unsigned char *)(p + 0x12fa) = 1;
        if (arg0 & 2)
            *(unsigned char *)(p + 0x12fb) = 1;
    }
}

INCLUDE_ASM("asm/ui/ui/Func_8017658.s");
INCLUDE_ASM("asm/ui/ui/Func_801776c.s");

extern void Func_8016f2c(void);
extern void Func_8016868(void);
extern void Func_80191cc(void);

void Func_801789c(void) {
    Func_8016f2c();
    Func_8016868();
    Func_80191cc();
}
INCLUDE_ASM("asm/ui/ui/DrawMsgGlyph.s");
INCLUDE_ASM("asm/ui/ui/Func_8017a64.s");
INCLUDE_ASM("asm/ui/ui/Func_8017aa4.s");
INCLUDE_ASM("asm/ui/ui/Func_8017c1c.s");
INCLUDE_ASM("asm/ui/ui/Func_8017c8c.s");
INCLUDE_ASM("asm/ui/ui/PrintNum.s");

INCLUDE_ASM("asm/ui/ui/Func_8017e88.s");
INCLUDE_ASM("asm/ui/ui/BufferString.s");
INCLUDE_ASM("asm/ui/ui/Func_801868c.s");

extern int BufferString(unsigned int, int);
extern void Func_8018850(int, unsigned int, unsigned int, int);

void Func_8018790(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int r5 = arg1;
    unsigned int r6 = arg2;
    Func_8018850(BufferString(arg0, 0), r5, r6, 0);
}

INCLUDE_ASM("asm/ui/ui/TextBox.s");
INCLUDE_ASM("asm/ui/ui/DialogueBox.s");
INCLUDE_ASM("asm/ui/ui/Func_8018850.s");
INCLUDE_ASM("asm/ui/ui/Func_8018a50.s");

INCLUDE_ASM("asm/ui/ui/DrawText.s");
INCLUDE_ASM("asm/ui/ui/Func_8018efc.s");
INCLUDE_ASM("asm/ui/ui/Func_8019000.s");
INCLUDE_ASM("asm/ui/ui/Func_801908c.s");

INCLUDE_ASM("asm/ui/ui/Func_80191cc.s");

extern void DecompressString(unsigned int param_1, unsigned int param_2, int param_3);

void DecompressString2(unsigned int param_1, unsigned int param_2) {
    DecompressString(param_1, param_2, 0x7fffffff);
}

INCLUDE_ASM("asm/ui/ui/Func_801965c.s");
INCLUDE_ASM("asm/ui/ui/DecompressString.s");

int *Func_80197b4(int *p) {
    if (*p != 0)
        *p = 0;
    return p;
}

INCLUDE_ASM("asm/ui/ui/Func_80197c4.s");
INCLUDE_ASM("asm/ui/ui/Func_8019854.s");
INCLUDE_ASM("asm/ui/ui/Func_80198dc.s");
INCLUDE_ASM("asm/ui/ui/Func_8019908.s");
INCLUDE_ASM("asm/ui/ui/Func_8019944.s");
INCLUDE_ASM("asm/ui/ui/Func_801999c.s");
INCLUDE_ASM("asm/ui/ui/Func_80199ec.s");
INCLUDE_ASM("asm/ui/ui/Func_8019a54.s");
INCLUDE_ASM("asm/ui/ui/Func_8019aa0.s");

int Func_8019ba0(int stringID) {
    return BufferString(stringID, 1);
}

INCLUDE_ASM("asm/ui/ui/HuffStr_Start.s");
INCLUDE_ASM("asm/ui/ui/Func_8019bfc.s");
INCLUDE_ASM("asm/ui/ui/Func_8019d0c.s");

INCLUDE_ASM("asm/ui/ui/GetPortrait.s");
INCLUDE_ASM("asm/ui/ui/Func_8019da8.s");
INCLUDE_ASM("asm/ui/ui/Func_8019e48.s");
