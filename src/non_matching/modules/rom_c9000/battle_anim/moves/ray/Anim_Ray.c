#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct RayParticle {
    s32 x, y;
    s32 unk8;
    s32 vx, vy;
    s32 unk14;
    s32 life;
};

struct RayState {
               u8 pad_0000[0x60e];
               u8 graphics[0x7780 - 0x60e];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

static const u8 RayBurst[] = { 2, 4, 2, 6, 4, 8 };

extern u8 *iwram_3001eec[];

extern void *gPtrs[];

extern u8 gBuffer[];

extern const u16 Data_ede48[];

extern char _FILE_c4[], _FILE_73[];

extern void Func_80cdb24(int);

extern void AnimEnd(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void *Func_80008d8(void *, int, int);

extern void Func_80e3908(struct RayParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Ray(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct RayState *state = (struct RayState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    struct RayParticle *p, *q;
    int frame;
    u8 *particleGfx;
    int i, j, count, x, y, angle;

    particleGfx = baseSlots[2];

    state->context = context;
    Func_80cdb24(1);
    if (state->context->param == 2)
        (*(vu16 *)0x04000020) = 0x80;
    else
        (*(vu16 *)0x04000020) = 0x100;
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)gPtrs[0x2e];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 3);
    pair[1] = (DrawFunc)gPtrs[0x2f];
    LoadVFXFile((int)_FILE_c4, state->graphics, 1, 1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    if (state->context->param == 2) {
        if (state->context->side == 1)
            (*(vu32 *)0x04000028) = -0x1000;
        else
            (*(vu32 *)0x04000028) = 0x1000;
    } else if (state->context->side == 1) {
        (*(vu32 *)0x04000028) = -0x8000;
    }

    p = (struct RayParticle *)gBuffer;
    for (j = 0; j != 1024; j++, p++) {
        int speed = (Random() & 0x3ff) + 0x100;
        int dir = (Random() & 0x7fff) - 0x4000;
        p->x = 0x4000;
        p->y = 0x7000;
        p->unk8 = (sin(dir) * speed) >> 16;
        p->unk14 = -(cos(dir) * speed * 2) >> 16;
        p->life = 0;
    }

    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    _PlaySound(0x8a);

    for (frame = 0; frame != 64; frame++) {
        if (frame == 20)
            _Func_80bd7dc(0x85);
        if (frame <= 15) {
            if (frame % 5 == 2) {
                void *(*clear)(void *, int, int) = Func_80008d8;
                clear(render, 0x4000, 0x10101010);
            }
            for (i = 0; i != 4; i++) {
                count = 0;
                angle = ((frame << 11) + 0x4000) * i;
                x = (((32 - frame) * sin(angle)) >> 16) + 64;
                y = -((cos(angle) << 3) >> 16) - 8;
                if (state->context->param == 0)
                    pair[0](render, state->graphics + (Random() & 3) * 0xb40,
                            (Random() & 7) + x - 16, y, 24, 120);
                else
                    pair[i & 1](render, state->graphics + (Random() & 3) * 0xb40,
                                (Random() & 7) + x - 16, y, 24, 120);
                p = (struct RayParticle *)gBuffer;
                for (j = 0; j != 1024; j++, p++) {
                    if (p->life == 0) {
                        int speed = (Random() & 0x1ff) + 0x80;
                        int dir = (Random() & 0x7fff) - 0x4000;
                        p->y = (y + 0x70) << 16;
                        p->x = x << 16;
                        p->vx = (sin(dir) * speed) >> 9;
                        p->vy = -(cos(dir) * speed * 2) >> 7;
                        p->life = (Random() & 7) + 32;
                        if (++count == RayBurst[state->context->param * 2 + 1])
                            break;
                    }
                }
            }
            state->unk77A8 = 1;
        }
        q = (struct RayParticle *)gBuffer;
        for (j = 0; j != 1024; j++, q++) {
            if (q->life > 0) {
                q->life--;
                Func_80e3908(q, 0x3c, -0x800);
                if (q->y > 0x780000) {
                    q->vy = -q->vy / 2;
                } else if ((u32)q->x <= 0x7effff && q->y >= 0) {
                    int px = q->x >> 16;
                    int py = q->y >> 16;
                    int w = q->life / 8 + 1;
                    pair[0](render, particleGfx + Data_ede48[w - 1],
                            px - w / 2, py - w, w, w * 2);
                }
            }
        }
        if ((unsigned int)(frame - 4) <= 91) {
            for (j = 0; j != state->context->numTargets; j++) {
                if (frame == j * 4 + 4)
                    SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 10);
            }
        }
        UpdateScreenShake(2, 4);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
