#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct SpiderWebPos {
    s32 x, y, z;
};

struct SpiderWebState {
               u8 graphics[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001ef0[];

extern DrawFunc iwram_3001f08;

extern char _FILE_59[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void GetBattleActorPos2(int, struct SpiderWebPos *);

extern void LoadVFXFile(int, void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_SpiderWeb(struct AnimContext *context)
{
    u8 **slots = iwram_3001ef0;
    struct SpiderWebState *state = (struct SpiderWebState *)slots[-1];
    u8 *render = *slots;
    struct SpiderWebPos from, to;
    int frame, j;
    vu16 *blend;

    state->context = context;
    AnimStart(2);
    blend = (vu16 *)0x04000052;
    (*(vu16 *)0x04000020) = 0x100;
    *blend = 0x1000;
    GetBattleActorPos2((s16)state->context->targets[0], &from);
    GetBattleActorPos2((s16)state->context->targets[state->context->numTargets - 1], &to);
    from.x += (to.x - from.x) / 2;
    (*(vu32 *)0x04000028) = (64 - from.x) << 8;
    LoadVFXFile((int)_FILE_59, state, 1, 1);
    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);
    _PlaySound(0x8f);

    for (frame = 0; frame != 63; frame++) {
        if (frame <= 8)
            (*(vu16 *)0x04000052) = (frame * 2) | 0x1000;
        if (frame > 53)
            (*(vu16 *)0x04000052) = (0x7c - frame * 2) | 0x1000;

        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
        iwram_3001f08(render, state->graphics, 0x21, 0x29, 32, 32);
        gfree(0x2e);
        BuildDraw2DFuncEx(0x2e, 7, 7, 7, 1);
        iwram_3001f08(render, state->graphics, 0x40, 0x29, 32, 32);
        gfree(0x2e);
        BuildDraw2DFuncEx(0x2e, 7, 7, 11, 1);
        iwram_3001f08(render, state->graphics, 0x21, 0x48, 32, 32);
        gfree(0x2e);
        BuildDraw2DFuncEx(0x2e, 7, 7, 15, 1);
        iwram_3001f08(render, state->graphics, 0x40, 0x48, 32, 32);
        gfree(0x2e);

        if (frame == 32)
            _Func_80bd7dc(0x8f);

        for (j = 0; j != state->context->numTargets; j++) {
            if (frame == 10)
                SetBattleActorState((s16)state->context->targets[j], 7, -1, j, 8);
        }

        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    AnimEnd();
}
