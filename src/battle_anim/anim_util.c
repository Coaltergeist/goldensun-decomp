#include "nonmatching.h"

INCLUDE_ASM("asm/battle_anim/anim_util/Task_BlitAnim.s");
INCLUDE_ASM("asm/battle_anim/anim_util/Task_BlitAnim_BG1Wide.s");
INCLUDE_ASM("asm/battle_anim/anim_util/Func_80cd418.s");
extern unsigned int iwram_3001eec;

void Func_80cd488(void)
{
    unsigned int base = iwram_3001eec;

    *(volatile unsigned int *)0x04000028 = *(unsigned int *)(base + 0x77d0);
    *(volatile unsigned int *)0x0400002c = *(unsigned int *)(base + 0x77d4);
}
extern unsigned char iwram_3001e74[];

extern void _UploadBGPalette(unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80cd4b4(void) {
    unsigned int r0;
    unsigned int r2;
    unsigned int *r5;
    unsigned int *cntptr;
    unsigned int cnt;

    r0 = *(unsigned int *)iwram_3001e74;
    r2 = *(unsigned int *)((char *)iwram_3001e74 + 0x78);
    r5 = (unsigned int *)((char *)r2 + 0x77b4);

    if ((int)*r5 > 0) {
        cntptr = (unsigned int *)((char *)r2 + 0x77b8);
        cnt = *cntptr + 1;
        *cntptr = cnt;
        r0 = r0 + 0x544;

        _UploadBGPalette(r0, 0x050000c0, 0x10000 - cnt * 1092, 0x80);

        *r5 = *r5 - 1;
    }
}

extern unsigned int iwram_3001eec;
extern void *Func_80008d4(void *dst, unsigned int size);

void Func_80cd508(void)
{
    void *dst = (void *)(iwram_3001eec + 0x7818);
    void *(*clear)(void *, unsigned int) = Func_80008d4;

    clear(dst, 8);
}
INCLUDE_ASM("asm/battle_anim/anim_util/Func_80cd52c.s");
INCLUDE_ASM("asm/battle_anim/anim_util/AnimStart.s");
INCLUDE_ASM("asm/battle_anim/anim_util/AnimStart2.s");
INCLUDE_ASM("asm/battle_anim/anim_util/Func_80cdb24.s");
INCLUDE_ASM("asm/battle_anim/anim_util/AnimEnd.s");

extern unsigned char iwram_3001f00[];
extern void SetRegAnimDest(int a, int b);
extern void WaitFrames(unsigned int nframes);
extern void _Func_80c0774(int a, unsigned short b, int c);

void Func_80cdd14(void)
{
    unsigned int *base = *(unsigned int **)iwram_3001f00;
    unsigned char *r5 = *(unsigned char **)((char *)iwram_3001f00 - 0x8c);
    unsigned short *r5h;

    *(int *)((char *)base + 0xc) = 1;
    SetRegAnimDest(0x80 << 19, 0x1541);
    WaitFrames(1);
    r5h = (unsigned short *)(r5 + (0xc9 << 3));
    _Func_80c0774(2, *r5h, 0);
    WaitFrames(1);
}

INCLUDE_ASM("asm/battle_anim/anim_util/InitRenderTilemapBG1.s");
INCLUDE_ASM("asm/battle_anim/anim_util/DrawLine.s");
