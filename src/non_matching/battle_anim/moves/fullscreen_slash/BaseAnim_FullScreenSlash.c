#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct FullScreenSlashState {
               u8 graphics[0x7780];
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

extern u8 ewram_2013840[];

extern char _FILE_4b[], _FILE_4c[], _FILE_4d[], _FILE_4e[], _FILE_4f[], _FILE_50[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void Task_BlitAnim(void);

extern void _Func_80b82c4(int, int, int, int);

extern void WaitFrames(int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void _PlaySound(int);

extern void *Func_80008d8(void *, int, int);

extern void _Func_80bd7dc(int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void gfree(int);

void BaseAnim_FullScreenSlash(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    u8 **slots = iwram_3001eec;
    struct FullScreenSlashState *state = (struct FullScreenSlashState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    int frame;

    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000050) = 0;
    if (subanim == 0) {
        LoadVFXFile((int)_FILE_4f, state, 1, 0);
        LoadVFXFile((int)_FILE_50, gBuffer, 1, 1);
    } else if (subanim == 1) {
        LoadVFXFile((int)_FILE_4d, state, 1, 0);
        LoadVFXFile((int)_FILE_4e, gBuffer, 1, 1);
    } else {
        LoadVFXFile((int)_FILE_4b, state, 1, 0);
        LoadVFXFile((int)_FILE_4c, gBuffer, 1, 1);
    }
    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);
    if (subanim == 1)
        _Func_80b82c4(context->user, (s16)context->targets[0], 0x10, 0x80000);
    else
        _Func_80b82c4(context->user, (s16)context->targets[0], 0x10, 0);
    WaitFrames(0x10);
    if (state->context->side == 1)
        BuildDraw2DFuncEx(0x2e, 7, 7, 7, 0);
    else
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 0);
    pair[0] = (DrawFunc)gPtrs[0x2e];
    _PlaySound(0xd4);
    for (frame = 0; frame != 21; frame++) {
        if (frame <= 3)
            pair[0](render, state->graphics, 0, 0, 120, 120);
        else if (frame <= 7)
            pair[0](render, state->graphics + 0x3840, 0, 0, 120, 120);
        else if (frame <= 11)
            pair[0](render, gBuffer, 0, 0, 120, 120);
        else if (frame <= 15)
            pair[0](render, ewram_2013840, 0, 0, 120, 120);
        if ((unsigned int)(frame - 16) <= 3) {
            void *(*clear)(void *, int, int) = Func_80008d8;
            clear(render, 0x4000, 0x3f3f3f3f);
        }
        if (frame == 18)
            _Func_80bd7dc(0x86);
        if (frame == 20) {
            state->unk77A8 = 8;
            _SetBattleActorKnockback((s16)state->context->targets[0], 4);
        }
        UpdateScreenShake(0x10, 0x10);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    gfree(0x2e);
    StopTask(Task_BlitAnim);
    AnimEnd();
}
