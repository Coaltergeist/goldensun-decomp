#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct PlasmaParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 vx;
    s32 vy;
    s32 unk14;
    s32 delay;
};

static const u16 PlasmaBurst[][2] = {
    { 0x180, 2 },
    { 0x100, 3 },
    { 0xc0, 4 }
};

static const u8 PlasmaBoltX[2][7] = {
    { 0x20, 0x40, 0x10, 0x30, 0x48, 0x60, 0x40 },
    { 0x58, 0x38, 0x68, 0x48, 0x30, 0x18, 0x38 }
};

static const u8 PlasmaBoltCount[] = { 1, 3, 7, 0 };

struct PlasmaState {
               u8 graphics[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80[];

extern s32 ewram_2010018[];

extern u8 gBuffer[];

extern const u16 Data_ede48[];

extern char _FILE_d1[], _FILE_73[], _FILE_60[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void *Func_80008d8(void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void Func_80e3908(struct PlasmaParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Plasma(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct PlasmaState *state = (struct PlasmaState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx = baseSlots[2];
    DrawFunc pair[2];
    struct PlasmaParticle *p;
    s32 *q;
    int frame, i, j, t, count, spawned;

    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000052) = 0x1010;
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
    pair[1] = (DrawFunc)baseSlots[8];
    LoadVFXFile((int)_FILE_d1, state, 1, 1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    if (state->context->param != 2) {
        void *file = GetFile((int)_FILE_60);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    q = ewram_2010018;
    for (j = 0; j != 1024; j++) {
        *q = 0;
        q += 7;
    }
    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);
    count = PlasmaBoltCount[state->context->param];

    for (frame = 0; frame != count * 7 + 48; frame++) {
        if (state->context->param == 2 && frame <= 63) {
            u8 *camera = *iwram_3001e80;
            int d = 256;
            if (frame > 55)
                d = 0x2c0 - frame * 8;
            if (state->context->side == 1)
                *(u16 *)(camera + 0x36) -= d;
            else
                *(u16 *)(camera + 0x36) += d;
        }
        if (frame == 32)
            _Func_80bd7dc(0x86);
        for (i = 0; i != count; i++) {
            if (frame == i * 8) {
                void *(*clear)(void *, int, int) = Func_80008d8;
                _PlaySound(0x86);
                clear(render, 0x4000, 0x10101010);
            }
            if (frame >= i * 8 && frame < i * 8 + 9) {
                if (frame >= i * 8 + 1 && frame < i * 8 + 2)
                    pair[0](render, state->graphics,
                            PlasmaBoltX[state->context->side][i] - 24, 0, 48, 112);
                if (frame >= i * 8 + 2 && frame < i * 8 + 4)
                    pair[0](render, state->graphics + 0x1500,
                            PlasmaBoltX[state->context->side][i] - 24, 0, 48, 112);
                if (frame == i * 8 + 2) {
                    spawned = 0;
                    p = (struct PlasmaParticle *)gBuffer;
                    for (j = 0; j != 1024; j++, p++) {
                        if (p->delay == 0) {
                            int speed = Random() & 0x3ff;
                            int angle = (Random() & 0x7fff) - 0x4000;
                            p->x = PlasmaBoltX[state->context->side][i] << 16;
                            p->y = 0x680000;
                            speed += 32;
                            p->vx = (speed * sin(angle)) >> 7;
                            p->vy = -(speed * cos(angle) * 2) >> 7;
                            p->delay = (Random() & 7) + 32;
                            spawned++;
                            if (spawned == PlasmaBurst[state->context->param][0])
                                break;
                        }
                    }
                    state->unk77A8 = PlasmaBurst[state->context->param][1];
                }
            }
            if (frame == i * 8 + 4) {
                for (t = 0; t != state->context->numTargets; t++) {
                    _SetBattleActorKnockback((s16)state->context->targets[t], 1);
                    SetBattleActorState((s16)state->context->targets[t], 7, 5, t, 8);
                }
            }
        }

        p = (struct PlasmaParticle *)gBuffer;
        for (j = 0; j != 1024; j++, p++) {
            if (p->delay > 0) {
                p->delay--;
                Func_80e3908(p, 0x3c, 0x1000);
                if (p->y > 0x680000) {
                    p->vy = -p->vy / 2;
                } else {
                    int x = p->x >> 16;
                    if (p->x >= 0 && x <= 119 && p->y >= 0) {
                        int w = p->delay / 8 + 1;
                        pair[j & 1](render, particleGfx + Data_ede48[w - 1],
                                    x - w / 2, (p->y >> 16) - w, w, w * 2);
                    }
                }
            }
        }
        UpdateScreenShake(8, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
