#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct PrismParticle {
    s32 x;
    s32 y;
    s32 mode;
    s32 vx;
    s32 vy;
    s32 unk14;
    s32 timer;
};

struct PrismState {
               u8 graphics[0x7080];
               struct PrismParticle crystals[16];
               u8 pad_7240[0x7780 - 0x7240];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

struct Camera {
    u8 pad[0x36];
    u16 unk36;
};

extern u8 *iwram_3001eec[];

extern struct Camera *iwram_3001e80;

extern u8 gBuffer[];

extern char _FILE_cf[];

static const u8 PrismShardOrigins[] = {
    0x20, 0x3c, 0x21, 0x52, 0x31, 0x5e, 0x29, 0x59,
    0x31, 0x4c, 0x20, 0x63, 0x36, 0x45, 0x22, 0x52,
    0x2d, 0x47, 0x1f, 0x5b, 0x20, 0x45, 0x1a, 0x50,
    0x28, 0x44, 0x29, 0x3c, 0x2e, 0x3c, 0x24, 0x3f,
    0x00, 0x00
};

static const u8 PrismParams[] = { 1, 110, 4, 134, 12, 166 };

static const u8 PrismShardWidths[] = {
    0x05, 0x0a, 0x0b, 0x0e, 0x0c, 0x0b, 0x13, 0x12, 0x17, 0x0c, 0x16, 0x16
};

static const u8 PrismShardHeights[] = {
    0x0e, 0x0a, 0x07, 0x0d, 0x0e, 0x0e, 0x20, 0x1e, 0x18, 0x26, 0x14, 0x14, 0x00
};

static const u8 PrismShardOffsetBytes[] = {
    0x00, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00,
    0xaa, 0x00, 0x00, 0x00, 0xf7, 0x00, 0x00, 0x00,
    0xad, 0x01, 0x00, 0x00, 0x55, 0x02, 0x00, 0x00,
    0xef, 0x02, 0x00, 0x00, 0x4f, 0x05, 0x00, 0x00,
    0x6b, 0x07, 0x00, 0x00, 0x93, 0x09, 0x00, 0x00,
    0x5b, 0x0b, 0x00, 0x00, 0x13, 0x0d, 0x00, 0x00
};

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void Func_80e3908(struct PrismParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Prism(struct AnimContext *context)
{
    u8 **slots = iwram_3001eec;
    struct PrismState *state = (struct PrismState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    struct PrismParticle *p, *q;
    const u8 *origin;
    int frame, i, j, k, x, v, r, idx, w, h, delta;

    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000052) = 0x1010;
    LoadVFXFile((int)_FILE_cf, state, 1, 1);
    BuildDraw2DFuncs(state->context->side, pair);
    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);

    for (i = 0, p = state->crystals; i != PrismParams[state->context->param * 2]; i++, p++) {
        Random();
        p->y = 0xffc00000;
        if (state->context->side == 1) {
            x = ((Random() & 31) + 0x50) << 16;
            v = Random() & 63;
        } else {
            x = ((Random() & 31) + 8) << 16;
            v = -(Random() & 63);
        }
        p->vx = v << 12;
        p->x = x - p->vx * 18;
        p->vy = 0;
        p->mode = 0;
        p->timer = i * 8;
    }

    for (frame = 0; frame != PrismParams[state->context->param * 2 + 1]; frame++) {
        if (state->context->param == 2 && frame <= 0x67) {
            struct Camera *camera = iwram_3001e80;

            delta = 0xc0;
            if (frame > 0x5f)
                delta = 0x9c0 - frame * 24;
            if (state->context->side == 0)
                camera->unk36 -= delta;
            else
                camera->unk36 += delta;
        }
        if (frame == PrismParams[state->context->param * 2 + 1] - 0x50)
            _Func_80bd7dc(0x86);
        if (frame == PrismParams[state->context->param * 2 + 1] - 8) {
            state->blitMode = 3;
            state->blitParam = 0x06060606;
        }
        if (frame <= PrismParams[state->context->param * 2 + 1] - 8) {
            for (j = 0, p = state->crystals; j != PrismParams[state->context->param * 2]; j++, p++) {
                if (p->mode == 1) {
                    q = (struct PrismParticle *)gBuffer + j * 16;
                    for (k = 0; k != 16; k++, q++) {
                        idx = (k % 5) * 3 + (q->timer / 96) % 3;
                        w = PrismShardWidths[idx];
                        h = PrismShardHeights[idx];
                        pair[k <= 2](render, state->graphics + ((const u32 *)PrismShardOffsetBytes)[idx] + 0x800,
                                     (q->x >> 16) - (w >> 1), (q->y >> 16) - (h >> 1), w, h);
                        Func_80e3908(q, 0x40, 0x2000);
                        q->timer += q->mode;
                        if (q->mode > 1 && (frame & 1))
                            q->mode--;
                    }
                } else if (frame >= p->timer) {
                    pair[j & 1](render, state->graphics, (p->x >> 16) - 16, p->y >> 16, 32, 64);
                    Func_80e3908(p, 0x40, 0x10000);
                    if (p->y > 0x380000) {
                        p->mode = 1;
                        p->y = 0x380000;
                        q = (struct PrismParticle *)gBuffer + j * 16;
                        for (k = 0, origin = PrismShardOrigins; k != 16; k++, origin += 2, q++) {
                            q->x = ((origin[0] - 0x28) << 16) + p->x;
                            q->y = origin[1] << 16;
                            q->vx = ((Random() & 0x7f) - 0x40) << 11;
                            r = -(Random() & 0x7f);
                            q->vy = r << 11;
                            if (j & 1) {
                                q->vx *= 2;
                                q->vy = r << 12;
                            }
                            q->mode = 0x20;
                            q->timer = 0;
                        }
                        state->unk77A8 = 8;
                        _PlaySound(0x90);
                        for (k = 0; k != state->context->numTargets; k++)
                            SetBattleActorState((s16)state->context->targets[k], 7, 5, k, 4);
                    }
                }
            }
        }
        UpdateScreenShake(state->context->param * 2 + 4, state->context->param * 4 + 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
