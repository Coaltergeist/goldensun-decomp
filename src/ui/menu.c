/* ui/menu.c -- consolidated TU. */
#include "nonmatching.h"

extern void Func_801b228();
extern void Func_801a968();
extern void Func_801c3e8();

INCLUDE_ASM("asm/ui/menu/Func_801a66c.s");
INCLUDE_ASM("asm/ui/menu/Func_801a778.s");
INCLUDE_ASM("asm/ui/menu/Func_801a7c0.s");
INCLUDE_ASM("asm/ui/menu/Func_801a7f4.s");

void Func_801a90c(void) {}

INCLUDE_ASM("asm/ui/menu/Func_801a910.s");

extern int StartTask(void *task, int priority);
extern void Func_801a98c(void);

void Func_801a968(void) {
    StartTask(Func_801a98c, 200 << 4);
}

extern void StopTask(void *task);

void Func_801a97c(void) {
    StopTask(Func_801a98c);
}

INCLUDE_ASM("asm/ui/menu/Func_801a98c.s");

INCLUDE_ASM("asm/ui/menu/DisplayMenuArrowCursor.s");
INCLUDE_ASM("asm/ui/menu/Func_801b010.s");
INCLUDE_ASM("asm/ui/menu/Func_801b148.s");

extern unsigned int iwram_3001e98;

void Func_801b1ec(unsigned int arg0, unsigned int arg1)
{
    unsigned char *base;
    unsigned char *p;
    base = (unsigned char *)iwram_3001e98;
    *(unsigned short *)(base + 0x396) = arg0;
    *(unsigned short *)(base + 0x398) = arg1;
    p = *(unsigned char **)(base + 0x348);
    while (p != (unsigned char *)0) {
        *(unsigned short *)(p + 0x10) = arg0;
        *(unsigned short *)(p + 0x18) = arg0;
        *(unsigned short *)(p + 0x12) = arg1;
        *(unsigned short *)(p + 0x1a) = arg1;
        p = *(unsigned char **)(p + 4);
        arg0 += 0x10;
    }
}

void DisplayMenuArrowCursor2(int param_1, int param_2);

void Func_801b228(void) {
    unsigned int r5;
    r5 = iwram_3001e98;
    DisplayMenuArrowCursor2(r5, 0);
    DisplayMenuArrowCursor2(r5, 1);
}

INCLUDE_ASM("asm/ui/menu/DisplayMenuArrowCursor2.s");
INCLUDE_ASM("asm/ui/menu/Func_801b36c.s");
INCLUDE_ASM("asm/ui/menu/Func_801b398.s");
INCLUDE_ASM("asm/ui/menu/Func_801b424.s");
INCLUDE_ASM("asm/ui/menu/Func_801b4ec.s");
INCLUDE_ASM("asm/ui/menu/Func_801b5c0.s");
INCLUDE_ASM("asm/ui/menu/Func_801b664.s");
INCLUDE_ASM("asm/ui/menu/Func_801b810.s");
INCLUDE_ASM("asm/ui/menu/Func_801b9a8.s");
INCLUDE_ASM("asm/ui/menu/Func_801b9ec.s");

extern void _Func_80c10e8(unsigned short *buf, int arg);

void Func_801ba34(unsigned int base) {
    unsigned short list[6];
    unsigned int *p;
    int count;

    p = *(unsigned int **)(base + 0x348);
    count = 0;
    while (p != (unsigned int *)0) {
        p = *(unsigned int **)((char *)p + 4);
        count++;
    }
    list[count] = 0xff;
    _Func_80c10e8(list, 0);
}

INCLUDE_ASM("asm/ui/menu/Func_801ba68.s");
INCLUDE_ASM("asm/ui/menu/UploadIcon.s");
INCLUDE_ASM("asm/ui/menu/Func_801bcd4.s");
INCLUDE_ASM("asm/ui/menu/Func_801bd98.s");
INCLUDE_ASM("asm/ui/menu/Func_801be80.s");

void stub_0801C0C4(void) {}

void Func_801c0c8(void) {}
void Func_801c0cc(void) {}
void Func_801c0d0(void) {}
void Func_801c0d4(void) {}
void Func_801c0d8(void) {}

INCLUDE_ASM("asm/ui/menu/Func_801c0dc.s");
INCLUDE_ASM("asm/ui/menu/Func_801c154.s");

extern void Func_8003f3c();

void Func_801c17c(void) {
    Func_8003f3c();
}

INCLUDE_ASM("asm/ui/menu/Func_801c188.s");
INCLUDE_ASM("asm/ui/menu/Func_801c21c.s");
INCLUDE_ASM("asm/ui/menu/Func_801c244.s");

extern void Func_801ef08(int);
extern void WaitFrames(unsigned int);

void Func_801c2d0(void) {
    Func_801ef08(1);
    WaitFrames(1);
}

extern void Func_801f5d4(void);

void Func_801c2e4(void) {
    Func_801f5d4();
}

extern void Func_801a66c(void);
extern void Func_801a778(void);

void Func_801c2f0(void)
{
	Func_801a66c();
	Func_801a778();
	WaitFrames(1);
}

extern unsigned char *iwram_3001e98__a2 __asm__("iwram_3001e98");
extern void Func_801a7f4(void);
extern void Func_801b010(int a, int b);
extern int Func_801b424(int a);
extern void Func_801b148(void);

int Func_801c304(unsigned short param_1)
{
    unsigned char *base;
    unsigned char *addr1;
    unsigned short v;
    int result;

    base = iwram_3001e98__a2;
    addr1 = base + 0x39e;
    *(unsigned short *)addr1 = param_1;
    base += 0xee << 2;
    v = 1;
    *(unsigned short *)base = v;
    Func_801a7f4();
    Func_801b228();
    Func_801b010(0, 5);
    Func_801a968();
    result = Func_801b424(1);
    Func_801b148();
    return result;
}

INCLUDE_ASM("asm/ui/menu/Func_801c34c.s");

extern unsigned int iwram_3001ebc;
extern void CloseUIBox(void *box, int noanim);

void Func_801c3e8(void) {
    unsigned int base;
    unsigned short *counter;

    base = *(unsigned int *)&iwram_3001ebc;
    counter = (unsigned short *)(base + (0x8d << 2));
    *counter = *counter - 1;
    if (*counter == 0) {
        CloseUIBox((void *)*(unsigned int *)(base + (0x8c << 2)), 2);
        StopTask((void *)Func_801c3e8);
    }
}

extern unsigned int *iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void Func_801c428(void) {
    unsigned int *box;

    box = (unsigned int *)*(unsigned int *)((char *)*(unsigned int *)&iwram_3001ebc__a1 + (0x8c << 2));
    if (box != 0) {
        if (*(unsigned short *)((char *)box + 0x16) != 0) {
            CloseUIBox(box, 2);
            StopTask((void *)Func_801c3e8);
        }
    }
}

extern unsigned int _Func_80789dc(unsigned int);

unsigned int Func_801c458(unsigned int arg0, unsigned int arg1) {
    _Func_80789dc(arg1);
    return 0;
}

int Func_801c468(void) { return 1; }

INCLUDE_ASM("asm/ui/menu/Func_801c46c.s");
INCLUDE_ASM("asm/ui/menu/Func_801c49c.s");
INCLUDE_ASM("asm/ui/menu/Func_801c7fc.s");
INCLUDE_ASM("asm/ui/menu/Func_801c8a0.s");

extern void Func_801c49c(void);

void Func_801c924(void) {
    Func_801c49c();
}

extern unsigned char *galloc_ewram(int index, unsigned int size);

void Func_801c930(void)
{
    unsigned char *p;
    unsigned short z;

    p = galloc_ewram(0x13, 0x1004);
    z = 0;
    *(unsigned short *)(p + 0x46) = z;
    *(unsigned short *)(p + 0x352) = z;
}

int Func_8017394(int a);
void gfree(int index);
extern unsigned char *iwram_3001e9c;

void Func_801c954(void)
{
    unsigned char *base;

    base = iwram_3001e9c;
    CloseUIBox(*(void **)(base + 0xff4), 0);
    while (Func_8017394(*(int *)(base + 0xff4)) == 0) {
        WaitFrames(1);
    }
    if (*(unsigned short *)(base + 0x46) != 0) {
        Func_8003f3c(*(unsigned short *)(base + 0x48));
    }
    if (*(unsigned short *)(base + 0x352) != 0) {
        Func_8003f3c(*(unsigned short *)(base + 0x354));
    }
    gfree(0x13);
}

void Func_801c9bc(void) {}
void Func_801c9c0(void) {}
void Func_801c9c4(void) {}

INCLUDE_ASM("asm/ui/menu/Func_801c9c8.s");

INCLUDE_ASM("asm/ui/menu/Func_801ca1c.s");
INCLUDE_ASM("asm/ui/menu/Func_801cae0.s");
INCLUDE_ASM("asm/ui/menu/Func_801cbd4.s");
INCLUDE_ASM("asm/ui/menu/Func_801cc50.s");
INCLUDE_ASM("asm/ui/menu/SetUIColor.s");
INCLUDE_ASM("asm/ui/menu/Func_801ce48.s");

void Func_801ce6c(unsigned char *p)
{
    unsigned short *c = (unsigned short *)(p + 0x574);
    unsigned int v = *c + 1;

    *c = v;
    if ((v << 16) > (0x80 << 10)) {
        unsigned short z = 0;
        *c = z;
    }
}

INCLUDE_ASM("asm/ui/menu/Func_801ce90.s");
INCLUDE_ASM("asm/ui/menu/Func_801cee0.s");

void Func_801cf44(void) {}

INCLUDE_ASM("asm/ui/menu/Func_801cf48.s");
INCLUDE_ASM("asm/ui/menu/Func_801d014.s");

extern void Func_801cf48(void);

void Func_801d0f0(void) {
    StopTask(Func_801cf48);
    gfree(0x14);
}

INCLUDE_ASM("asm/ui/menu/Func_801d108.s");
INCLUDE_ASM("asm/ui/menu/Menu_Settings.s");
INCLUDE_ASM("asm/ui/menu/Func_801d94c.s");
INCLUDE_ASM("asm/ui/menu/Func_801d980.s");

extern void Func_801d94c(void);

void Func_801d9bc(void) {
    StopTask(Func_801d94c);
    gfree(0x14);
}

INCLUDE_ASM("asm/ui/menu/Func_801d9d4.s");
INCLUDE_ASM("asm/ui/menu/StartMenu_Main.s");
INCLUDE_ASM("asm/ui/menu/Func_801dd28.s");
