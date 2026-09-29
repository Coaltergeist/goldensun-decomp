#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct MarsParticle {
    s32 x;
    s32 y;
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

extern u8 *iwram_3001eec[];

extern u8 gBuffer[];

extern char _FILE_73[], _FILE_8e[], _FILE_b4[], _FILE_b7[];

extern const u16 Data_edeb2[];

extern const u8 Data_ede9f[];

extern const u8 Data_edeab[];

extern const u8 Data_edea5[];

extern const u16 Data_ede48[];

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
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct MarsState *state = (struct MarsState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx = baseSlots[2];
    DrawFunc pair[2];
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

    for (i = 0, g = state->groups; i != 9; i++, g++) {
        g->x = (sin(i << 11) * 24) >> 16;
        g->y = ((cos(i << 11) * 4) >> 16) + 52;
        if (i & 1)
            g->x = 32 - g->x;
        else
            g->x += 32;
        g->delay = -(i * 2);
        for (j = 0, p = (struct MarsParticle *)gBuffer + i * 16; j != 16; j++, p++) {
            p->x = ((Random() & 15) + g->x - 8) << 16;
            p->y = ((Random() & 7) + 96) << 16;
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
                            g->x - Data_ede9f[idx] / 2, g->y + Data_edeab[idx],
                            Data_ede9f[idx], Data_edea5[idx]);
                }
                g->delay++;
            }
        }
        g = (struct MarsParticle *)gBuffer;
        for (i = 0; i != 144; i++, g++) {
            if (j >= (i / 16) * 2 + 40) {
                int w = (i & 1) + 3;
                int x = *(s16 *)((u8 *)&g->x + 2) + ((sin(g->angle) * 4) >> 16);
                pair[1](render, particleGfx + Data_ede48[w - 1],
                        x - w / 2,
                        *(s16 *)((u8 *)&g->y + 2) - w, w, w * 2);
                Func_80e3908(g, 0x40, -0x2000);
                g->angle += 0x800;
                if (g->angle > 0xffff)
                    g->angle -= 0x10000;
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
