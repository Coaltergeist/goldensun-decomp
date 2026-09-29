#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct SpasmState {
               u8 graphics[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

struct SpasmPos { s32 x, y, z; };

static const u16 SpasmOffsets[] = { 0x0a8e, 0x0dcf, 0x11e4 };

static const u8 SpasmWidths[] = { 0x11, 0x13, 0x14 };

static const u8 SpasmHeights[] = { 0x31, 0x37, 0x40 };

extern u8 *iwram_3001eec[];

extern void *gPtrs[];

extern char _FILE_7b[], _FILE_8d[], _FILE_68[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern void GetBattleActorPos3(int, struct SpasmPos *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

static inline void CopyPalette(void *dst, const void *src, unsigned int size)
{
    void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
    copy(dst, src, size);
}

void BaseAnim_Spasm(void *arg, int subanim)
{
    u8 **slots = iwram_3001eec;
    struct SpasmState *state = (struct SpasmState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    struct SpasmPos pos;
    int frame, image, x;
    void **ptrs;
    s32 *blitParam;

    state->context = arg;
    AnimStart(0);
    {
        u8 *file = GetFile((int)_FILE_7b);
        CopyPalette((void *)0x05000000, file, 0x80);
        file += 0x80;
        DecompressLZ(file, state);
        file = GetFile((int)_FILE_8d);
        CopyPalette((void *)0x05000000, file, 0x80);
        if (subanim == 2) {
            file = GetFile((int)_FILE_68);
            CopyPalette((void *)0x05000000, file, 0x80);
        }
    }
    GetBattleActorPos3((s16)state->context->targets[0], &pos);
    if (subanim == 0) {
        (*(vu16 *)0x04000020) = 0x100;
        x = 64 - pos.x;
        (*(vu32 *)0x04000028) = x << 8;
    } else {
        (*(vu16 *)0x04000020) = 0xcc;
        x = -pos.x * 4 / 5 + 64;
        (*(vu32 *)0x04000028) = x << 8;
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    ptrs = gPtrs;
    pair[0] = (DrawFunc)ptrs[0x2e];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
    ptrs += 0x2f;
    blitParam = &state->blitParam;
    state->blitMode = 2;
    ptrs = *ptrs;
    *blitParam = 50;
    pair[1] = (DrawFunc)ptrs;
    StartTask(Task_BlitAnim, 0x480);
    if (subanim == 2) {
        state->unk77A8 = 0;
        _PlaySound(0xd4);
    } else if (subanim == 1) {
        state->unk77A8 = 8;
        _PlaySound(0xd4);
    } else {
        state->unk77A8 = 32;
    }

    for (frame = 0; frame != 48; frame++) {
        if (frame == 0) {
            if (subanim == 2)
                SetBattleActorState((s16)state->context->targets[0], 7, -1, 0, 32);
            else
                SetBattleActorState((s16)state->context->targets[0], 10, -1, 0, 32);
        }
        if (frame == 24)
            _Func_80bd7dc(0);
        if (frame == 8 && subanim == 0)
            _PlaySound(0x7e);
        if (frame <= 31) {
            image = frame / 4;
            if (image > 2)
                image = (image & 1) + 1;
            if (frame <= 27) {
                pair[0](render, state->graphics + SpasmOffsets[image], 64 - SpasmWidths[image],
                        pos.y - SpasmHeights[image] + 8, SpasmWidths[image], SpasmHeights[image]);
                pair[1](render, state->graphics + SpasmOffsets[image], 64,
                        pos.y - SpasmHeights[image] + 8, SpasmWidths[image], SpasmHeights[image]);
            }
        }
        if (subanim == 0)
            UpdateScreenShake(2, 2);
        else
            UpdateScreenShake(16, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
