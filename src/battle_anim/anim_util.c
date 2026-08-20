/* battle_anim/anim_util.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/battle_anim/anim_util/Task_BlitAnim.s");
INCLUDE_ASM("asm/battle_anim/anim_util/Task_BlitAnim_BG1Wide.s");
INCLUDE_ASM("asm/battle_anim/anim_util/Func_80cd418.s");
INCLUDE_ASM("asm/battle_anim/anim_util/Func_80cd488.s");
INCLUDE_ASM("asm/battle_anim/anim_util/Func_80cd4b4.s");

INCLUDE_ASM("asm/battle_anim/anim_util/Func_80cd508.s");
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
