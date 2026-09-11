/* battle_anim/summon_sprite.c */
#include "nonmatching.h"
#include "dma0.h"

INCLUDE_ASM("asm/battle_anim/summon_sprite/Func_80e6d3c.s");
INCLUDE_ASM("asm/battle_anim/summon_sprite/Anim_Unsummon.s");
INCLUDE_ASM("asm/battle_anim/summon_sprite/Func_80e727c.s");

extern unsigned char iwram_3001eec[];

void Func_80e72e0(void) {
    unsigned int src;
    volatile unsigned short *reg;

    src = *(unsigned int *)iwram_3001eec;
    reg = (volatile unsigned short *)0x040000b0;
    reg[5] = reg[5] & 0xc5ff;
    reg[5] = reg[5] & 0x7fff;
    {
        unsigned short scratch = reg[5];
        (void)scratch;
        DMA0_SET((const void *)(src + (0xfc << 5)), (void *)(0xa0 << 19), 0xa2600001);
    }
}
