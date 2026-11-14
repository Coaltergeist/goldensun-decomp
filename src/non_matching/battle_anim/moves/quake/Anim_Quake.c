/*
 * Non-matching clean C candidate for Anim_Quake (exact .text size 0x420 == 0x420 / 1056 bytes,
 * .rodata 9 == 9 bytes, 27/27 relocations under GAIA_CFLAGS / -fstrict-aliasing).
 *
 * Matches 0x00..0x49 100% byte-for-byte.
 * Remaining diff (+0x4a..+0x64): in tools/gcc296, 08.loop hoists `=gBuffer` out of the
 * 16x40 tile loop and 09.cse2 merges it with the `gBuffer` argument to `Func_8001af8`
 * across `_call_via_r3`, keeping `gBuffer` in callee-saved `r5` across the call instead
 * of reloading `=gBuffer` from the literal pool (same `thumb_movsi_insn` pool-load RTX_COST
 * difference seen in `Anim_ScreenShatter` and `BaseAnim_Tackle`).
 */
#include "anim.h"
#include "math.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct QuakeParticle {
    s32 unk0, unk4, unk8, unkc, unk10, unk14;
    s32 hit;
};

struct QuakeVec { s32 x, y, z; };

static const u8 QuakeParams[] = {
    0x50, 0x20, 2,
    0x70, 0x40, 4,
    0x90, 0x60, 8
};

struct QuakeState {
    u8 graphics[0x1e00];
    u8 waveGraphics[0x7080 - 0x1e00];
    struct QuakeParticle particles[16];
    u8 pad_7240[0x7780 - 0x7240];
    s32 blitMode;
    s32 blitParam;
    u8 pad_7788[0x77a8 - 0x7788];
    s32 unk77A8;
    u8 pad_77ac[0x7824 - 0x77ac];
    s32 frameReady;
    struct AnimContext *context;
};

extern u8 *iwram_3001eec[];
extern u8 *iwram_3001e80[];
extern void *gPtrs[];
extern u8 gBuffer[];
extern char _FILE_8b[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void LoadVFXFile(int, void *, int, int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void Task_BlitAnim(void);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void InitMatrixStack(void);
extern void MatrixSetLook(void *, void *);
extern s32 **_GetBattleActor(int);
extern int Func_80e3944(struct QuakeVec *, struct QuakeVec *);
extern void SetBattleActorState(int, int, int, int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

struct QuakeAmp { s32 v[4]; };

extern const struct QuakeAmp Data_eda88;

void Anim_Quake(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct QuakeState *state = (struct QuakeState *)*slots++;
    u8 *render = *slots;
    int frame, i, j, k, t;
    DrawFunc draw;
    u8 *camera = (u8 *)baseSlots[-27];
    int xoff, h;
    struct QuakeAmp amp;
    struct QuakeVec pos, out;

    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000050) = 0;
    LoadVFXFile((int)_FILE_8b, state->waveGraphics, 1, 1);
    {
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy(gBuffer, (void *)0x6008000, 0x8000);
    }
    for (i = 0; i != 16; i++) {
        int y = i + 96;
        for (j = 0; j != 40; j++) {
            int x = j + 32;
            state->graphics[i * 40 + j] =
                *((x & 7) + ((x / 8) << 6) + ((y & 7) << 3) + ((y / 8) << 11) + gBuffer);
        }
    }
    if (state->context->side == 1) {
        (*(vu32 *)0x04000028) = -0x7000;
        xoff = -112;
    } else {
        xoff = 0;
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    draw = (DrawFunc)gPtrs[0x2e];
    for (i = 0; i != state->context->numTargets; i++)
        state->particles[i].hit = 0;
    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);
    amp = Data_eda88;
    state->unk77A8 = 0x80;
    _PlaySound(0x8d);

    for (frame = 0; frame != QuakeParams[state->context->param * 3]; frame++) {
        InitMatrixStack();
        MatrixSetLook(camera, camera + 0xc);
        if (frame == QuakeParams[state->context->param * 3] - 16)
            _Func_80bd7dc(0x85);
        for (k = 0; k != 3; k++) {
            int start = k * 4 + 16;
            if ((frame & 31) + 32 == start)
                amp.v[k] += 32;
            if (frame >= start
                && frame < start + QuakeParams[state->context->param * 3 + 1]) {
                int top;
                h = (sin((frame - start) << 10) * amp.v[k]) >> 16;
                if (h < 0)
                    h = -h;
                top = 112 - h;
                draw(render, state->waveGraphics, k * 40 + 8, top, 40, h);
                draw(render, state->graphics, k * 40 + 8, 96 - h, 40, 16);
                for (t = 0; t != state->context->numTargets; t++) {
                    s32 *actor = *_GetBattleActor((s16)state->context->targets[t]);
                    pos.x = actor[2];
                    pos.y = actor[3];
                    pos.z = actor[4];
                    Func_80e3944(&pos, &out);
                    out.x += xoff;
                    if (out.x >= k * 40 + 8 && out.x <= k * 40 + 48 && out.y >= top) {
                        actor[10] = 0xc0000;
                        actor[18] = 0xab85;
                    }
                    if (actor[3] < 0)
                        SetBattleActorState((s16)state->context->targets[t], 0, 5, -1, 0);
                }
            }
        }
        {
            struct QuakeParticle *p = state->particles;
            for (t = 0; t != state->context->numTargets; t++, p++) {
                s32 *actor = *_GetBattleActor((s16)state->context->targets[t]);
                if (p->hit == 0 && actor[3] <= 0 && actor[10] < 0) {
                    p->hit = 1;
                    SetBattleActorState((s16)state->context->targets[t], 7, 5, t, 5);
                }
            }
        }
        UpdateScreenShake(QuakeParams[state->context->param * 3 + 2],
                          QuakeParams[state->context->param * 3 + 2]);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
