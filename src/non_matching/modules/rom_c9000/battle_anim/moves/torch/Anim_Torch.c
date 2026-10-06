#include "anim.h"

#include "task.h"

#include "math.h"

#include "dma.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct TorchState {
               u8 graphics[128][128];
               u8 pad_4000[0x6980 - 0x4000];
               s32 scroll[160];
               u8 pad_6C00[0x7780 - 0x6C00];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern u16 gBuffer[];

extern u16 gDMATaskCount;

extern u16 ewram_2010002[];

extern u16 ewram_201007c[];

extern u16 ewram_201007e[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void Anim_Djinni(struct AnimContext *, int, int, int, int *, int *);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern int Func_8000948(int);

extern void Task_BlitAnim(void);

extern void Func_80dbb9c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Torch(struct AnimContext *context)
{
    u8 **slots = iwram_3001eec;
    struct TorchState *state = (struct TorchState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    int a, b;
    int i, j, frame;

    state->context = context;
    AnimStart(0x2000);
    Anim_Djinni(context, 6, state->context->side, 2, &a, &b);
    REG_BG2CNT = 0x2784;
    REG_BLDALPHA = 0x1000;
    REG_BG2PA = 0xaa;
    BuildDraw2DFuncs(state->context->side, pair);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    for (i = 0; i != 64; i++) {
        for (j = 0; j != 64; j++) {
            int (*root)(int) = Func_8000948;
            int cy = i / 8 + 64;
            int v = root((j - 64) * (j - 64) + (i - cy) * (i - cy)) / 2;
            if (v == 0)
                v = 1;
            if (v > 63)
                v = 63;
            state->graphics[i][j] = v;
            state->graphics[i][127 - j] = v;
            state->graphics[127 - i][j] = v;
            state->graphics[127 - i][127 - j] = v;
        }
    }

    for (i = 1; i != 64; i++) {
        int c = i > 31 ? 64 - i : i;
        int r = c * 9;
        int g = c * 7 - 42;
        int bl = c * 7 - 56;
        int color;
        if (r < 0)
            r = 0;
        if (g < 0)
            g = 0;
        if (bl < 0)
            bl = 0;
        if (r > 255)
            r = 255;
        if (g > 255)
            g = 255;
        if (bl > 250)
            bl = 250;
        color = ((bl >> 3) << 10) | ((g >> 3) << 5) | (r >> 3);
        ((vu16 *)0x05000000)[i] = color;
        ewram_2010002[i - 1] = color;
    }

    pair[0](render, state->graphics[0], 0, 0, 128, 128);
    state->frameReady = 1;
    StartTask(Func_80dbb9c, 0x480);

    for (frame = 0; frame != 96; frame++) {
        if (frame <= 8)
            REG_BLDALPHA = (frame * 2) | 0x1000;
        if (frame > 88)
            REG_BLDALPHA = (0xc0 - frame * 2) | 0x1000;
        for (j = 0; j != 160; j++)
            state->scroll[j] = ((j << 18) - (sin((j - frame * 2) * 0x200) << 7) + 0x40000) >> 10;
        if (frame > 127) {
            state->frameReady = 1;
        } else {
            unsigned int ime;
            u16 *queue = &gDMATaskCount;
            u32 *task;
            int count, slot;
            gBuffer[1] = *ewram_201007e;
            DMA3_SET(ewram_201007c, ewram_201007e, 0x80a0003e);
            ime = REG_IME;
            SET_IO(REG_IME, REG_ADDR_IME);
            count = *queue;
            if (count < 32) {
                slot = count * 12;
                count++;
                task = (u32 *)((u8 *)queue + slot);
                *queue = count;
                task++;
                *task++ = (u32)ewram_2010002;
                *task++ = 0x05000002;
                *task = 0x8000003f;
            }
            SET_IO(REG_IME, ime);
        }
        WaitFrames(1);
    }

    StopTask(Func_80dbb9c);
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
