#include "math.h"

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

extern u8 *iwram_3001eec[];

extern u8 gBuffer[];

extern struct MercuryParticle ewram_2010018[];

extern const u16 Data_ede48[];

extern char _FILE_73[], _FILE_92[], _FILE_6f[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern void LoadVFXFile(int, void *, int, int);

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
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct MercuryState *state = (struct MercuryState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx = baseSlots[2];
    DrawFunc pair[2];
    struct MercuryParticle *p, *q;
    int frame, i, j;
    int angle, radius, x, y, launchX, launchY;

    state->context = context;
    AnimStart(0);
    BuildDraw2DFuncs(0, pair);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_92, state, 1, 0);
    LoadVFXFile((int)_FILE_6f, gBuffer, 1, 1);
    Func_80dfddc(gBuffer, state->dropGraphics, 17, 104);
    Func_80dfddc(gBuffer + 0x6e8, state->blobGraphics, 34, 65);
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
        for (i = 0; i != 5; i++) {
            p = &state->particles[i];
            if (p->delay != -1) {
                pair[0](render, state->blobGraphics, p->x - 16, p->y - 17, 65, 34);
                p->x -= 12;
                p->delay++;
                if (p->delay == 5) {
                    _PlaySound(0x85);
                    state->unk77A8 = 4;
                    q = (struct MercuryParticle *)gBuffer + i * 32;
                    for (j = 0; j != 32; j++, q++) {
                        int angle = Random() & 0xffff;
                        int speed = (Random() & 0x1ff) + 256;
                        q->x = p->x << 16;
                        q->y = p->y << 16;
                        q->vx = (sin(angle) * speed) >> 8;
                        q->vy = (cos(angle) * speed) >> 7;
                        q->delay = (Random() & 15) + 32;
                    }
                }
            }
        }
        if (frame <= 95) {
            angle = frame << 11;
            radius = 64 - frame * 2;
            x = (sin(angle) * radius) >> 17;
            launchX = x + 96;
            y = (cos(angle) * radius) >> 16;
            launchY = y + 60;

            pair[1](render, state->graphics, x + 86, y + 43, 20, 34);
            for (i = 0; i != 5; i++) {
                if (frame == LaunchFrames[i] && state->particles[i].delay == -1) {
                    p = &state->particles[i];
                    p->x = x + 88;
                    p->vx = launchX;
                    p->y = launchY;
                    p->delay = 0;
                    break;
                }
                if (frame == LaunchFrames[i] + 6) {
                    for (j = 0; j != state->context->numTargets; j++) {
                        SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 6);
                        _SetBattleActorKnockback((s16)state->context->targets[j], 6);
                    }
                }
            }
        }
        p = (struct MercuryParticle *)gBuffer;
        for (i = 0; i != 256; i++, p++) {
            if (p->delay != -1) {
                int size = p->delay / 16 + 2;
                pair[1](render, particleGfx + Data_ede48[size - 1],
                        *(s16 *)((u8 *)&p->x + 2) - size / 2,
                        *(s16 *)((u8 *)&p->y + 2) - size, size, size * 2);
                Func_80e3908(p, 0x3e, 0x2000);
                p->delay--;
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
