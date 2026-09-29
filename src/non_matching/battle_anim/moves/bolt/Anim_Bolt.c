#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct BoltParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 velX;
    s32 velY;
    s32 unk14;
    s32 life;
};

struct BoltPos {
    s32 x;
    s32 y;
    s32 z;
};

struct BoltState {
               u8 graphics[0x7080];
               struct BoltParticle particles[64];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern DrawFunc iwram_3001f0c;

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern char _FILE_ce[], _FILE_c4[], _FILE_73[];

extern const u16 Data_ede48[];

extern const u16 Data_edebe[];

extern const u8 Data_edeca[];

extern const u8 Data_eded0[];

static const u8 sBoltCounts[] = {
    16, 0, 15, 1,
    32, 3, 31, 1,
    128, 5, 48, 3
};

static const u8 sBoltFlips[] = { 0, 4, 8, 12 };

static const u8 sBoltModes[] = { 2, 2, 3 };

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void *Func_80008d8(void *, int, int);

extern void GetBattleActorPos3(int, struct BoltPos *);

extern void Func_80e3908(struct BoltParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Bolt(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct BoltState *state = (struct BoltState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx = baseSlots[2];
    DrawFunc draw;
    struct BoltPos pos;
    struct BoltParticle *p;
    int frame, i, j;

    state->context = context;
    AnimStart(1);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    draw = (DrawFunc)baseSlots[7];
    LoadVFXFile((int)_FILE_ce, state, 1, 0);
    LoadVFXFile((int)_FILE_c4, state->graphics + 0xc56, 1, 1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);

    for (j = 0; j != 1024; j++)
        ewram_2010018[j * 7] = 0;
    for (j = 0; j != 64; j++)
        state->particles[j].life = -1;

    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    _PlaySound(0x8a);

    for (frame = 0; frame != state->context->numTargets * 8 + 40; frame++) {
        if (frame == 24)
            _Func_80bd7dc(0x85);

        {
            void *(*clear)(void *, int, int) = Func_80008d8;
            for (i = 0; i != state->context->numTargets; i++) {
                if (frame == i * 8)
                    clear(render, 0x4000, 0x10101010);
            }
        }

        for (i = 0; i != state->context->numTargets; i++) {
            GetBattleActorPos3((s16)state->context->targets[i], &pos);
            pos.x /= 2;
            if (frame == i * 8 + 1)
                state->unk77A8 = 4;
            if (frame == i * 8 + 4) {
                SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 6);
                _SetBattleActorKnockback((s16)state->context->targets[i], 6);
            }
            if (frame >= i * 8 && frame < i * 8 + 16) {
                int height = (frame - i * 8) << 6;
                if (height > 104)
                    height = 104;
                for (j = 0; j != sBoltCounts[state->context->param * 4 + 3]; j++) {
                    int image = ((i + frame + j) / 2) & 3;
                    draw(render, state->graphics + image * 0xb40 + 0xc56,
                         pos.x - 12, 0, 24, height);
                }
                if (frame == i * 8 + 2) {
                    p = (struct BoltParticle *)(gBuffer + i * 0xe00);
                    for (j = 0; j != sBoltCounts[state->context->param * 4]; j++, p++) {
                        int speed = Random() & 0x1ff;
                        int angle = (Random() & 0x7fff) - 0x4000;
                        p->x = pos.x << 16;
                        p->y = 104 << 16;
                        speed += 64;
                        p->velX = (speed * sin(angle)) >> 5;
                        p->velY = -(speed * cos(angle)) >> 6;
                        p->life = (Random() & 7) + 32;
                    }
                }
            }
            if (frame >= i * 8 + 2 && frame < i * 8 + 24) {
                for (j = 0; j != sBoltCounts[state->context->param * 4 + 1]; j++) {
                    int t = j & 3;
                    int range = sBoltCounts[state->context->param * 4 + 2];
                    int r = Random() % range;
                    int x, y;
                    y = pos.y - r - Data_eded0[t] / 2 + 8;
                    range = range - r + 1;
                    x = pos.x + Random() % range - range / 2 - Data_edeca[t] / 2;
                    BuildDraw2DFuncEx(0x2f, 7, 7, 3 | sBoltFlips[Random() & 3],
                                      sBoltModes[state->context->param]);
                    iwram_3001f0c(render, state->graphics + Data_edebe[t], x, y,
                                  Data_edeca[t], Data_eded0[t]);
                    gfree(0x2f);
                }
            }
        }

        p = (struct BoltParticle *)gBuffer;
        for (j = 0; j != 1024; j++, p++) {
            if (p->life > 0) {
                p->life--;
                Func_80e3908(p, 0x3c, 0x1000);
                if (p->y > 104 << 16) {
                    p->velY = -p->velY / 2;
                } else if ((u32)p->x < 0x7f0000 && p->y >= 0) {
                    int size = p->life / 16 + 1;
                    draw(render, particleGfx + Data_ede48[size - 1],
                         (p->x >> 16) - size / 2, (p->y >> 16) - size, size, size * 2);
                }
            }
        }

        UpdateScreenShake(2, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
