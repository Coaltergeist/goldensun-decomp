#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct CurseParticle {
    s32 unk0[6];
    s32 delay;
};

struct CurseState {
               u8 graphics[0x7080];
               struct CurseParticle particles[16];
               u8 pad_7240[0x7780 - 0x7240];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001ef0[];

extern char _FILE_7a[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void GetBattleActorPos2(int, s32 *);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Curse(struct AnimContext *context)
{
    u8 **slots = iwram_3001ef0;
    u8 *render = slots[0];
    struct CurseState *state = (struct CurseState *)slots[-1];
    DrawFunc pair[2];
    int frame, i, start;
    s32 pos[3];
    struct CurseParticle *p;

    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000050) = 0;
    LoadVFXFile((int)_FILE_7a, state, 1, 1);
    if (state->context->side == 1)
        (*(vu32 *)0x04000028) = 0xffff9000;
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    state->blitMode = 1;
    state->blitParam = 0;
    pair[0] = (DrawFunc)slots[6];
    StartTask(Task_BlitAnim, 0x480);

    for (i = 0; i != state->context->numTargets; i++)
        state->particles[i].delay = Random() & 63;

    for (frame = 0; frame != state->context->numTargets * 32 + 32; frame++) {
        if (frame == 32)
            _Func_80bd7dc(0);
        for (i = 0; i != state->context->numTargets; i++) {
            start = i * 16;
            if (frame == start)
                _PlaySound(0x8f);
            if (frame >= start && frame < start + 0x48) {
                p = &state->particles[i];
                GetBattleActorPos2((s16)state->context->targets[i], pos);
                if (state->context->side == 1)
                    pos[0] -= 0x70;
                pos[1] -= 0x10;
                pair[0](render, state->graphics + 0x6c0, pos[0] - 8, pos[1] - 4, 16, 20);
                if (frame >= start)
                    pair[0](render, state->graphics + (((frame - start + p->delay) / 6) % 9) * 0xc0,
                         pos[0] - 8, pos[1] - 16, 16, 12);
            }
        }
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
