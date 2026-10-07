#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct HauntParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 state;
};

struct HauntState {
               u8 graphics[0x6980];
               s32 scroll[160];
               u8 pad_6c00[0x7780 - 0x6c00];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

static const u8 HauntParams[] = {
    16, 88,
    8, 72,
    12, 80,
};

extern u8 *iwram_3001eec[];

extern struct HauntParticle gBuffer[];

extern s32 ewram_2010018[];

extern char _FILE_69[], _FILE_bb[], _FILE_8d[], _FILE_91[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern s32 **_GetBattleActor(int);

extern int _Func_80b8530(int);

extern unsigned int Random(void);

extern void Func_80dbb9c(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void SetBattleActorState(int, int, int, int, int);

extern void Func_80e3944(struct HauntParticle *, s32 *);

extern void Func_80e38b8(struct HauntParticle *, int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void BaseAnim_HauntAttack(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct HauntState *state = (struct HauntState *)*slots++;
    u8 *render = *slots;
    u8 *camera = baseSlots[-27];
    DrawFunc pair[2];
    s32 out[3];
    struct HauntParticle *p;
    s32 *actor;
    s32 *scroll;
    int frame, t, i, height, delay;

    state->context = context;
    AnimStart(1);
    DecompressLZ(GetFile((int)_FILE_69), state);
    {
        void *file;
        void *(*copy)(void *, const void *, unsigned int);
        if (subanim == 0)
            file = GetFile((int)_FILE_bb);
        else if (subanim == 1)
            file = GetFile((int)_FILE_8d);
        else
            file = GetFile((int)_FILE_91);
        copy = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    BuildDraw2DFuncs(state->context->side, pair);
    for (i = 0; i != 0x400; i++)
        ewram_2010018[i * 7] = -1;

    for (t = 0; t != state->context->numTargets; t++) {
        actor = *_GetBattleActor(state->context->user);
        height = _Func_80b8530(state->context->user);
        p = &gBuffer[t * 128];
        for (i = 0; i != 128; i++, p++) {
            p->x = actor[2];
            p->y = height;
            p->z = actor[4];
            p->vx = ((Random() & 0xff) - 0x80) << 10;
            p->vy = ((Random() & 0xff) - 0x80) << 10;
            p->vz = ((Random() & 0xff) - 0x80) << 10;
            p->state = 0;
        }
    }
    StartTask(Func_80dbb9c, 0x480);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    _PlaySound(0x92);

    for (frame = 0; frame != HauntParams[subanim * 2 + 1] + state->context->numTargets * 20; frame++) {
        if (frame == 80) {
            if (subanim == 0)
                _Func_80bd7dc(0x86);
            else
                _Func_80bd7dc(0x85);
        }
        InitMatrixStack();
        MatrixSetLook(camera, camera + 0xc);
        scroll = state->scroll;
        for (i = 0; i != 160; i++)
            *scroll++ = (0x100000 - (sin((frame + i) << 10) << 4)) >> 10;

        for (t = 0, delay = 0; t != state->context->numTargets; delay += 20, t++) {
            int half;
            actor = *_GetBattleActor((s16)state->context->targets[t]);
            half = _Func_80b8530((s16)state->context->targets[t]) / 2;
            if (frame == delay + 71) {
                if (subanim == 0)
                    _PlaySound(0x86);
                else
                    _PlaySound(0x85);
            }
            if (frame == delay + 70)
                SetBattleActorState((s16)state->context->targets[t], 7, 5, t, 26);
            if (frame > delay) {
                p = &gBuffer[t * 128];
                for (i = 0; i != HauntParams[subanim * 2]; i++, p++) {
                    if (frame > (t * 10 + i) << 1 && p->state >= 0) {
                        int dx, dy, dz;
                        Func_80e3944(p, out);
                        out[0] >>= 1;
                        pair[0](render, state->graphics + (i % 3) * 0x280,
                                out[0] - 10, out[1] - 16, 20, 32);
                        Func_80e38b8(p, 0x3e, 0);
                        if (frame > delay + i + 30) {
                            dx = (actor[2] - p->x) >> 9;
                            dy = (actor[3] + half - p->y) >> 9;
                            dz = (actor[4] - p->z) >> 9;
                            p->vx += dx;
                            p->vy += dy;
                            p->vz += dz;
                            if ((unsigned int)(dx + 0xfff) <= 0x1ffe
                                && (unsigned int)(dz + 0xfff) <= 0x1ffe)
                                p->state = -1;
                        }
                    }
                }
            }
        }
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    StopTask(Func_80dbb9c);
    AnimEnd();
}
