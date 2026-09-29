#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct SleepParticle {
    s32 x;
    s32 y;
    s32 spin;
    s32 unkc;
    s32 vy;
    s32 unk14;
    s32 phase;
};

struct SleepState {
               u8 graphics[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

struct SleepVec { s32 x, y, z; };

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80[];

extern u8 gBuffer[];

extern char _FILE_a8[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern s32 **_GetBattleActor(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(u8 *, u8 *);

extern void MatrixTranslatev(struct SleepVec *);

extern void SetBattleActorState(int, int, int, int, int);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Sleep(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct SleepState *state = (struct SleepState *)*slots++;
    u8 *render = *slots;
    int frame;
    DrawFunc mirror, draw;
    int i, j;
    struct SleepParticle *p, *q;
    struct SleepVec v;

    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000050) = 0;
    LoadVFXFile((int)_FILE_a8, state, 1, 1);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    draw = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 15, 1);
    mirror = (DrawFunc)baseSlots[8];

    p = (struct SleepParticle *)gBuffer;
    for (i = 0; i != 32; i++, p++) {
        p->x = ((Random() & 63) + 32) << 16;
        p->y = 0xffe00000;
        Random();
        p->vy = 0;
        p->spin = Random() & 3;
        p->phase = Random() & 255;
    }
    if (state->context->side == 1)
        (*(vu32 *)0x04000028) = 0xffff9000;
    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);
    _PlaySound(0x8e);

    for (frame = 0; frame != 148; frame++) {
        u8 *camera = *iwram_3001e80;
        if (frame == 80)
            _Func_80bd7dc(0);
        for (j = 0; j != state->context->numTargets; j++) {
            s32 *actor = *_GetBattleActor((s16)state->context->targets[j]);
            InitMatrixStack();
            MatrixSetLook(camera, camera + 0xc);
            v.x = actor[2];
            v.y = 0x280000;
            v.z = actor[4];
            MatrixTranslatev(&v);
            if (frame == j * 16 + 64)
                SetBattleActorState((s16)state->context->targets[j], 0, 5, -1, 0);
        }
        q = (struct SleepParticle *)gBuffer;
        for (i = 0; i != 12; i++, q++) {
            if (frame > i * 4 && q->y <= 0x7fffff) {
                int image = (q->phase / 16) & 7;
                if (image <= 3)
                    draw(render, state->graphics + image * 1024,
                         *(s16 *)((u8 *)&q->x + 2) - 16, (q->y >> 16) - 16, 32, 32);
                else
                    mirror(render, state->graphics + image * 1024 - 0x1000,
                           *(s16 *)((u8 *)&q->x + 2) - 16, (q->y >> 16) - 16, 32, 32);
                q->y += q->vy;
                q->vy += 0x2000;
                q->phase += q->spin;
                if (q->y > 0x5c0000 && q->vy == 0) {
                    q->spin += 4;
                    q->vy = -(q->vy + 1) / 2;
                    q->y = 0x5c0000;
                }
            }
        }
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
