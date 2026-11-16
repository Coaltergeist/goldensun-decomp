#include "nonmatching.h"

/* helper for Anim_Mercury (called twice by it); precedes it in ROM. */
void Func_80dfddc(unsigned char *src, unsigned char *dst, int w, int h)
{
    int i, j;

    for (i = 0; i != h; i++)
        for (j = 0; j != w; j++)
            dst[(h - 1 - i) + j * h] = src[i * w + j];
}
#include "anim.h"
#include "math.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct MercuryParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 vx;
    s32 vy;
    s32 unk14;
    s32 delay;
};

struct MercuryState {
    u8 graphics[0x2a8];
    u8 dropGraphics[0x990 - 0x2a8];
    u8 blobGraphics[0x7080 - 0x990];
    struct MercuryParticle particles[8];
    u8 pad_7160[0x7780 - 0x7160];
    s32 blitMode;
    s32 blitParam;
    u8 pad_7788[0x77a8 - 0x7788];
    s32 unk77A8;
    u8 pad_77ac[0x7824 - 0x77ac];
    s32 frameReady;
    struct AnimContext *context;
};

static const u8 LaunchFrames[] = { 4, 7, 10, 21, 34 };

extern u8 *const iwram_3001eec[];
extern struct MercuryParticle ewram_2010018[];
#define MERCURY_BUFFER ((u8 *)0x02010000)
extern const u16 Data_ede48[];
extern char _FILE_73[], _FILE_92[], _FILE_6f[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void BuildDraw2DFuncs(int, DrawFunc *);
extern void LoadVFXFile(int, void *, int, int);
extern void Func_80dfddc(unsigned char *, unsigned char *, int, int);
extern unsigned int Random(void);
extern void Task_BlitAnim(void);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void Func_80e3908(struct MercuryParticle *, int, int);
extern void SetBattleActorState(int, int, int, int, int);
extern void _SetBattleActorKnockback(int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Mercury(struct AnimContext *context)
{
    u8 *const *baseSlots = iwram_3001eec;
    u8 *const *slots = baseSlots;
    struct MercuryState *state = (struct MercuryState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    int frame;
    u8 *particleGfx = baseSlots[2];
    u8 *buf;
    struct MercuryParticle *g, *p, *q, *r;
    int i, j;
    int x, y;

    state->context = context;
    AnimStart(0);
    BuildDraw2DFuncs(0, pair);
    buf = MERCURY_BUFFER;
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_92, state, 1, 0);
    LoadVFXFile((int)_FILE_6f, buf, 1, 1);
    Func_80dfddc(buf, state->dropGraphics, 17, 104);
    Func_80dfddc(buf + 0x6e8, state->blobGraphics, 34, 65);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    for (i = 0; i != 8; i++)
        state->particles[i].delay = -1;
    for (i = 0; i != 512; i++)
        ewram_2010018[i].x = -1;
    _PlaySound(0xa2);

    for (frame = 0; frame != 96; frame++) {
        if (frame == 56)
            _Func_80bd7dc(0x85);
        for (i = 0, g = state->particles; i != 5; g++, i++) {
            if (g->delay != -1) {
                pair[0](render, state->blobGraphics, g->x - 16, g->y - 17, 65, 34);
                g->x -= 12;
                g->delay++;
                if (g->delay == 5) {
                    _PlaySound(0x85);
                    state->unk77A8 = 4;
                    for (j = 0, q = (struct MercuryParticle *)MERCURY_BUFFER + i * 32; j != 32; j++, q++) {
                        int angle = Random() & 0xffff;
                        int speed = (Random() & 0x1ff) + 256;
                        q->x = g->x << 16;
                        q->y = g->y << 16;
                        q->vx = (sin(angle) * speed) >> 8;
                        q->vy = (cos(angle) * speed) >> 7;
                        q->delay = (Random() & 15) + 32;
                    }
                }
            }
        }
        if (frame <= 95) {
            int angle = frame << 11;
            int s = sin(angle);
            int radius = 64 - frame * 2;
            x = ((s * radius) >> 17) + 96;
            y = ((cos(angle) * radius) >> 16) + 60;

            pair[1](render, state->graphics, x - 10, y - 17, 20, 34);
            for (i = 0; i != 5; i++) {
                if (frame == LaunchFrames[i]) {
                    p = &state->particles[i];
                    if (p->delay == -1) {
                        p->x = x - 8;
                        p->vx = x;
                        p->y = y;
                        p->delay = 0;
                        break;
                    }
                }
                if (frame == LaunchFrames[i] + 6) {
                    for (j = 0; j != state->context->numTargets; j++) {
                        SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 6);
                        _SetBattleActorKnockback((s16)state->context->targets[j], 6);
                    }
                }
            }
        }
        r = (struct MercuryParticle *)MERCURY_BUFFER;
        for (i = 0; i != 256; i++, r++) {
            if (r->delay != -1) {
                int size = r->delay / 16 + 2;
                pair[1](render, particleGfx + Data_ede48[size - 1],
                        *(s16 *)((u8 *)&r->x + 2) - size / 2,
                        *(s16 *)((u8 *)&r->y + 2) - size, size, size * 2);
                Func_80e3908(r, 0x3e, 0x2000);
                r->delay--;
            }
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
