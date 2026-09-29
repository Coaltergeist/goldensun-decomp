#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct FlareParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 delay;
};

struct FlareState {
               u8 graphics[0x7080];
               struct FlareParticle particles[9];
               u8 pad_717C[0x7780 - 0x717C];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern char _FILE_b4[];

extern u16 Data_edeb2[];

extern u8 Data_ede9f[];

extern u8 Data_edeab[];

extern u8 Data_edea5[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Flare(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct FlareState *state = (struct FlareState *)*slots++;
    u8 *render = *slots;
    int frame, i, angle, base, dir;
    DrawFunc draw;
    struct FlareParticle *p;

    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000050) = 0x3f46;
    (*(vu16 *)0x04000052) = 0x100e;
    LoadVFXFile((int)_FILE_b4, state, 1, 1);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 3);
    draw = (DrawFunc)baseSlots[7];

    if ((s16)state->context->targets[0] > 127) {
        base = 0;
        dir = 1;
    } else {
        base = 64;
        dir = -1;
    }

    angle = -0x4000;
    for (i = 0; i != 9; i++) {
        p = &state->particles[i];
        p->x = ((sin(angle) << 5) >> 16) * dir + base + 20;
        p->y = ((cos(angle) << 4) >> 16) + 40;
        p->delay = -i * 4;
        angle += 0x1000;
    }

    state->blitMode = 2;
    if (state->context->param == 2)
        state->blitParam = 75;
    else
        state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);
    _PlaySound(0x88);

    for (frame = 0; frame != 80; frame++) {
        if (frame == 24)
            _Func_80bd7dc(0x85);

        for (i = 0; i != 9; i++) {
            p = &state->particles[i];
            if ((unsigned int)p->delay <= 23) {
                int idx = p->delay / 4;
                draw(render, state->graphics + Data_edeb2[idx], p->x - Data_ede9f[idx] / 2,
                     p->y + Data_edeab[idx], Data_ede9f[idx], Data_edea5[idx]);
                if (state->context->param != 0)
                    draw(render, state->graphics + Data_edeb2[idx], p->x - Data_ede9f[idx] / 2,
                         p->y + Data_edeab[idx] - 16, Data_ede9f[idx], Data_edea5[idx]);
                if (state->context->param == 2)
                    draw(render, state->graphics + Data_edeb2[idx], p->x - Data_ede9f[idx] / 2,
                         p->y + Data_edeab[idx] - 32, Data_ede9f[idx], Data_edea5[idx]);
            }
            p->delay++;
        }

        for (i = 0; i != state->context->numTargets; i++) {
            if (frame == i * 8 + 16)
                SetBattleActorState((s16)state->context->targets[i], 10, 5, i, 12);
        }

        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    gfree(0x2e);
    StopTask(Task_BlitAnim);
    AnimEnd();
}
