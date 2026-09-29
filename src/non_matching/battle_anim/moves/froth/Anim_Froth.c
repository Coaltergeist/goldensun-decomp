#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct FrothParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 age;
};

struct FrothTarget {
    s32 x, y, z;
    s32 pad[4];
};

static const u8 Data_ee1c4[] = {
    6, 140,
    12, 160,
    30, 200
};

struct FrothState {
               u8 graphics[0x7080];
               struct FrothParticle particles[32];
               struct FrothTarget targets[5];
               u8 pad_748c[0x7780 - 0x748c];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               s32 unk77AC;
               s32 unk77B0;
               u8 pad_77b4[0x7824 - 0x77b4];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern s32 *iwram_3001e80;

extern s8 gBuffer[];

extern char _FILE_cd[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void Task_SpinCamera(void);

extern s32 **_GetBattleActor(int);

extern int _Func_80b8530(int);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(s32 *, s32 *);

extern void Func_80e3944(struct FrothParticle *, s32 *);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Froth(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct FrothState *state = (struct FrothState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    int frame, i;
    s32 *actor;
    s32 *camera;
    s32 startY;
    s32 screen[3];
    struct FrothParticle *p;
    struct FrothTarget *t;

    state->context = context;
    AnimStart(1);
    {
        void *file = GetFile((int)_FILE_cd);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
        DecompressLZ((u8 *)file + 0x80, state);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 15, 2);
    (*(vu16 *)0x04000052) = 0xf0f;
    pair[1] = (DrawFunc)baseSlots[8];

    actor = *_GetBattleActor(state->context->user);
    startY = actor[3] + _Func_80b8530(state->context->user);
    for (i = 0; i != 30; i++) {
        p = &state->particles[i];
        p->x = actor[2];
        p->y = startY;
        p->z = actor[4];
        p->vx = ((s32)((Random() & 0xff) - 0x7f) << 16) >> 5;
        p->vy = ((s32)((Random() & 0x7f) - 0x10) << 16) >> 6;
        p->vz = ((s32)((Random() & 0xff) - 0x7f) << 16) >> 5;
        p->age = -1;
        gBuffer[i] = 0;
    }

    for (i = 0; i != state->context->numTargets; i++) {
        s32 *target = *_GetBattleActor((s16)state->context->targets[i]);
        t = &state->targets[i];
        t->x = target[2];
        t->y = 0;
        t->z = target[4];
    }

    state->unk77AC = 0;
    state->unk77B0 = 0;
    StartTask(Task_SpinCamera, 0x480);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    _PlaySound(0xa4);

    for (frame = 0; frame != Data_ee1c4[state->context->param * 2 + 1]; frame++) {
        camera = iwram_3001e80;
        if (frame >= 17 && frame <= 63)
            state->unk77AC = 0x180;
        else
            state->unk77AC = 0;
        if (frame == Data_ee1c4[state->context->param * 2 + 1] - 16)
            _Func_80bd7dc(0x84);
        InitMatrixStack();
        MatrixSetLook(camera, camera + 3);

        for (i = 0; i != Data_ee1c4[state->context->param * 2]; i++) {
            p = &state->particles[i];
            if (frame > i * 2 && gBuffer[i] == 0) {
                Func_80e3944(p, screen);
                screen[0] >>= 1;
                if (screen[2] < 0xa0)
                    screen[2] = 0xa0;
                if (screen[2] > 0x31f)
                    screen[2] = 0x31f;
                pair[0](render, state->graphics + 0xc00, screen[0] - 6, screen[1] - 12, 12, 24);
                p->x += p->vx;
                p->y += p->vy;
                p->z += p->vz;
            }
            if (frame > i * 2 + 48 && gBuffer[i] == 0) {
                t = &state->targets[i % (int)state->context->numTargets];
                p->vx += (t->x - p->x) >> 9;
                p->vy += (t->y - p->y) >> 9;
                p->vz += (t->z - p->z) >> 9;
                if (frame < i * 2 + 85) {
                    p->vx = p->vx * 60 / 64;
                    p->vy = p->vy * 60 / 64;
                    p->vz = p->vz * 60 / 64;
                }
                if (p->y < 0) {
                    gBuffer[i] = 1;
                    p->age = 0;
                    p->x = screen[0];
                    p->y = screen[1] + (Random() & 31) - 16;
                    SetBattleActorState((s16)state->context->targets[i % (int)state->context->numTargets],
                                        7, 5, i % (int)state->context->numTargets, 4);
                    _SetBattleActorKnockback((s16)state->context->targets[i % (int)state->context->numTargets], 0);
                    state->unk77A8 = 4;
                    _PlaySound(0x84);
                }
            }
            if (p->age >= 0 && p->age < 16) {
                pair[0](render, state->graphics + (p->age / 2 % 3) * 0x400,
                     p->x - 16, p->y - 56, 16, 64);
                pair[1](render, state->graphics + (p->age / 2 % 3) * 0x400,
                      p->x, p->y - 56, 64, 16);
                p->age++;
            }
        }

        UpdateScreenShake(state->context->param * 2 + 2, state->context->param * 2 + 2);
        if (state->unk77B0 == 0)
            state->unk77B0 = 1;
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_SpinCamera);
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
