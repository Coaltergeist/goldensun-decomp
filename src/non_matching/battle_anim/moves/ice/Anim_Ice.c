#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct IceParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 timer;
};

struct IceState {
               u8 graphics[0x7080];
               struct IceParticle particles[32];
               struct IceParticle shards[32];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern const u8 IceParams[][2] __asm__(".Leded6");

extern const u16 Data_ede84[];

extern const u8 Data_ede96[];

extern u8 *iwram_3001eec[];

extern void *gPtrs[];

extern u16 gBuffer[];

extern char _FILE_b3[], _FILE_ba[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void Func_80c9048(void);

extern void Func_80c91a4(void);

extern void _Func_80bd7dc(int);

extern void _PlaySound(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Ice(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct IceState *state = (struct IceState *)*slots++;
    u8 *render = *slots++;
    u8 *gfx;
    DrawFunc pair[2];
    struct IceParticle *p, *q;
    int i, j, frame, x, y, w, idx;

    gfx = baseSlots[2];
    state->context = context;
    AnimStart(0x2001);
    (*(vu16 *)0x04000020) = 0x100;
    LoadVFXFile((int)_FILE_b3, state, 1, 1);
    LoadVFXFile((int)_FILE_ba, gfx, 0, 0);
    Func_80c9048();
    (*(vu16 *)0x04000050) = 0x3f44;
    (*(vu16 *)0x04000048) = 0x3337;

    for (i = 0; i != 32; i++) {
        p = &state->particles[i];
        x = (Random() & 0x3f) + (Random() & 7) + 24;
        y = -16 - i * 8;
        if (state->context->side == 1)
            x = x + y + 24;
        else
            x = x - y + 80;
        p->x = x * 8;
        p->y = y * 8;
        p->timer = -1;
    }
    for (i = 0; i != 32; i++)
        state->shards[i].timer = -1;

    if (state->context->side == 0) {
        BuildDraw2DFuncEx(0x2e, 7, 7, 2, 2);
        BuildDraw2DFuncEx(0x2f, 7, 7, 2, 3);
    } else {
        BuildDraw2DFuncEx(0x2e, 7, 7, 6, 2);
        BuildDraw2DFuncEx(0x2f, 7, 7, 6, 3);
    }
    pair[0] = (DrawFunc)gPtrs[0x2e];
    pair[1] = (DrawFunc)gPtrs[0x2f];

    if (state->context->side == 0) {
        for (i = 0; i != 160; i++) {
            if ((unsigned int)(i - 8) <= 0x5f)
                gBuffer[i] = ((0x70 - i) << 8) | (0xf0 - i);
            else if (i <= 0x87)
                gBuffer[i] = 0x888;
            else
                gBuffer[i] = 0x100;
        }
    } else {
        for (i = 0; i != 160; i++) {
            if ((unsigned int)(i - 8) <= 0x57)
                gBuffer[i] = ((i + 0x18) << 8) | (i + 0x98);
            else if (i <= 0x87)
                gBuffer[i] = 0x78f8;
            else
                gBuffer[i] = 0x100;
        }
    }

    StartTask(Func_80c91a4, 0x480);
    state->blitMode = 2;
    if (state->context->param == 1)
        state->blitParam = 0x4b;
    else
        state->blitParam = 0x32;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != IceParams[state->context->param][1]; frame++) {
        if (frame == IceParams[state->context->param][1] - 16)
            _Func_80bd7dc(0x84);

        for (i = 0; i != IceParams[state->context->param][0]; i++) {
            p = &state->particles[i];
            if (p->timer == -1) {
                x = p->x / 8;
                y = p->y / 8;
                pair[state->context->param == 2](render, state->graphics, x, y, 32, 32);
                if (p->y < 0x280) {
                    if (state->context->side == 0)
                        p->x -= 0x40;
                    else
                        p->x += 0x40;
                    p->y += 0x40;
                } else {
                    if ((i & 3) == 0)
                        _PlaySound(0x73);
                    state->unk77A8 = 2;
                    p->timer = 0;
                    for (j = 0; j != state->context->numTargets; j++)
                        SetBattleActorState((s16)state->context->targets[j], 9, 5, j, 8);
                }
            }
            if (p->timer != -1) {
                x = p->x / 8;
                y = p->y / 8;
                if ((unsigned int)(p->timer - 1) <= 13)
                    pair[state->context->param == 2](render,
                                                     state->graphics + (p->timer / 3 + 1) * 0x400,
                                                     x, y, 32, 32);
                if ((unsigned int)(p->timer - 9) <= 2) {
                    for (j = 0; j != 32; j++) {
                        q = &state->shards[j];
                        if (q->timer == -1) {
                            q->timer = 18;
                            q->x = ((Random() & 0x1f) + p->x / 8) * 8 + 8;
                            q->y = ((Random() & 0xf) + p->y / 8 - 15) * 8;
                            break;
                        }
                    }
                }
                if (p->timer <= 14)
                    p->timer++;
            }
        }

        for (i = 0; i != 32; i++) {
            q = &state->shards[i];
            if (q->timer != -1) {
                if (q->timer < 18) {
                    idx = q->timer / 2;
                    w = Data_ede96[idx];
                    pair[state->context->param == 2](render, gfx + Data_ede84[idx],
                                                     q->x / 8 - w / 2, q->y / 8 - w / 2,
                                                     w, w);
                }
                if (q->timer > -1)
                    q->timer--;
            }
        }

        Func_80cd52c();
        UpdateScreenShake(4, 4);
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    StopTask(Func_80c91a4);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
    Func_80c9048();
}
