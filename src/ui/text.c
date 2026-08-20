// fakematch
/* ui/text.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned int Func_801f704();

INCLUDE_ASM("asm/ui/text/Func_801de5c.s");
INCLUDE_ASM("asm/ui/text/Func_801e260.s");
INCLUDE_ASM("asm/ui/text/Func_801e318.s");
INCLUDE_ASM("asm/ui/text/Func_801e3c8.s");

void Func_801e418(void) {}

INCLUDE_ASM("asm/ui/text/Func_801e41c.s");
INCLUDE_ASM("asm/ui/text/SetTextColor.s");

extern unsigned int iwram_3001e8c;

void SetTextBold(unsigned short arg0) {
    unsigned int ptr = iwram_3001e8c;
    ptr += 0xeac;
    *(unsigned short *)ptr = arg0;
}

INCLUDE_ASM("asm/ui/text/DrawSmallText.s");
INCLUDE_ASM("asm/ui/text/Func_801e7c0.s");
INCLUDE_ASM("asm/ui/text/Func_801e858.s");
INCLUDE_ASM("asm/ui/text/Func_801e8b0.s");
INCLUDE_ASM("asm/ui/text/UIDrawText.s");

unsigned char *PrintNum(unsigned char *dest, unsigned int num, unsigned int param_3);
void Func_801e858(unsigned char *dest, unsigned int arg2, unsigned int arg3, unsigned int arg4);

void Func_801e9a0(unsigned int num, unsigned int param_3, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
    unsigned char buf[16];
    unsigned char *ret;

    ret = PrintNum(buf, num, param_3);
    Func_801e858(ret, arg2, arg3, arg4);
}

void Func_801e8b0(void *dest, unsigned int arg2, unsigned int arg3, unsigned int arg4);

void Func_801e9d4(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
    char buffer[16];
    void *pDest;

    pDest = PrintNum(buffer, arg0, arg1);
    Func_801e8b0(pDest, arg2, arg3, arg4);
}

void UIDrawText(char *param_1, unsigned int param_2, unsigned int param_3, unsigned int param_4);

void Func_801ea08(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4)
{
    char buf[16];
    char *pcVar1;

    pcVar1 = PrintNum(buf, arg0, arg1);
    UIDrawText(pcVar1, arg2, arg3, arg4);
}

INCLUDE_ASM("asm/ui/text/Func_801ea3c.s");
INCLUDE_ASM("asm/ui/text/Func_801eadc.s");

extern int UploadIcon(unsigned int param_1, unsigned int param_2);
extern int Func_801eadc(unsigned int a, unsigned int b, unsigned int c, unsigned int d, unsigned int e);

unsigned int Func_801eb64(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4) {
    int ret;

    ret = UploadIcon(arg0, arg1);
    if (ret < 0)
        return 0;
    return Func_801eadc(ret, 0x80 << 23, arg2, arg3, arg4);
}

extern int AllocSpriteSlot(void);
extern int LoadInventoryIcon(unsigned int arg0, unsigned int arg1, unsigned int slot);

unsigned int Func_801eb90(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4) {
    unsigned int slot;

    slot = AllocSpriteSlot();
    if (slot == 0x60)
        return 0;
    LoadInventoryIcon(arg0, arg1, slot);
    return Func_801eadc(slot, 0x80 << 23, arg2, arg3, arg4);
}

INCLUDE_ASM("asm/ui/text/Func_801ebd8.s");

int LoadUIBanner(unsigned int, unsigned int, unsigned int);

int Func_801ec24(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
	int slot;
	int ret;

	slot = AllocSpriteSlot();
	ret = 0;
	if (slot != 0x60) {
		LoadUIBanner(arg0, 0, slot);
		ret = Func_801eadc(slot, 0x40000000, arg1, arg2, arg3);
	}
	return ret;
}

INCLUDE_ASM("asm/ui/text/Func_801ec6c.s");
INCLUDE_ASM("asm/ui/text/Func_801ed40.s");

void Func_801edcc(unsigned int arg0, int arg1)
{
    if (arg0 != 0)
    {
        unsigned char *p = (unsigned char *)arg0;
        int z = 0;
        *(unsigned char *)(p + 5) = arg1;
        *(unsigned short *)(p + 12) = z;
    }
}

void Func_801eddc(unsigned int arg0, unsigned int arg1) {
    if (arg0 != 0) {
        *(unsigned char *)(arg0 + 0xf) = ~arg1;
    }
}

INCLUDE_ASM("asm/ui/text/Func_801edec.s");
INCLUDE_ASM("asm/ui/text/Func_801ee68.s");
INCLUDE_ASM("asm/ui/text/Func_801eea0.s");
INCLUDE_ASM("asm/ui/text/Func_801ef08.s");
INCLUDE_ASM("asm/ui/text/Func_801ef68.s");
INCLUDE_ASM("asm/ui/text/Func_801f088.s");
INCLUDE_ASM("asm/ui/text/Func_801f200.s");

extern unsigned char iwram_3001e90[];
extern void CloseUIBox(void *, int);
extern void gfree(int);

void Func_801f5d4(void) {
    unsigned int *r3 = *(unsigned int **)iwram_3001e90;
    CloseUIBox((void *)*r3, 1);
    gfree(0x10);
}

INCLUDE_ASM("asm/ui/text/Func_801f5f0.s");
INCLUDE_ASM("asm/ui/text/Func_801f680.s");

extern unsigned char iwram_3001f1c[];

unsigned int Func_801f704(void) {
    unsigned char *r2;
    unsigned int r0;
    unsigned char r3;
    r2 = *(unsigned char **)iwram_3001f1c + (0x82 << 5);
    r0 = 0;
    do {
        r3 = *(unsigned char *)(r2 + 0x1c);
        if (r3 == 0)
            return r0;
        r0++;
        r2 += 0x40;
    } while (r0 <= 2);
    r0 = 0x3e7;
    return r0;
}

INCLUDE_ASM("asm/ui/text/Func_801f730.s");
INCLUDE_ASM("asm/ui/text/Func_801f77c.s");
INCLUDE_ASM("asm/ui/text/PrepareSaveHeader.s");
INCLUDE_ASM("asm/ui/text/Func_801f9b4.s");

extern int Func_80056cc(void);
extern int Func_801776c(int, int);
extern int SomethingSaveHeader(unsigned int, int);
extern void Func_8005cf8(void);
extern int _MSG_0a;
extern int _MSG_0b;
extern unsigned char ewram_2000000[];

unsigned int Func_801fa3c(unsigned int arg0) {
    int r6;
    int r8;
    unsigned char *r5;

    r8 = 0;
    r6 = Func_80056cc();
    if (r6 != 0) {
        Func_801776c((int)&_MSG_0a, 1);
        r8 = -9;
    } else {
        r5 = ewram_2000000;
        r6 = SomethingSaveHeader(arg0, (int)r5);
        r5 += 0x1000;
        r6 |= SomethingSaveHeader(arg0 + 3, (int)r5);
        if (r6 != 0) {
            Func_801776c((int)&_MSG_0b, 1);
            r8 = -3;
        }
    }
    Func_8005cf8();
    return (unsigned int)r8;
}

INCLUDE_ASM("asm/ui/text/Func_801faa8.s");

extern int Func_8017364(void);
extern void WaitFrames(int);
extern int YesNoMenu(int, int, int, int);
extern void Func_8019a54(void);
extern void _PlaySound(int);
extern int Func_801faa8(void);
extern int _MSG_14;
extern int _MSG_17;

int Func_801fb48(void) {
    int r5;
    int a, b, c;

    a = 8;
    b = 0xc;
    c = 2;
    __asm__ volatile ("" : : "r"(a), "r"(b), "r"(c));
    Func_8017658((int)&_MSG_14, a, b, c);
    while (Func_8017364() == 0) {
        WaitFrames(1);
    }
    if (YesNoMenu(1, 0, 0, 1) != 0) {
        Func_8019a54();
    } else {
        Func_8019a54();
        _PlaySound(0x55);
        r5 = Func_801faa8();
        if (r5 >= 0) {
            Func_801776c((int)&_MSG_17, 1);
        }
    }
    return r5;
}

extern void Func_8005c68(void);
extern int Func_8020244(int, int);
extern int Func_8005a78(int, int);
extern int _MSG_0c;
extern int _MSG_0d;
extern int _MSG_19;

int Func_801fba8(void) {
    int r5, r6, r7, r8, r10;

    r8 = 0;
    r6 = Func_80056cc();
    if (r6 != 0) {
        Func_801776c((int)&_MSG_0a, 1);
        r8 = -9;
    } else {
        Func_8005c68();
        r5 = Func_8020244(0, 2);
        if (r5 == -1) {
            r8 = r5;
        } else {
            r7 = (int)ewram_2000000;
            r6 = Func_8005a78(r5, r7);
            r10 = r7 + 0x1000;
            r6 |= Func_8005a78(r5 + 3, r10);
            if (r6 != 0) {
                Func_801776c((int)&_MSG_0c, 1);
                r8 = -2;
            } else {
                r5 = Func_801f704();
                if (r5 == 0x3e7) {
                    Func_801776c((int)&_MSG_0d, 1);
                    r8 = -5;
                } else {
                    r6 = SomethingSaveHeader(r5, r7);
                    r6 |= SomethingSaveHeader(r5 + 3, r10);
                    if (r6 != 0) {
                        Func_801776c((int)&_MSG_0d, 1);
                        r8 = -3;
                    } else {
                        Func_801776c((int)&_MSG_19, 1);
                    }
                }
            }
        }
    }
    Func_8005cf8();
    return (unsigned int)r8;
}

extern int Func_8005ac0(int);
extern int _MSG_16;
extern int _MSG_18;

int Func_801fc84(void) {
    int r5;
    int r6;
    int r7;

    r5 = Func_80056cc();
    r7 = 0;
    if (r5 != 0) {
        Func_801776c((int)&_MSG_0a, 1);
        r7 -= 9;
    } else {
        Func_8005c68();
        r6 = Func_8020244(0, 3);
        if (r6 == -1) {
            r7 = r6;
        } else {
            Func_8017658((int)&_MSG_16, 8, 1, 2);
            while (Func_8017364() == 0) {
                WaitFrames(1);
            }
            if (YesNoMenu(1, 0, 3, 1) != 0) {
                Func_8019a54();
            } else {
                Func_8019a54();
                r5 = Func_8005ac0(r6);
                r5 |= Func_8005ac0(r6 + 3);
                if (r5 != 0) {
                    Func_801776c((int)&_MSG_0d, 1);
                    r7 = -4;
                } else {
                    Func_801776c((int)&_MSG_18, 1);
                }
            }
        }
    }
    Func_8005cf8();
    return r7;
}

INCLUDE_ASM("asm/ui/text/Func_801fd34.s");

extern void Func_801fd34(void);
extern void StartTask(void (*task)(void), int priority);

void Func_801fd84(void) {
    int priority;
    priority = 0xc8 << 4;
    StartTask(Func_801fd34, priority);
}

extern void StopTask(void *task);

void Func_801fd98(void) {
    StopTask(Func_801fd34);
}

INCLUDE_ASM("asm/ui/text/Func_801fda8.s");
