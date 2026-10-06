/* battle_anim/moves/vine.c */
#include "anim.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct VineParticle {
    s32 x;
    s32 pad[6];
};

struct VineState {
    /* 0000 */ u8 graphics[0x7080];
    /* 7080 */ struct VineParticle particles[16];
    /* 7240 */ u8 pad_7240[0x7780 - 0x7240];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x77a8 - 0x7788];
    /* 77a8 */ s32 unk77A8;
    /* 77ac */ u8 pad_77ac[0x7824 - 0x77ac];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

static const signed char Data_eeb96[] = {
    0, 14, -32, 8, 32, -48, 4, 12, -24, 24, -12, -40, -4, -16, -32, 12
};

extern u8 *iwram_3001eec[];
extern char _FILE_a6[];

extern void Anim_Djinni(struct AnimContext *, int, int, int, int *, int *);
extern void AnimStart(int);
extern void AnimEnd(void);
extern void LoadVFXFile(int, void *, int, int);
extern void GetBattleActorPos2(int, int *);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void Task_BlitAnim(void);
extern void _PlaySound(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Vine(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct VineState *state = (struct VineState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    int a, b;
    int src[3], dst[3];
    int frame, i, h, idx;
    struct VineParticle *p;
    int side = context->side;

    state->context = context;
    Anim_Djinni(context, 4, side, 4, &b, &a);
    AnimStart(1);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000050) = 0;
    LoadVFXFile((int)_FILE_a6, state, 1, 1);
    GetBattleActorPos2((s16)state->context->targets[0], src);
    GetBattleActorPos2((s16)state->context->targets[state->context->numTargets - 1], dst);
    src[0] += (dst[0] - src[0]) / 2;
    (*(vu32 *)0x04000028) = (0x40 - src[0]) << 8;
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 1);
    pair[1] = (DrawFunc)baseSlots[8];

    for (i = 0; i != 16; i++)
        state->particles[i].x = Data_eeb96[i] + 0x40;

    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != 70; frame++) {
        if (frame == 32) {
            _PlaySound(0x8f);
            for (i = 0; i != state->context->numTargets; i++)
                SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 16);
        }
        for (i = 0, p = state->particles; i != 16; i++, p++) {
            if (frame == i * 4 + 5)
                state->unk77A8 = 2;
            if (frame > i * 2 + 4) {
                idx = (frame / 4 + i) % 5;
                if (frame < i * 2 + 32) {
                    h = (frame - i * 2) * 4 - 16;
                    if (h > 32)
                        h = 32;
                } else {
                    h = 160 - (frame - i * 2) * 4;
                }
                if (h > 0)
                    pair[i & 1](render, state->graphics + idx * 1024,
                                p->x - 16, (i & 7) - h + 0x68, 32, h);
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
