/*
 * Non-matching clean C candidate for Anim_Torch (exact .text size 0x310 == 0x310 / 784 bytes,
 * 0 relocation diffs under GAIA_CFLAGS / -fstrict-aliasing).
 *
 * Matches 0x000..0x26d (622 bytes) and 0x2aa..0x310 (102 bytes) 100% byte-for-byte.
 * Remaining diff (only 9 insns at +0x26e..+0x278 / +0x29a / +0x2a8): shared `include/dma.h`
 * `DMA3_SET` closes its `register u32 _cnt __asm__("r2")` scope before `ime = REG_IME`,
 * so `reload1.c`'s `{r2, r3, r5}` spill-register ring starts at `r2` instead of `r5`
 * (shifting the final two reloads in the loop latch by 1).
 */
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

static inline int Sqrt(int n)
{
    int (*func)(int) = Func_8000948;
    return func(n);
}

void Anim_Torch(struct AnimContext *context)
{
    u8 **slots = iwram_3001eec;
    struct TorchState *state = (struct TorchState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    int a, b;
    int y, x, i, frame;

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

    for (y = 0; y != 64; y++) {
        for (x = 0; x != 64; x++) {
            int cy = y / 8 + 64;
            int v = Sqrt((x - 64) * (x - 64) + (y - cy) * (y - cy));
            v /= 2;
            if (v == 0)
                v = 1;
            if (v > 63)
                v = 63;
            state->graphics[y][x] = v;
            state->graphics[y][127 - x] = v;
            state->graphics[127 - y][x] = v;
            state->graphics[127 - y][127 - x] = v;
        }
    }

    for (i = 1; i != 64; i++) {
        int c = i > 31 ? 64 - i : i;
        int r = c * 9;
        int g = c * 7 - 42;
        int bl = c * 7 - 56;
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
        r >>= 3;
        g >>= 3;
        bl >>= 3;
        ((vu16 *)0x05000000)[i] = (bl << 10) | (g << 5) | r;
        ewram_2010002[i - 1] = (bl << 10) | (g << 5) | r;
    }

    pair[0](render, &state->graphics[0][0], 0, 0, 128, 128);
    state->frameReady = 1;
    StartTask(Func_80dbb9c, 0x480);

    for (frame = 0; frame != 96; frame++) {
        if (frame <= 8)
            REG_BLDALPHA = (frame * 2) | 0x1000;
        if (frame > 88)
            REG_BLDALPHA = (0xc0 - frame * 2) | 0x1000;
        {
            s32 *scroll = state->scroll;
            for (i = 0; i != 160; i++)
                *scroll++ = ((i << 18) - (sin((i - frame * 2) * 0x200) << 7) + 0x40000) >> 10;
        }
        if (frame > 127) {
            state->frameReady = 1;
        } else {
            int tmp = ewram_201007e[0];
            gBuffer[1] = tmp;
            DMA3_SET(ewram_201007c, ewram_201007e, 0x80a0003e);
            do {
                u16 *q = (u16 *)&gDMATaskCount;
                u32 ime = REG_IME;
                s32 c;
                SET_IO(REG_IME, REG_ADDR_IME);
                c = *q;
                if (c < 32) {
                    u32 *t = (u32 *)((u8 *)q + c * 12);
                    *q = c + 1;
                    t++;
                    *t++ = (u32)ewram_2010002;
                    *t++ = 0x05000002;
                    *t = 0x8000003f;
                }
                SET_IO(REG_IME, ime);
            } while (0);
        }
        WaitFrames(1);
    }

    StopTask(Func_80dbb9c);
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
