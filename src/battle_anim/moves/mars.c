#include "anim.h"
#include "math.h"
#include "task.h"

#define MARS_BUF ((struct MarsParticle *)0x02010000)

typedef union {
    s32 raw;
    struct {
        u16 lo;
        s16 hi;
    } half;
} Fx32;

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct MarsParticle {
    Fx32 x;
    Fx32 y;
    s32 angle;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 delay;
};

struct MarsState {
    u8 graphics[0x7080];
    struct MarsParticle groups[9];
    u8 pad_717c[0x7780 - 0x717c];
    s32 blitMode;
    s32 blitParam;
    u8 pad_7788[0x77a8 - 0x7788];
    s32 unk77A8;
    u8 pad_77ac[0x7824 - 0x77ac];
    s32 frameReady;
    struct AnimContext *context;
};

extern u8 *const iwram_3001eec[];
extern char _FILE_73[], _FILE_8e[], _FILE_b4[], _FILE_b7[];
extern u16 Data_edeb2[];
extern u8 Data_ede9f[];
extern u8 Data_edeab[];
extern u8 Data_edea5[];
extern u16 Data_ede48[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void BuildDraw2DFuncs(int, DrawFunc *);
extern void LoadVFXFile(int, void *, int, int);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern unsigned int Random(void);
extern void Task_BlitAnim(void);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void Func_80e3908(struct MarsParticle *, int, int);
extern void SetBattleActorState(int, int, int, int, int);
extern void _SetBattleActorKnockback(int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Mars(struct AnimContext *context)
{
    u8 *const *baseSlots = iwram_3001eec;
    u8 *const *slots = baseSlots;
    struct MarsState *state = (struct MarsState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    u8 *particleGfx = baseSlots[2];
    int i, j;
    struct MarsParticle *g, *p;

    state->context = context;
    AnimStart(0);
    BuildDraw2DFuncs(0, pair);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_8e, state, 1, 0);
    LoadVFXFile((int)_FILE_b7, state->graphics + 0x320, 1, 1);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    for (i = 0, g = state->groups; i != 9; g++, i++) {
        g->x.raw = (sin(i << 11) * 24) >> 16;
        g->y.raw = ((cos(i << 11) * 4) >> 16) + 52;
        if (i & 1)
            g->x.raw = 32 - g->x.raw;
        else
            g->x.raw += 32;
        g->delay = -(i * 2);
        for (j = 0; j != 16; j++) {
            p = &MARS_BUF[i * 16 + j];
            p->x.raw = ((Random() & 15) + g->x.raw - 8) << 16;
            p->y.raw = ((Random() & 7) + 96) << 16;
            p->unkc = ((Random() & 127) - 64) << 11;
            p->unk10 = ((Random() & 127) - 64) << 10;
            p->angle = Random() & 0xffff;
            p->unk14 = Random() & 0xffff;
        }
    }

    _PlaySound(0x88);
    for (j = 0; j != 112; j++) {
        if (j == 56)
            _Func_80bd7dc(0x85);
        if (j <= 23)
            pair[0](render, state->graphics + 0x320 + (j / 4) * 0x640, 40, 20, 40, 40);
        if (j == 20) {
            void *file = GetFile((int)_FILE_8e);
            void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
            copy((void *)0x05000000, file, 0x80);
        }
        if ((unsigned int)(j - 20) <= 11) {
            if (j > 23)
                pair[1](render, state->graphics, 0x92 - j * 4, j * 8 - 0xac, 20, 40);
            else
                pair[0](render, state->graphics, 0x32, 0x14, 20, 40);
        }
        if (j == 32) {
            _PlaySound(0x91);
            state->unk77A8 = 8;
            LoadVFXFile((int)_FILE_b4, state, 1, 1);
        }
        if (j > 31) {
            for (i = 0, g = state->groups; i != 9; i++, g++) {
                if ((unsigned int)g->delay <= 47) {
                    int idx = g->delay / 8;
                    pair[0](render, state->graphics + Data_edeb2[idx],
                            g->x.raw - Data_ede9f[idx] / 2, g->y.raw + Data_edeab[idx],
                            Data_ede9f[idx], Data_edea5[idx]);
                }
                g->delay++;
            }
        }
        g = MARS_BUF;
        for (i = 0; i != 144; i++, g++) {
            if (j >= (i / 16) * 2 + 40) {
                int w = (i & 1) + 3;
                int x = g->x.half.hi + ((sin(g->angle) * 4) >> 16);
                pair[1](render, particleGfx + Data_ede48[w - 1],
                        x - w / 2,
                        g->y.half.hi - w, w, w * 2);
                Func_80e3908(g, 0x40, -0x2000);
                g->angle += 0x800;
                if (g->angle > 0xffff)
                    g->angle -= 0xffff;
            }
        }
        if (j == 38) {
            for (i = 0; i != state->context->numTargets; i++) {
                SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 16);
                _SetBattleActorKnockback((s16)state->context->targets[i], 6);
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
