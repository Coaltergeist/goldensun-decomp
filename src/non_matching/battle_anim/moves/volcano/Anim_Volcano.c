#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct VolcanoPlume {
    s32 x, y, z;
    s32 unkc, unk10, unk14, unk18;
};

struct VolcanoParticle {
    s32 x, y;
    s32 vx;
    s32 unkc;
    s32 vy;
    s32 unk14;
    s32 life;
};

struct VolcanoActor {
    u8 pad[8];
    s32 x;
};

struct VolcanoState {
               u8 graphics[0x7080];
               struct VolcanoPlume plumes[4];
               u8 pad_70f0[0x7780 - 0x70f0];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

static const u8 VolcanoPlumeCounts[] = { 1, 2, 4 };

static const signed char VolcanoPlumeDepths[] = {
    0, 0, 0, 0,
    24, -24, 0, 0,
    -20, 20, -60, 60
};

static const u8 VolcanoEruptFrames[] = { 8, 18, 24, 30, 34 };

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80;

extern void *gPtrs[];

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern const u16 Data_ede48[];

extern char _FILE_85[], _FILE_73[], _FILE_86[], _FILE_87[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern struct VolcanoActor **_GetBattleActor(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void Func_80e3944(struct VolcanoPlume *, s32 *);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Volcano(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct VolcanoState *state = (struct VolcanoState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    struct VolcanoActor *actor;
    struct VolcanoPlume *p;
    struct VolcanoParticle *q, *spark;
    s32 screen[3];
    u8 *camera;
    s32 *life;
    int frame, i, j, count;
    u8 *particleGfx;

    particleGfx = baseSlots[2];
    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000052) = 0x1010;
    LoadVFXFile((int)_FILE_85, state, 1, 1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    if (state->context->param == 0) {
        void *file = GetFile((int)_FILE_86);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    } else if (state->context->param == 2) {
        void *file = GetFile((int)_FILE_87);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)gPtrs[0x2e];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
    pair[1] = (DrawFunc)gPtrs[0x2f];

    for (j = 0, life = ewram_2010018; j != 0x400; j++, life += 7)
        *life = 0;

    actor = *_GetBattleActor((s16)state->context->targets[0]);
    for (j = 0, p = state->plumes; j != 4; j++, p++) {
        p->x = ((Random() & 15) + 72) << 16;
        p->y = 0;
        p->z = VolcanoPlumeDepths[state->context->param * 4 + j] << 16;
        if (actor->x < 0)
            p->x = -p->x;
    }

    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != 96; frame++) {
        camera = iwram_3001e80;
        if (state->context->param == 2 && frame < 64) {
            if (state->context->side == 0)
                *(s16 *)(camera + 0x36) += 0xc0;
            else
                *(s16 *)(camera + 0x36) -= 0xc0;
        }
        if (frame == 16)
            _Func_80bd7dc(0x86);
        InitMatrixStack();
        MatrixSetLook(camera, camera + 0xc);

        if (frame < 64) {
            for (i = 0; i != VolcanoPlumeCounts[state->context->param]; i++) {
                Func_80e3944(&state->plumes[i], screen);
                screen[0] /= 2;
                screen[1] -= 8;
                if (frame == VolcanoEruptFrames[i])
                    _PlaySound(0x91);
                if (frame >= VolcanoEruptFrames[i] + 4) {
                    int height = (frame * 16 + i * 25) % 104;
                    pair[i & 1](render, state->graphics, screen[0] - 17,
                                screen[1] - height - 104, 34, 104);
                    pair[i & 1](render, state->graphics, screen[0] - 17,
                                screen[1] - height, 34, height);
                    if (frame & 1) {
                        pair[0](render, state->graphics + 0xdd0, screen[0] - 20,
                                screen[1] - 24, 20, 37);
                        pair[1](render, state->graphics + 0xdd0, screen[0],
                                screen[1] - 24, 20, 37);
                    } else {
                        pair[0](render, state->graphics + 0x10b4, screen[0] - 20,
                                screen[1] - 24, 20, 37);
                        pair[1](render, state->graphics + 0x10b4, screen[0],
                                screen[1] - 24, 20, 37);
                    }
                }
                if (frame == VolcanoEruptFrames[i] || frame >= VolcanoEruptFrames[i] + 16) {
                    count = 0;
                    for (j = 0, q = (struct VolcanoParticle *)gBuffer; j != 0x400; j++, q++) {
                        if (q->life == 0) {
                            int speed = (Random() & 0x3ff) + 32;
                            int angle = (Random() & 0x7fff) - 0x4000;
                            int x = screen[0], y = screen[1];
                            q->x = x << 8;
                            q->y = (y << 8) + 0x1000;
                            q->vx = (sin(angle) * speed) >> 15;
                            q->vy = -(cos(angle) * speed * 2) >> 15;
                            count++;
                            if (frame == VolcanoEruptFrames[i]) {
                                q->life = (Random() & 7) + 48;
                                if (count == 200)
                                    break;
                            } else {
                                q->life = (Random() & 7) + 24;
                                if (count == 4)
                                    break;
                            }
                        }
                    }
                }
                if (frame == VolcanoEruptFrames[i]) {
                    state->unk77A8 = 2;
                    for (j = 0; j != state->context->numTargets; j++) {
                        SetBattleActorState((s16)state->context->targets[j], 10, 5, j, 8);
                        _SetBattleActorKnockback((s16)state->context->targets[j], 1);
                    }
                }
            }
        }

        for (j = 0, spark = (struct VolcanoParticle *)gBuffer; j != 0x400; j++, spark++) {
            int t = spark->life;
            if (t > 0) {
                int x, y, sx, sy, size;
                spark->life = t - 1;
                x = spark->x + spark->vx;
                y = spark->y + spark->vy;
                spark->x = x;
                spark->y = y;
                spark->vx = spark->vx * 60 / 64;
                spark->vy = spark->vy * 60 / 64 - 16;
                sy = y / 256;
                if (sy > 120) {
                    spark->vy = -spark->vy / 2;
                } else if (x >= 0 && (sx = x >> 8) <= 126 && y >= 0) {
                    size = (t - 17) / 8;
                    if (size <= 0)
                        size = 1;
                    pair[j & 1](render, particleGfx + Data_ede48[size - 1],
                                sx - size / 2, sy - size, size, size * 2);
                }
            }
        }

        UpdateScreenShake(16, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    gfree(0x2f);
    gfree(0x2e);
    StopTask(Task_BlitAnim);
    AnimEnd();
}
