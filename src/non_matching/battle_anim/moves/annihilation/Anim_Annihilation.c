#include "anim.h"

#include "dma.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct AnnihilationParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 life;
};

struct AnnihilationPosition {
    s32 x, y, z;
};

struct AnnihilationState {
               u8 graphics[0x7080];
               struct AnnihilationParticle particles[64];
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

extern const u16 Data_ede48[];

extern char _FILE_96[], _FILE_63[], _FILE_73[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void _Func_80b82c4(int, int, int, int);

extern s32 **_GetBattleActor(int);

extern unsigned int Random(void);

extern void GetBattleActorPos2(int, struct AnnihilationPosition *);

extern void Task_BlitAnim(void);

extern void _Func_80bd7dc(int);

extern void _PlaySound(int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern void Unk_080D655C(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void Func_80e3944(struct AnnihilationParticle *, struct AnnihilationPosition *);

extern void Func_80e38b8(struct AnnihilationParticle *, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Annihilation(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct AnnihilationState *state = (struct AnnihilationState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx = baseSlots[2];
    u8 *camera = baseSlots[-27];
    u8 *buffer = gBuffer;
    DrawFunc pair[2];
    struct AnnihilationPosition user, target;
    struct AnnihilationParticle *p;
    struct AnnihilationPosition screen;
    s32 *actor;
    int frame, i, image, size, life, offset;

    state->context = context;
    AnimStart(0);
    LoadVFXFile((int)_FILE_96, state, 1, 1);
    LoadVFXFile((int)_FILE_63, buffer, 1, 1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    _Func_80b82c4(state->context->user, (s16)state->context->targets[0], 4, 0);
    WaitFrames(1);
    actor = *_GetBattleActor((s16)state->context->targets[0]);
    for (i = 0; i != 64; i++) {
        p = &state->particles[i];
        p->x = actor[2];
        p->y = actor[3];
        p->z = actor[4];
        p->vx = (Random() & 255) << 11;
        p->vy = ((Random() & 255) - 127) << 12;
        p->vz = ((Random() & 255) - 127) << 12;
        if (p->x > 0)
            p->vx = -p->vx;
        p->life = (i / 4) * 2 + 16;
    }
    GetBattleActorPos2((s16)state->context->targets[0], &target);
    StartTask(Task_BlitAnim, 0x480);
    state->blitMode = 2;
    state->blitParam = 75;

    for (frame = 0; frame != 64; frame++) {
        if (frame == 8)
            _Func_80bd7dc(0x86);
        if (state->context->param != 0 && frame == 8)
            _PlaySound(0xd4);
        GetBattleActorPos2(state->context->user, &user);
        if ((unsigned int)(frame - 6) <= 5) {
            if (state->context->side == 0)
                BuildDraw2DFuncEx(0x2e, 7, 7, 3, 3);
            else
                BuildDraw2DFuncEx(0x2e, 7, 7, 7, 3);
            pair[0] = (DrawFunc)gPtrs[0x2e];
            if (state->context->side == 0)
                pair[0](render, state->graphics + (frame - 6) * 0xd80,
                        user.x / 2 - 24, user.y - 24, 48, 72);
            else
                pair[0](render, state->graphics + (frame - 6) * 0xd80,
                        user.x / 2, user.y - 24, 48, 72);
            gfree(0x2e);
        }
        if ((unsigned int)(frame - 16) <= 31) {
            image = (frame - 16) / 2;
            BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
            pair[0] = (DrawFunc)gPtrs[0x2e];
            if (image > 2)
                image = 2;
            offset = state->context->param != 0 ? 0x2580 : 0;
            pair[0](render, gBuffer + (offset + image * 0xc80),
                    target.x / 2 - 20, target.y - 48, 40, 80);
            Unk_080D655C(10000);
            gfree(0x2e);
        }
        if (frame == 8)
            DMA3_FILL(render, 0x3f3f3f3f, 0x4000);
        InitMatrixStack();
        MatrixSetLook(camera, camera + 0xc);
        if (frame > 3) {
            BuildDraw2DFuncs(state->context->side, pair);
            for (i = 0; i != 64; i++) {
                p = &state->particles[i];
                life = p->life;
                if (life > 0) {
                    Func_80e3944(p, &screen);
                    screen.x >>= 1;
                    screen.y = screen.y + target.y - 112;
                    size = (life >> 3) + 2;
                    pair[(i / 2) & 1](render, particleGfx + Data_ede48[size - 1],
                                      screen.x - size / 2, screen.y - size, size, size * 2);
                    Func_80e38b8(p, 0x3c, -0x400);
                    p->life--;
                }
            }
            gfree(0x2f);
            gfree(0x2e);
        }
        if (frame == 8) {
            _SetBattleActorKnockback((s16)state->context->targets[0], 4);
            state->unk77A8 = 4;
        }
        if (frame == 6)
            SetBattleActorState((s16)state->context->targets[0], 10, -1, -1, 0);
        if (frame == 14)
            SetBattleActorState((s16)state->context->targets[0], 10, -1, -1, 0);
        UpdateScreenShake(16, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    AnimEnd();
}
