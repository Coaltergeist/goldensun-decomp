#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct BreakParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 delay;
};

struct BreakVec {
    s32 x, y, z;
};

struct BreakState {
               u8 pad_0000[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

static const s32 BreakParticleSpin[] = { 0x4000, 0x2000, 0x4000, 0x8000 };

extern u8 *iwram_3001eec[];

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern char _FILE_73[], _FILE_b9[];

extern const u16 Data_ede48[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern int *_GetBattleActor(int);

extern int _Func_80b8530(int);

extern void Func_80e3944(struct BreakVec *, struct BreakVec *);

extern void Func_80e3908(struct BreakParticle *, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Break(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct BreakState *state = (struct BreakState *)*slots++;
    u8 *render = *slots;
    DrawFunc draw;
    u8 *particleGfx = baseSlots[2];
    u8 *camera = baseSlots[-27];
    struct BreakParticle *p;
    struct BreakVec in, out;
    int frame, i, j;

    state->context = context;
    AnimStart(1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    {
        void *file = GetFile((int)_FILE_b9);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    draw = (DrawFunc)baseSlots[7];
    for (i = 0; i != 1024; i++)
        ewram_2010018[i * 7] = -1;
    InitMatrixStack();
    MatrixSetLook(camera, camera + 0xc);

    for (j = 0; j != state->context->numTargets; j++) {
        p = (struct BreakParticle *)(gBuffer + j * 0xe00);
        {
        int *actor = (int *)*_GetBattleActor((s16)state->context->targets[j]);
        in.y = _Func_80b8530((s16)state->context->targets[j]) / 2;
        in.x = actor[2];
        in.z = actor[4];
        Func_80e3944(&in, &out);
        out.x >>= 1;
        }
        for (i = 0; i != 128; i++, p++) {
            int radius = Random() & 0xff;
            int angle = Random() & 0xffff;
            p->x = ((sin(angle) * radius) >> 7) + (out.x << 16);
            p->y = ((cos(angle) * radius) >> 3) + (out.y << 16);
            p->unkc = (128 - (Random() & 0xff)) << 9;
            p->unk10 = (-(Random() & 0xff) - 128) << 10;
            p->delay = 0;
        }
    }

    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != state->context->numTargets * 20 + 56; frame++) {
        if (frame == 32)
            _Func_80bd7dc(0);
        for (j = 0; j != state->context->numTargets; j++) {
            if (frame == j * 20) {
                _PlaySound(0x8f);
                SetBattleActorState((s16)state->context->targets[j], 7, -1, j, 20);
            }
            if (frame > j * 20) {
                p = (struct BreakParticle *)(gBuffer + j * 0xe00);
                for (i = 0; i != 128; i++, p++) {
                    if (p->delay >= 0) {
                        int size = i % 3 + 1;
                        draw(render, particleGfx + Data_ede48[size - 1],
                             *(s16 *)((u8 *)&p->x + 2) - size / 2,
                             *(s16 *)((u8 *)&p->y + 2) - size, size, size * 2);
                        Func_80e3908(p, 0x3e, BreakParticleSpin[i & 3]);
                        p->delay++;
                        if (p->unk10 > 0 && *(s16 *)((u8 *)&p->y + 2) > 0x70)
                            p->delay = -1;
                    }
                }
            }
        }
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
