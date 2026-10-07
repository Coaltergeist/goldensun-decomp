#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct ShiningStarParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 delay;
};

struct ShiningStarState {
               u8 graphics[0x7080];
               struct ShiningStarParticle particles[8];
               u8 pad_7160[0x7780 - 0x7160];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

static const u8 ShiningStarRadii[] = { 32, 16 };

extern u8 *iwram_3001eec[];

extern struct ShiningStarParticle gBuffer[];

extern const u16 Data_ede48[];

extern char _FILE_79[], _FILE_73[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern s32 **_GetBattleActor(int);

extern void ColorCycleVFXPalette(int, int, int, int);

extern void _Func_80bd7dc(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void Func_80e3944(struct ShiningStarParticle *, s32 *);

extern void _PlaySound(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

static inline void ShiningStarDrawDot(DrawFunc draw, u8 *dst, u8 *gfx, int x, int y, int width)
{
    draw(dst, gfx + Data_ede48[width - 1], x - width / 2, y - width, width, width * 2);
}

void Anim_ShiningStar(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct ShiningStarState *state = (struct ShiningStarState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx = baseSlots[2];
    u8 *camera = baseSlots[-27];
    DrawFunc draw;
    s32 *src, *dst;
    s32 screen[3];
    struct ShiningStarParticle *p, *a, *b;
    int frame, i, j, k, base, size;

    state->context = context;
    AnimStart(1);
    {
        void *file = GetFile((int)_FILE_79);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    DecompressLZ(GetFile((int)_FILE_73), particleGfx);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    state->blitMode = 2;
    state->blitParam = 50;
    draw = (DrawFunc)baseSlots[7];
    StartTask(Task_BlitAnim, 0x480);
    src = *_GetBattleActor(state->context->user);
    dst = *_GetBattleActor((s16)state->context->targets[0]);

    for (j = 0; j != 8; j++) {
        p = &state->particles[j];
        p->x = src[2] / 2;
        p->y = src[3] + 0x780000;
        p->z = src[4];
        p->vx = (dst[2] + (((Random() & 0x7f) - 0x40) << 16) - p->x) / 12;
        p->vy = (dst[3] - p->y + 0x140000) / 12;
        p->vz = (dst[4] - p->z) / 12;
        p->delay = (Random() & 15) + j * 8;
    }

    for (frame = 0; frame != 128; frame++) {
        ColorCycleVFXPalette(frame, 0xaaab, 0x5555, 0);
        if (frame == 96)
            _Func_80bd7dc(0x86);
        for (j = 0, base = 0; j != 8; j++, base += 10) {
            p = &state->particles[j];
            if (frame < p->delay)
                continue;
            InitMatrixStack();
            MatrixSetLook(camera, camera + 0xc);
            Func_80e3944(p, screen);
            screen[0] >>= 1;
            if ((unsigned int)(screen[0] + 8) <= 0x87 && screen[1] <= 127 && screen[1] >= -8) {
                for (i = 0; i != 10; i++) {
                    a = &gBuffer[j * 10 + i];
                    a->vx = screen[0] + ((sin(i * 0x199a - ((frame - p->delay) << 11))
                                          * ShiningStarRadii[i & 1] / 2) >> 16);
                    a->vy = screen[1] - ((cos(i * 0x199a - ((frame - p->delay) << 11))
                                          * ShiningStarRadii[i & 1]) >> 16);
                }
                size = 2;
                for (i = 0; i != 10; i++) {
                    a = &gBuffer[base + i];
                    b = &gBuffer[base + (i + 1) % 10];
                    for (k = 0; k != 12; k++)
                        ShiningStarDrawDot(draw, render, particleGfx,
                                           a->vx + k * (b->vx - a->vx) / 12,
                                           a->vy + k * (b->vy - a->vy) / 12, size);
                }
            }
            if (p->y <= 0x1dffff) {
                p->vy = -p->vy;
                p->vx /= 2;
                p->vz /= 2;
                state->unk77A8 = 4;
                _PlaySound(0x86);
                for (i = 0; i != state->context->numTargets; i++)
                    SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 8);
            }
            p->x += p->vx;
            p->y += p->vy;
            p->z += p->vz;
        }
        UpdateScreenShake(4, 4);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
