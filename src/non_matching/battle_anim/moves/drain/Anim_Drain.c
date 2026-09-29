#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct DrainParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 life;
};

struct DrainObject {
    u8 pad[8];
    s32 x, y, z;
};

struct DrainState {
               u8 pad_0000[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern s32 ewram_2010018[];

extern u8 gBuffer[];

extern void *gPtrs[];

extern const u16 Data_ede48[];

extern char _FILE_73[], _FILE_b9[], _FILE_c0[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern struct DrainObject **_GetBattleActor(int);

extern int _Func_80b8530(int);

extern unsigned int Random(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(s32 *, s32 *);

extern void SetBattleActorState(int, int, int, int, int);

extern void Func_80e3944(struct DrainParticle *, s32 *);

extern void Func_80e38b8(struct DrainParticle *, int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Drain(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct DrainState *state = (struct DrainState *)*slots++;
    u8 *render = *slots;
    DrawFunc draw;
    u8 *particleGfx = baseSlots[2];
    s32 *camera = (s32 *)baseSlots[-27];
    struct DrainParticle *p;
    s32 *life;
    int center;
    int frame, j, k;
    int alt;
    s32 screen[3];

    if (context->param)
        alt = 1;
    else
        alt = 0;
    state->context = context;
    AnimStart(1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    {
        void *palette = GetFile(!alt ? (int)_FILE_b9 : (int)_FILE_c0);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, palette, 0x80);
    }
    life = ewram_2010018;
    for (k = 0; k != 0x400; k++) {
        *life = -1;
        life += 7;
    }
    for (j = 0; j != state->context->numTargets; j++) {
        struct DrainObject *target = *_GetBattleActor((s16)state->context->targets[j]);
        center = _Func_80b8530((s16)state->context->targets[j]) / 2;
        for (k = 0, p = (struct DrainParticle *)gBuffer + j * 128; k != 128; k++, p++) {
            p->x = target->x;
            p->y = target->y + center;
            p->z = target->z;
            p->vx = ((Random() & 0xff) - 0x80) << 10;
            p->vy = ((Random() & 0xff) - 0x80) << 10;
            p->vz = ((Random() & 0xff) - 0x80) << 10;
            p->life = 0;
        }
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    draw = (DrawFunc)gPtrs[0x2e];
    state->blitMode = 3;
    state->blitParam = 0x04040404;
    StartTask(Task_BlitAnim, 0x480);
    _PlaySound(0x8e);
    for (frame = 0; frame != state->context->numTargets * 20 + 72; frame++) {
        struct DrainObject *obj = *_GetBattleActor(state->context->user);
        int height = _Func_80b8530(state->context->user) / 2;
        if (frame == 64)
            _Func_80bd7dc(0x85);
        InitMatrixStack();
        MatrixSetLook(camera, camera + 3);
        if (frame == 40)
            SetBattleActorState(state->context->user, 7, -1, -1, 0);
        if (frame == state->context->numTargets * 20 + 52)
            SetBattleActorState(state->context->user, 0, -1, -1, 0);
        for (j = 0; j != state->context->numTargets; j++) {
            if (frame == j * 20)
                SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 0x2a);
            if (frame > j * 20) {
                p = (struct DrainParticle *)gBuffer + j * 128;
                for (k = 0; k != 32; k++, p++) {
                    if (p->life >= 0) {
                        int dx, dy, dz;
                        Func_80e3944(p, screen);
                        screen[0] >>= 1;
                        draw(render, particleGfx + Data_ede48[5],
                             screen[0] - 3, screen[1] - 6, 6, 12);
                        Func_80e38b8(p, 0x3e, 0);
                        if (frame > j * 20 + k + 10) {
                            dx = (obj->x - p->x) >> 8;
                            dy = (obj->y + height - p->y) >> 8;
                            dz = (obj->z - p->z) >> 8;
                            p->vx += dx;
                            p->vy += dy;
                            p->vz += dz;
                            if ((unsigned int)(dx + 0xfff) <= 0x1ffe
                                && (unsigned int)(dz + 0xfff) <= 0x1ffe)
                                p->life = -1;
                        }
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
