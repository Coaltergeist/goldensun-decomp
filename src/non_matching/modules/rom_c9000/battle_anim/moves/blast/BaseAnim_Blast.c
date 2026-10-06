#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct BlastParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 age;
};

struct BlastState {
               u8 graphics[0x7080];
               struct BlastParticle particles[32];
               u8 pad_7400[0x7780 - 0x7400];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

static const u8 BlastCounts[] = {
    16, 8, 72,
    32, 16, 80,
    128, 32, 88,
};

static const u16 BlastDebrisOffsets[] = {
    0x0000, 0x0100, 0x0500, 0x0e00, 0x1700, 0x2000, 0x2900,
};

static const u16 BlastDebrisSizes[] = {
    0x10, 0x20, 0x30, 0x30, 0x30, 0x30, 0x30, 0x00,
    0x24, 0x64, 0xc8, 0x158, 0x21c, 0x00,
    0x24, 0x64, 0xc8, 0x158, 0x21c, 0x31c, 0x460, 0x5f0, 0x76c, 0x8fc,
    0x0806, 0x0c0a, 0x100e, 0x1412, 0x1413, 0x0806, 0x0c0a, 0x100e,
    0x1412, 0x1414, 0x0000,
};

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80[];

extern void *gPtrs[];

extern struct BlastParticle gBuffer[];

extern const u16 Data_ede48[];

extern char _FILE_c0[], _FILE_96[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern unsigned int Random(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void Func_80e3944(struct BlastParticle *, s32 *);

extern void Func_80e38b8(struct BlastParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void BaseAnim_Blast(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    u8 **slots = iwram_3001eec;
    struct BlastState *state = (struct BlastState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    struct BlastParticle *p;
    s32 screen[3];
    int variant, frame, i, size;

    state->context = context;
    AnimStart(1);
    LoadVFXFile((int)_FILE_c0, state, 1, 0);
    if (subanim == 1) {
        vu16 *pal = (vu16 *)0x05000000;
        for (i = 0; i != 64; i++) {
            int c = i / 2;
            *pal++ = (c << 10) | (c << 5) | c;
        }
        variant = 1;
    } else {
        void *file = GetFile((int)_FILE_96);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
        variant = state->context->param;
    }

    for (i = 0; i != 32; i++) {
        p = &state->particles[i];
        if (state->context->side == 1)
            p->x = 0x320000;
        else
            p->x = -0x320000;
        p->y = 0;
        p->z = 0;
        p->vx = ((Random() & 63) - 32) << 13;
        p->vy = ((Random() & 63) + 16) << 12;
        p->vz = ((Random() & 63) - 32) << 13;
        p->age = 0;
    }
    for (i = 0; i != 1024; i++) {
        p = &gBuffer[i];
        if (state->context->side == 1)
            p->x = 0x320000;
        else
            p->x = -0x320000;
        p->y = 0;
        p->z = 0;
        p->vx = ((Random() & 63) - 32) << 13;
        p->vy = ((Random() & 31) + 8) << 13;
        p->vz = ((Random() & 63) - 32) << 13;
        p->age = 0;
    }

    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)gPtrs[0x2e];
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != BlastCounts[variant * 3 + 2]; frame++) {
        u8 *camera = *iwram_3001e80;
        InitMatrixStack();
        MatrixSetLook(camera, camera + 0xc);
        if (frame == 2)
            _PlaySound(0x90);
        if (frame == BlastCounts[variant * 3 + 2] - 48)
            _Func_80bd7dc(0x85);

        p = gBuffer;
        for (i = 0; i != BlastCounts[variant * 3]; i++, p++) {
            if (p->y >= 0) {
                Func_80e3944(p, screen);
                screen[0] >>= 1;
                screen[0] = screen[0] + state->context->side * 32 - 16;
                if (screen[2] < 0xa0)
                    screen[2] = 0xa0;
                if (screen[2] > 0x31f)
                    screen[2] = 0x31f;
                size = 9 - (screen[2] - 0xa0) / 64;
                pair[0](render, state->graphics + Data_ede48[size - 1] + (i & 1) * 0x302 + 0x3200,
                     screen[0] - size / 2, screen[1] - size, size, size * 2);
                Func_80e38b8(p, 0x40, -0x2000);
            }
        }

        if (frame > 2) {
            p = state->particles;
            for (i = 0; i != BlastCounts[variant * 3 + 1]; i++, p++) {
                if (i < frame && p->y >= 0) {
                    int x;
                    Func_80e3944(p, screen);
                    screen[0] >>= 1;
                    screen[0] = x = screen[0] + state->context->side * 32 - 16;
                    if (p->age <= 20) {
                        int idx = p->age / 3;
                        int w = BlastDebrisSizes[idx];
                        pair[0](render, state->graphics + BlastDebrisOffsets[idx],
                             x - w / 2, screen[1] - w / 2, w, w);
                    }
                    if (p->age <= 20)
                        p->age++;
                    Func_80e38b8(p, 0x40, -0x2000);
                }
            }
        }

        if (subanim == 0) {
            for (i = 0; i != state->context->numTargets; i++) {
                if (frame == i + 6) {
                    SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 10);
                    _SetBattleActorKnockback((s16)state->context->targets[i], 2);
                }
            }
        } else {
            for (i = 0; i != state->context->numTargets; i++) {
                if (frame == i + 6)
                    SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 10);
            }
        }
        if (frame == 2)
            state->unk77A8 = 6;
        UpdateScreenShake(16, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
