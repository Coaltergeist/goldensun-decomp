#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct UndeadSwordParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 vx;
    s32 vy;
    s32 unk14;
    s32 timer;
};

struct UndeadSwordState {
               u8 pad_0000[0x460];
               u8 graphics[0x7080 - 0x460];
               struct UndeadSwordParticle particles[16];
               u8 pad_7240[0x7780 - 0x7240];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

static const u16 sSparkOffsets[] = { 0x0, 0x100, 0x500, 0xe00, 0x1700, 0x2000, 0x2900 };

static const u16 sSparkSizes[] = { 0x10, 0x20, 0x30, 0x30, 0x30, 0x30, 0x30 };

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001f08;

extern char _FILE_73[], _FILE_51[], _FILE_c0[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern void GetBattleActorPos3(int, s32 *);

extern unsigned int Random(void);

extern void _Func_80bd7dc(int);

extern void _SetBattleActorKnockback(int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void Func_80e3908(struct UndeadSwordParticle *, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_UndeadSword(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct UndeadSwordState *state = (struct UndeadSwordState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx;
    DrawFunc funcs[2];
    s32 pos[3];
    struct UndeadSwordParticle *p, *q;
    int frame, i, height, mode;

    state->context = context;
    particleGfx = baseSlots[2];
    AnimStart(0);
    (*(vu16 *)0x04000020) = 0x100;
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_51, state, 1, 1);
    LoadVFXFile((int)_FILE_c0, state->graphics, 1, 0);
    BuildDraw2DFuncs(state->context->side, funcs);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    GetBattleActorPos3((s16)state->context->targets[0], pos);
    (*(vu32 *)0x04000028) = (64 - pos[0]) << 8;

    for (i = 0, p = state->particles; i != 16; i++, p++) {
        int speed = (Random() & 0x1ff) + 128;
        int angle = Random() & 0xffff;
        p->x = 0x400000;
        p->y = 0x700000;
        p->vx = (sin(angle) * speed) >> 8;
        p->vy = (cos(angle) * speed) >> 9;
        p->timer = Random() & 7;
    }
    state->unk77A8 = 8;

    for (frame = 0; frame != 54; frame++) {
        if (frame == 10) {
            state->unk77A8 = 8;
            _Func_80bd7dc(0xd4);
            _SetBattleActorKnockback((s16)state->context->targets[0], 0);
            SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 8);
        }
        if (frame > 7) {
            if (frame <= 31)
                height = frame * 12 - 96;
            else
                height = 272 - frame * 6;
            if (height > 0) {
                if (height > 80) {
                    height = 80;
                    mode = 2;
                } else {
                    mode = 3;
                }
                for (i = 0; i != 2; i++) {
                    if (i == 0)
                        BuildDraw2DFuncEx(0x2e, 7, 7, 3, mode);
                    else
                        BuildDraw2DFuncEx(0x2e, 7, 7, 7, mode);
                    funcs[0] = (DrawFunc)iwram_3001f08;
                    funcs[0](render, (u8 *)state, i * 14 + 50, 112 - height, 14, height);
                    gfree(0x2e);
                }
            }
        }
        BuildDraw2DFuncs(state->context->side, funcs);
        for (i = 0, q = state->particles; i != 16; i++, q++) {
            if (frame >= i / 2 + 8 && q->timer <= 28) {
                int idx = q->timer / 3;
                int x = *(s16 *)((u8 *)&q->x + 2);
                int y = *(s16 *)((u8 *)&q->y + 2);
                const u8 *src;
                unsigned int size;
                if (idx > 6)
                    idx = 6;
                src = state->graphics + sSparkOffsets[idx];
                size = sSparkSizes[idx];
                funcs[0](render, src, x - size / 2, y - size / 2, size, size);
                q->timer++;
                Func_80e3908(q, 0x3e, -0x2000);
            }
        }
        gfree(0x2f);
        gfree(0x2e);
        if (frame <= 7)
            UpdateScreenShake(2, 2);
        else
            UpdateScreenShake(16, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    AnimEnd();
}
