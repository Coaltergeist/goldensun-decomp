#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct ThornParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 delay;
};

struct ThornState {
               u8 graphics[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

static const u8 ThornTypes[] = { 0, 3, 2, 1, 2, 3, 2, 1 };

static const signed char ThornX[] = { 24, 80, 24, 48, 88, 40, 8, 96 };

static const u8 ThornCounts[] = { 3, 5, 8 };

static const signed char DebrisWidths[] = { 5, 7, 11, 17, 32, 32, 19 };

static const signed char DebrisHeights[] = { 10, 14, 21, 34, 59, 60, 38 };

static const u16 DebrisOffsets[] = { 0x1700, 0x1732, 0x1794, 0x187b, 0x1abd, 0x221d, 0x299d };

extern u8 *iwram_3001eec[];

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern char _FILE_7e[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Thorn(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct ThornState *state = (struct ThornState *)*slots++;
    u8 *render = *slots;
    DrawFunc draw, mirror;
    struct ThornParticle *p;
    int frame, total, i, j, t, w, h, idx;

    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000050) = 0;
    (*(vu16 *)0x04000052) = 0x1010;
    LoadVFXFile((int)_FILE_7e, state, 1, 1);
    if (state->context->side == 1)
        (*(vu32 *)0x04000028) = -0x7000;
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    draw = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 1);
    mirror = (DrawFunc)baseSlots[8];
    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);
    total = ThornCounts[state->context->param] * 8 + 56;

    for (i = 0; i != 1024; i++)
        ewram_2010018[i * 7] = -1;

    for (frame = 0; frame != total; frame++) {
        if (frame == total - 64)
            _Func_80bd7dc(0x84);
        if (frame >= total - 16) {
            (*(vu16 *)0x04000050) = 0x3f44;
            (*(vu16 *)0x04000052) = (total - frame - 1) | 0x1000;
        }

        for (i = 0; i != ThornCounts[state->context->param]; i++) {
            if (frame > (i + 1) * 8) {
                unsigned int type = ThornTypes[i];
                t = frame - (i + 1) * 8;
                if (type <= 1) {
                    h = t * 16;
                    w = t * 6;
                    if (h > 80)
                        h = 80;
                    if (w > 30)
                        w = 30;
                    if (type & 1)
                        mirror(render, state->graphics, ThornX[i] - w, 108 - h, 48, h);
                    else
                        draw(render, state->graphics, ThornX[i] + w, 108 - h, 48, h);
                } else {
                    h = t * 8;
                    w = t;
                    if (h > 64)
                        h = 64;
                    if (w > 8)
                        w = 8;
                    if (type & 1)
                        mirror(render, state->graphics + 0xf00, ThornX[i] - w, 108 - h, 32, h);
                    else
                        draw(render, state->graphics + 0xf00, ThornX[i] + w, 108 - h, 32, h);
                }
                if (frame == (i + 1) * 8 + 1)
                    state->unk77A8 = 3;
                if (frame < (i + 1) * 8 + 3) {
                    int y = (Random() & 31) + 72;
                    p = (struct ThornParticle *)gBuffer;
                    for (j = 0; j != 64; j++, p++) {
                        if (p->delay == -1) {
                            p->x = ThornX[i] + (Random() & 31) + 32;
                            if (p->x > 96)
                                p->x = 96;
                            p->y = y;
                            p->delay = 0;
                            break;
                        }
                    }
                }
            }
            for (j = 0; j != state->context->numTargets; j++) {
                if (frame == i * 8 + 12) {
                    _PlaySound(0x84);
                    SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 3);
                }
            }
        }

        p = (struct ThornParticle *)gBuffer;
        for (i = 0; i != 64; i++, p++) {
            if (p->delay >= 0) {
                idx = p->delay / 2;
                draw(render, state->graphics + DebrisOffsets[idx], p->x - DebrisWidths[idx],
                     p->y - DebrisHeights[idx] / 2, DebrisWidths[idx], DebrisHeights[idx]);
                mirror(render, state->graphics + DebrisOffsets[idx], p->x,
                       p->y - DebrisHeights[idx] / 2, DebrisWidths[idx], DebrisHeights[idx]);
                if (++p->delay == 14)
                    p->delay = -1;
            }
        }

        UpdateScreenShake(8, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
