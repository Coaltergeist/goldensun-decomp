#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct TackleParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 life;
};

struct TackleVec { s32 x, y, z; };

struct TackleActor {
    u8 pad[8];
    s32 x, y, z;
};

struct TackleState {
               u8 graphics[0x7080];
               struct TackleParticle particles[64];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern void *gPtrs[];

extern u8 gBuffer[];

extern char _FILE_73[], _FILE_99[], _FILE_bd[], _FILE_c2[], _FILE_b9[], _FILE_bb[], _FILE_c0[];

extern const u16 Data_ede48[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern void Func_80df9d0(void *, void *, int, int);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void Task_BlitAnim(void);

extern void Func_80df90c(int, int, int);

extern struct TackleActor **_GetBattleActor(int);

extern unsigned int Random(void);

extern void GetBattleActorPos3(int, struct TackleVec *);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void _Func_80bd7dc(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void Func_80e3944(struct TackleParticle *, struct TackleVec *);

extern void Func_80e38b8(struct TackleParticle *, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void BaseAnim_Tackle(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct TackleState *state = (struct TackleState *)*slots++;
    u8 *render = *slots;
    DrawFunc mirror, draw;
    u8 *camera = baseSlots[-27];
    u8 *particleGfx = baseSlots[2];
    struct TackleParticle *p;
    struct TackleActor *actor;
    struct TackleVec targetPos, pos, screen;
    char *file;
    int i, frame, k, size;

    state->context = context;
    AnimStart(0);
    if (state->context->side == 0) {
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
        BuildDraw2DFuncEx(0x2f, 7, 7, 11, 2);
    } else {
        BuildDraw2DFuncEx(0x2e, 7, 7, 7, 2);
        BuildDraw2DFuncEx(0x2f, 7, 7, 15, 2);
    }
    draw = (DrawFunc)gPtrs[0x2e];
    mirror = (DrawFunc)gPtrs[0x2f];
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_99, state, 1, 0);
    Func_80df9d0(state, gBuffer, 0x28, 0x120);
    LoadVFXFile((int)_FILE_bd, state, 1, 1);
    switch (subanim) {
    case 0: file = _FILE_c2; break;
    case 1: file = _FILE_b9; break;
    case 2: file = _FILE_bb; break;
    default: file = _FILE_c0; break;
    }
    {
        void *palette = GetFile((int)file);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, palette, 0x80);
    }
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    Func_80df90c(state->context->user, (s16)state->context->targets[0], 10);
    actor = *_GetBattleActor((s16)state->context->targets[0]);
    for (i = 0; i != 64; i++) {
        p = &state->particles[i];
        p->x = actor->x;
        p->y = actor->y + 0xa0000;
        p->z = actor->z;
        p->vx = (Random() & 0x1ff) << 11;
        p->vy = ((Random() & 0xff) - 64) << 11;
        p->vz = ((Random() & 0xff) - 128) << 11;
        if (p->x > 0)
            p->vx = -p->vx;
        p->life = i / 2 + 16;
    }
    GetBattleActorPos3((s16)state->context->targets[0], &targetPos);
    for (frame = 0; frame != 60; frame++) {
        if (frame <= 14) {
            GetBattleActorPos3(state->context->user, &pos);
            draw(render, state->graphics, pos.x / 2 - 16, pos.y - 48, 40, 32);
            mirror(render, state->graphics, pos.x / 2 - 16, pos.y - 16, 40, 32);
        }
        if (frame == 10) {
            SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 8);
            _SetBattleActorKnockback((s16)state->context->targets[0], 4);
            _Func_80bd7dc(0x86);
            state->unk77A8 = 8;
        }
        k = frame - 8;
        if ((unsigned int)k <= 11)
            draw(render, gBuffer + 0x3c0 * (k / 2), targetPos.x / 2 - 16, pos.y - 40, 20, 48);
        if ((unsigned int)k <= 55) {
            InitMatrixStack();
            MatrixSetLook(camera, camera + 0xc);
            for (i = 0, p = state->particles; i != 64; i++, p++) {
                size = p->life;
                if (size > 0) {
                    Func_80e3944(p, &screen);
                    size >>= 4;
                    size += 2;
                    screen.x >>= 1;
                    draw(render, particleGfx + Data_ede48[size - 1], screen.x - size / 2,
                         screen.y - size, size, size * 2);
                    Func_80e38b8(p, 60, -0x200);
                    p->life--;
                }
            }
        }
        UpdateScreenShake(8, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
