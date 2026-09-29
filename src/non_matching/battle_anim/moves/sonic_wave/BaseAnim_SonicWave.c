#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct SonicWaveParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 timer;
};

struct SonicWaveVec { s32 x, y, z; };

struct SonicWaveActor {
    u8 pad[8];
    s32 x, y, z;
};

struct SonicWaveState {
               u8 graphics[3][6][800];
               u8 pad_3840[0x6980 - 0x3840];
               s32 scanlines[160];
               u8 pad_6c00[0x7080 - 0x6c00];
               struct SonicWaveParticle particles[15];
               u8 pad_7224[0x7780 - 0x7224];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern const u8 SonicWaveUnk_eded6[] __asm__(".Leded6");

extern const u8 SonicWaveUnk_ededc[] __asm__(".Lededc");

static const signed char SonicWaveFlags[5][4] __asm__(".Ledee8");

static const signed char SonicWaveShake[8] __asm__(".Ledefc");

const u8 SonicWaveUnk_eded6[6] = {
    0x10, 0x2e, 0x14, 0x34, 0x20, 0x50,
};

const u8 SonicWaveUnk_ededc[12] = {
    0x06, 0x08, 0x20, 0x50, 0x08, 0x10, 0x18, 0x50, 0x20, 0x04, 0x08, 0x50,
};

static const signed char SonicWaveFlags[5][4] = {
    { 0, 1, 0, 0 },
    { 0, 1, 4, 0 },
    { 0, 1, -1, 1 },
    { 1, 1, -1, 1 },
    { 1, 1, 4, 0 },
};

static const signed char SonicWaveShake[8] = {
    -1, -1, 1, 1, 1, 1, -1, -1,
};

extern u8 *iwram_3001eec[];

extern char _FILE_58[], _FILE_b4[], _FILE_a0[], _FILE_cb[], _FILE_86[], _FILE_a3[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void Task_BlitAnim(void);

extern struct SonicWaveActor **_GetBattleActor(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void Func_80e3944(struct SonicWaveParticle *, struct SonicWaveVec *);

extern void Func_80e38b8(struct SonicWaveParticle *, int, int);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void BaseAnim_SonicWave(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct SonicWaveState *state = (struct SonicWaveState *)*slots++;
    u8 *render = *slots;
    int i;
    DrawFunc pair[2];
    u8 *camera = baseSlots[-27];
    struct SonicWaveActor *actor, *target;
    struct SonicWaveParticle *p;
    struct SonicWaveVec out;
    int frames, frame, k, size;
    int count = 3;
    const signed char *flags;
    s32 *line;
    const u8 *gfx;

    state->context = context;
    AnimStart(1);
    if (state->context->side == 0) {
        BuildDraw2DFuncEx(0x2e, 7, 7, 11, 2);
        pair[0] = (DrawFunc)baseSlots[7];
        BuildDraw2DFuncEx(0x2f, 7, 7, 3, 2);
    } else {
        BuildDraw2DFuncEx(0x2e, 7, 7, 15, 2);
        pair[0] = (DrawFunc)baseSlots[7];
        BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
    }
    pair[1] = (DrawFunc)baseSlots[8];
    LoadVFXFile((int)_FILE_58, state, 0, 0);
    {
        char *name;
        void *file;
        void *(*copy)(void *, const void *, unsigned int);
        switch (subanim) {
        case 0: name = _FILE_b4; break;
        case 1: name = _FILE_a0; break;
        case 2: name = _FILE_cb; break;
        case 3: name = _FILE_86; break;
        case 4:
        default: name = _FILE_a3; break;
        }
        file = GetFile((int)name);
        copy = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);
    flags = SonicWaveFlags[subanim];
    actor = *_GetBattleActor(state->context->user);
    frames = count * state->context->numTargets * 6 + 48;

    for (i = 0; i != state->context->numTargets; i++) {
        target = *_GetBattleActor((s16)state->context->targets[i]);
        for (k = 0; k != 3; k++) {
            p = &state->particles[i * count + k];
            p->x = actor->x;
            p->y = actor->y + 0x140000;
            p->z = actor->z;
            p->vx = (target->x - p->x) / 24;
            p->vy = (target->y - actor->y) / 24;
            p->vz = (target->z - p->z) / 24;
            p->timer = 0;
        }
    }

    for (frame = 0; frame != frames; frame++) {
        line = state->scanlines;
        for (i = 0; i != 160; i++)
            *line++ = (0x80000 - sin((frame + i) << 12) * 2) >> 10;
        if (frame > frames - 16)
            (*(vu16 *)0x04000052) = (frames - frame) | 0x1000;
        InitMatrixStack();
        MatrixSetLook(camera, camera + 0xc);
        for (i = 0; i != state->context->numTargets; i++) {
            if (frame < i * 32)
                continue;
            for (k = 0; k != 3; k++) {
                if (frame < i * 32 + k * 6)
                    continue;
                p = &state->particles[i * count + k];
                Func_80e3944(p, &out);
                out.x >>= 1;
                size = p->timer / 8;
                if (size > 5)
                    size = 5;
                if (flags[0]) {
                    gfx = state->graphics[0][size] + (frame / 2) % 3 * sizeof(state->graphics[0]);
                    pair[0](render, gfx, out.x - 10, out.y - 40, 20, 40);
                    pair[1](render, gfx, out.x - 10, out.y, 20, 40);
                } else {
                    gfx = state->graphics[2][size];
                    pair[0](render, gfx, out.x - 10, out.y - 40, 20, 40);
                    pair[1](render, gfx, out.x - 10, out.y, 20, 40);
                }
                Func_80e38b8(p, 0x40, 0);
                p->timer++;
            }
            if (flags[3] && frame >= i * 32 + 30 && frame < i * 32 + 62) {
                struct SonicWaveActor *victim = *_GetBattleActor((s16)state->context->targets[i]);
                victim->x += SonicWaveShake[(frame - i * 32 - 30) % 8] << 16;
                if (victim->x > 0)
                    victim->x += 0x8000;
                else
                    victim->x -= 0x8000;
                SetBattleActorState((s16)state->context->targets[i], -1, 5, -1, 0);
            }
            if (flags[1]) {
                if (frame == i * 32 + 24) {
                    _PlaySound(0x85);
                    if (i == 0)
                        _Func_80bd7dc(-1);
                    SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 8);
                }
                if (frame == i * 32 + 40)
                    SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 8);
            }
            if (flags[2] != -1 && frame == i * 32 + 24) {
                state->unk77A8 = 4;
                _SetBattleActorKnockback((s16)state->context->targets[i], flags[2]);
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
