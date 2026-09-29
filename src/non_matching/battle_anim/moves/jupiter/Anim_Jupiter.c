#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct JupiterParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 delay;
};

struct JupiterState {
               u8 graphics[0x7080];
               struct JupiterParticle bolts[32];
               u8 pad_7400[0x7780 - 0x7400];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern char _FILE_73[], _FILE_89[], _FILE_90[];

extern const u16 Data_ede48[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern void LoadVFXFile(int, void *, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void Func_80e3908(struct JupiterParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Jupiter(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct JupiterState *state = (struct JupiterState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx;
    DrawFunc funcs[2];
    DrawFunc *pFuncs;
    int frame, j, k, angle;
    struct JupiterParticle *p, *q;

    particleGfx = baseSlots[2];
    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000052) = 0x1010;
    pFuncs = funcs;
    BuildDraw2DFuncs(0, pFuncs);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_90, state, 1, 1);
    LoadVFXFile((int)_FILE_89, state->graphics + 800, 1, 0);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    for (j = 0; j != 32; j++) {
        p = &state->bolts[j];
        p->x = (Random() & 63) + 64;
        p->y = (Random() & 63) - 80;
    }
    for (j = 0; j != 512; j++)
        ewram_2010018[j * 7] = -1;

    _PlaySound(0xab);
    for (frame = 0, angle = 0x8000; frame != 96; frame++) {
        if (frame == 56)
            _Func_80bd7dc(0x85);
        if (frame <= 95) {
            int s = sin(angle);
            int r = 64 - frame * 2;
            int x = (s * r) >> 17;
            int y = (cos(angle) * r) >> 16;
            funcs[0](render, state->graphics, x + 86, y + 28, 20, 40);
        }
        for (j = 0; j != 8; j++) {
            p = &state->bolts[j];
            if (frame >= j * 4 + 8 && p->y <= 95) {
                funcs[0](render, state->graphics + 800, p->x - 20, p->y - 32, 40, 64);
                p->x -= 6;
                p->y += 12;
                if (p->y > 95) {
                    q = (struct JupiterParticle *)(j * 0x380 + gBuffer);
                    for (k = 0; k != 32; k++, q++) {
                        int a = Random() & 0xffff;
                        int m = (Random() & 0x1ff) + 256;
                        q->x = p->x << 16;
                        q->y = p->y << 16;
                        q->unkc = (sin(a) * m) >> 7;
                        q->unk10 = (cos(a) * m) >> 6;
                        q->delay = (Random() & 15) + 32;
                    }
                    _PlaySound(0x85);
                    state->unk77A8 = 4;
                    for (k = 0; k != state->context->numTargets; k++) {
                        SetBattleActorState((s16)state->context->targets[k], 7, 5, k, 6);
                        _SetBattleActorKnockback((s16)state->context->targets[k], 6);
                    }
                }
            }
        }
        p = (struct JupiterParticle *)gBuffer;
        for (j = 0; j != 512; j++, p++) {
            if (p->delay != -1) {
                int w = p->delay / 16 + 1;
                pFuncs[1](render, particleGfx + Data_ede48[w - 1],
                          *(s16 *)((u8 *)&p->x + 2) - w / 2,
                          *(s16 *)((u8 *)&p->y + 2) - w, w, w * 2);
                Func_80e3908(p, 0x3e, 0x2000);
                p->delay--;
            }
        }
        UpdateScreenShake(4, 4);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
        angle -= 0x800;
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
