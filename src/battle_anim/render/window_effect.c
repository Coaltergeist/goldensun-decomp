#include "nonmatching.h"
#include "dma0.h"

INCLUDE_ASM("asm/battle_anim/render/window_effect/Func_80c9048.s");

struct WindowEffectState {
    unsigned char pad_0000[0x7790];
    unsigned int timer;
    unsigned int period;
    unsigned int stepX;
    unsigned int stepY;
    unsigned char pad_77a0[0x77d0 - 0x77a0];
    unsigned int bg2x;
    unsigned int bg2y;
};

extern struct WindowEffectState *iwram_3001eec[];
extern unsigned short iwram_3001ad0[];

void Func_80c90e4(void) {
    struct WindowEffectState *state = iwram_3001eec[0];

    state->timer++;
    if (state->timer == state->period) {
        iwram_3001ad0[2] += state->stepX;
        iwram_3001ad0[3] += state->stepY;
        state->timer = 0;
    }
}

void Func_80c9138(void) {
    struct WindowEffectState *state = iwram_3001eec[0];

    state->timer++;
    if (state->timer == state->period) {
        *(volatile unsigned int *)0x04000028 = state->bg2x;
        *(volatile unsigned int *)0x0400002c = state->bg2y;
        state->bg2x += state->stepX;
        state->bg2y += state->stepY;
        state->timer = 0;
    }
}

extern unsigned char gBuffer[65536];

void Func_80c91a4(void) {
    volatile unsigned short *reg = (volatile unsigned short *)0x040000B0;
    reg[5] = reg[5] & 0xc5ff;
    reg[5] = reg[5] & 0x7fff;
    {
        unsigned short scratch = reg[5];
        (void)scratch;
        DMA0_SET((const void *)(gBuffer), (void *)(0x04000040), 0xa2600001);
    }
}
