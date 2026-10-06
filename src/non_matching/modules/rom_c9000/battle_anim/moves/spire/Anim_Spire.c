#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct SpireParticle {
    s32 x, y, speed, vx, vy, unk14, age;
};

struct SpirePosition {
    s32 x, y, z;
};

struct SpireState {
               u8 graphics[0x7080];
               struct SpireParticle spires[5];
               u8 pad_710c[0x7780 - 0x710c];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

static const u8 SpireDebrisPos[32][2] = {
    {0x41, 0x68}, {0x44, 0x5f}, {0x40, 0x5d}, {0x3d, 0x5d}, {0x40, 0x57},
    {0x48, 0x55}, {0x38, 0x58}, {0x33, 0x50}, {0x3d, 0x4b}, {0x48, 0x51},
    {0x45, 0x47}, {0x42, 0x46}, {0x47, 0x40}, {0x31, 0x47}, {0x3b, 0x45},
    {0x35, 0x44}, {0x4e, 0x49}, {0x37, 0x43}, {0x4b, 0x3e}, {0x3d, 0x41},
    {0x35, 0x3d},
};

static const s8 SpireOffsets[5] = { 0, -12, 12, -8, 16 };

static const u8 SpireDelays[5] = { 8, 16, 20, 24, 32 };

static const u8 SpireCounts[3] = { 1, 3, 5 };

static const u8 SpireDebrisWidths[15] = {
    5, 11, 10, 7, 7, 12, 13, 9, 19, 12, 17, 22, 15, 16, 14
};

static const u8 SpireDebrisHeights[15] = {
    11, 6, 10, 11, 10, 7, 17, 21, 12, 21, 17, 13, 16, 16, 15
};

static const u16 SpireDebrisOffsets[16] = {
    0x0000, 0x0037, 0x0079, 0x00dd, 0x012a, 0x0170, 0x01c4, 0x02a1,
    0x035e, 0x0442, 0x053e, 0x065f, 0x077d, 0x086d, 0x096d, 0x0a3f
};

extern u8 *iwram_3001eec[];

extern struct SpireParticle gBuffer[];

extern char _FILE_8a[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void GetBattleActorPos2(int, struct SpirePosition *);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void Func_80e3908(struct SpireParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Spire(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct SpireState *state = (struct SpireState *)*slots++;
    u8 *render = *slots;
    DrawFunc draw;
    struct SpirePosition first, last;
    struct SpireParticle *p, *s;
    int frame, i, j, count, idx;

    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000050) = 0;
    LoadVFXFile((int)_FILE_8a, state, 1, 1);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    draw = (DrawFunc)baseSlots[7];
    GetBattleActorPos2((s16)state->context->targets[0], &first);
    GetBattleActorPos2((s16)state->context->targets[state->context->numTargets - 1], &last);
    first.x += (last.x - first.x) / 2;
    (*(vu32 *)0x04000028) = (0x40 - first.x) << 8;
    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);

    count = SpireCounts[state->context->param];
    for (i = 0; i != count; i++) {
        s = &state->spires[i];
        s->y = 0xffc00000;
        s->vy = 0;
    }
    for (i = 0; i != count; i++) {
        for (j = 0; j != 21; j++) {
            p = &gBuffer[i * 21 + j];
            p->x = (SpireDebrisPos[j][0] + SpireOffsets[i]) << 16;
            p->y = SpireDebrisPos[j][1] << 16;
            p->vx = (Random() % 96 - 48) << 10;
            p->vy = -((Random() & 127) + 32) << 11;
            p->speed = 32;
            p->age = 0;
        }
    }

    for (frame = 0; frame != SpireDelays[count - 1] + 80; frame++) {
        if (frame == SpireDelays[count - 1] + 48)
            _Func_80bd7dc(0x84);
        for (i = 0; i != count; i++) {
            s = &state->spires[i];
            if (frame == SpireDelays[i] + 18) {
                _PlaySound(0x86);
                state->unk77A8 = 4;
            }
            if (frame >= SpireDelays[i] + 18) {
                for (j = 0; j != 21; j++) {
                    p = &gBuffer[i * 21 + j];
                    idx = (j % 5) * 3 + (p->age / 96) % 3;
                    draw(render, state->graphics + SpireDebrisOffsets[idx] + 0x83c,
                         *(s16 *)((u8 *)&p->x + 2) - SpireDebrisWidths[idx] / 2,
                         *(s16 *)((u8 *)&p->y + 2) - SpireDebrisHeights[idx] / 2,
                         SpireDebrisWidths[idx], SpireDebrisHeights[idx]);
                    Func_80e3908(p, 0x40, 0x4000);
                    p->age += p->speed;
                    if (p->speed > 1 && (frame & 1))
                        p->speed--;
                }
            }
            if (frame < SpireDelays[i] + 18) {
                if (frame >= SpireDelays[i])
                    draw(render, state->graphics, SpireOffsets[i] + 47,
                         *(s16 *)((u8 *)&s->y + 2), 34, 62);
                s->y += s->vy;
                if (frame > SpireDelays[i])
                    s->vy += 0x10000;
                if (s->y > 50 << 16)
                    s->y = 50 << 16;
            }
            if (frame == SpireDelays[i] + 18) {
                for (j = 0; j != state->context->numTargets; j++)
                    SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 8);
            }
        }
        UpdateScreenShake(2, 4);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
