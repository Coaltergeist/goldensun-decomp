#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct GrowthStem {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkc;
    s32 height;
    s32 unk14;
    s32 unk18;
};

struct GrowthSpark {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 delay;
};

struct GrowthState {
               u8 graphics[0x7080];
               struct GrowthStem stems[16];
               u8 pad_7240[0x7780 - 0x7240];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern void *gPtrs[];

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern char _FILE_83[], _FILE_84[];

static const u8 GrowthStemWidths[] = { 0x15, 0x1c, 0x13 };

static const u8 GrowthStemMaxHeights[] = { 0x77, 0x77, 0x66 };

static const u16 GrowthStemOffsets[] = { 0x0000, 0x09c3, 0x16c7 };

static const u8 GrowthStemWidthsAlt[] = { 0x0a, 0x08, 0x09 };

static const u16 GrowthStemOffsetsAlt[] = { 0x0000, 0x0438, 0x0760 };

static const u8 GrowthStemCounts[] = { 4, 8, 12 };

static const u8 GrowthStemX[] = {
    0x40, 0x48, 0x38, 0x50, 0x30, 0x58, 0x28, 0x60,
    0x20, 0x68, 0x18, 0x48, 0x38, 0x50, 0x30, 0x58,
};

static const s8 GrowthStemHeightCaps[] = { 0x64, 0x3c, 0x58, 0x60, 0x40, 0x68, 0x52, 0x62 };

static const s8 GrowthSparkWidths[] = { 0x05, 0x07, 0x0b, 0x10, 0x17, 0x1b, 0x10 };

static const s8 GrowthSparkHeights[] = { 0x0a, 0x0e, 0x15, 0x20, 0x2d, 0x32, 0x20 };

static const u16 GrowthSparkOffsets[] = { 0x0000, 0x0032, 0x0094, 0x017b, 0x037b, 0x0786, 0x0ccc };

extern void AnimStart(int);

extern void AnimEnd(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern void Task_BlitAnim(void);

extern int Random(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void BaseAnim_Growth(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    u8 **slots = iwram_3001eec;
    struct GrowthState *state = (struct GrowthState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    s32 *delay;
    int frames, frame, i, j, t, start;

    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000050) = 0;
    if (subanim == 1)
        LoadVFXFile((int)_FILE_83, state, 1, 1);
    else
        LoadVFXFile((int)_FILE_84, state, 1, 1);
    if (state->context->side == 1)
        (*(vs32 *)0x04000028) = -0x7000;
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    pair[0] = (DrawFunc)gPtrs[0x2e];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 1);
    pair[1] = (DrawFunc)gPtrs[0x2f];
    frames = GrowthStemCounts[state->context->param] * 4 + 0x38;

    for (i = 0, delay = ewram_2010018; i != 0x400; i++, delay += 7)
        *delay = -1;

    {
    struct GrowthStem *stem;
    for (i = 0, stem = state->stems; i != 16; i++, stem++) {
        int h;
        stem->x = GrowthStemX[i] + (Random() & 7) - 4;
        stem->y = i / 2 + 0x6c;
        h = (Random() & 0x3f) + 0x37;
        stem->height = h;
        if (GrowthStemMaxHeights[i % 3] < h)
            stem->height = GrowthStemMaxHeights[i % 3];
        stem->unk18 = i * 4 + 8;
    }
    }

    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != frames; frame++) {
        if (frame == frames - 0x40)
            _Func_80bd7dc(0x84);
        if (frame >= frames - 0x14 && frame < frames - 4) {
            (*(vu16 *)0x04000050) = 0x3f44;
            (*(vu16 *)0x04000052) = (frames - frame - 5) | 0x1000;
        }
        if (frame < frames - 4) {
            struct GrowthStem *stem;
            for (j = 0, start = 8, stem = state->stems;
                 j != GrowthStemCounts[state->context->param];
                 j++, start += 4, stem++) {
                if (frame == j * 4 + 9)
                    state->unk77A8 = 2;
                if (frame > start) {
                    int m = j % 3;
                    int h = (frame - start) * 8;
                    if (h > stem->height)
                        h = stem->height;
                    if (subanim == 0) {
                        pair[j & 1](render, state->graphics + GrowthStemOffsets[m],
                                    stem->x - GrowthStemWidths[m] / 2, stem->y - h,
                                    GrowthStemWidths[m], h);
                    } else {
                        if (h > GrowthStemHeightCaps[j & 7])
                            h = GrowthStemHeightCaps[j & 7];
                        pair[j & 1](render, state->graphics + GrowthStemOffsetsAlt[m],
                                    stem->x - GrowthStemWidthsAlt[m] / 2, stem->y - h,
                                    GrowthStemWidthsAlt[m], h);
                    }
                }
                for (t = 0; t != state->context->numTargets; t++) {
                    if (frame == start + 4) {
                        if (!(j & 1))
                            _PlaySound(0x85);
                        SetBattleActorState((s16)state->context->targets[t], 7, 5, t, 3);
                    }
                }
                if (frame == start + 4 || frame == start + 8) {
                    struct GrowthSpark *spark;
                    for (i = 0, spark = (struct GrowthSpark *)gBuffer; i != 0x200; i++, spark++) {
                        if (spark->delay == -1) {
                            spark->x = (Random() & 15) + stem->x - 8;
                            spark->y = (Random() & 15) + 0x50;
                            spark->delay = 0;
                            break;
                        }
                    }
                }
            }
        }

        {
        struct GrowthSpark *spark;
        for (i = 0, spark = (struct GrowthSpark *)gBuffer; i != 0x200; i++, spark++) {
            if (spark->delay >= 0) {
                int idx = spark->delay / 2;
                int base = 0x1e59;
                if (subanim != 0)
                    base = 0xaff;
                pair[0](render, state->graphics + base + GrowthSparkOffsets[idx],
                        spark->x - GrowthSparkWidths[idx],
                        spark->y - GrowthSparkHeights[idx] / 2,
                        GrowthSparkWidths[idx], GrowthSparkHeights[idx]);
                pair[1](render, state->graphics + base + GrowthSparkOffsets[idx],
                        spark->x, spark->y - GrowthSparkHeights[idx] / 2,
                        GrowthSparkWidths[idx], GrowthSparkHeights[idx]);
                spark->delay++;
                if (spark->delay == 14)
                    spark->delay = -1;
            }
        }
        }
        UpdateScreenShake(4, 4);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
