#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct HelmParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 vx;
    s32 vy;
    s32 unk14;
    s32 delay;
};

struct HelmActor {
             u8 pad_00[0x8];
             s32 x;
             s32 y;
             s32 z;
             u8 pad_14[0x28 - 0x14];
             s32 unk28;
             u8 pad_2c[0x30 - 0x2c];
             s32 speedX;
             s32 speedZ;
             u8 pad_38[0x44 - 0x38];
             s32 unk44;
             s32 unk48;
             u8 pad_4c[0x58 - 0x4c];
             u8 unk58;
             u8 pad_59;
             u8 unk5A;
};

struct HelmState {
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

extern u8 gBuffer[];

extern u8 ewram_2010018[];

extern char _FILE_73[], _FILE_61[], _FILE_6d[];

extern u8 HelmWidths[] __asm__(".Leedf4");

extern u8 HelmHeights[] __asm__(".Leedfb");

extern const u16 HelmOffsets[] __asm__(".Leee02");

extern signed char HelmX[] __asm__(".Leee10");

extern signed char HelmY[] __asm__(".Leee17");

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern void Task_BlitAnim(void);

extern struct HelmActor **_GetBattleActor(int);

extern int Func_8000948(int);

extern void _Actor_Stop(struct HelmActor *);

extern void _Actor_TravelTo(struct HelmActor *, int, int, int);

extern void _Actor_SetAnim(struct HelmActor *, int);

extern void GetBattleActorPos3(int, int *);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern unsigned int Random(void);

extern void Func_80e3908(struct HelmParticle *, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_HelmSplitter(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct HelmState *state = (struct HelmState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx;
    DrawFunc draw[2];
    int pos[3];
    struct HelmParticle *p, *q;
    struct HelmActor *user, *target;
    int frame, j, dx, dz, x, z, speed;

    state->context = context;
    particleGfx = baseSlots[2];
    AnimStart(0);
    (*(vu16 *)0x04000020) = 0x100;
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_61, state, 1, 1);
    LoadVFXFile((int)_FILE_6d, state->graphics + 0x3e80, 1, 0);
    BuildDraw2DFuncs(state->context->side, draw);
    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);

    for (j = 0; j != 0x400; j++)
        ((struct HelmParticle *)ewram_2010018)[j].x = 0;

    user = *_GetBattleActor(state->context->user);
    target = *_GetBattleActor((s16)state->context->targets[0]);
    dx = (target->x - user->x) * 80 / 100;
    dz = (target->z - user->z) * 80 / 100;
    x = user->x + dx;
    z = user->z + dz;
    dx >>= 8;
    dz >>= 8;
    speed = dx * dx + dz * dz;
    {
        int (*root)(int) = Func_8000948;
        speed = (root(speed) << 8) / 20;
    }
    user->speedZ = speed;
    user->speedX = speed;
    user->unk58 = 1;
    user->unk28 = 0x70000;
    user->unk48 = 0xdeb8;
    user->unk44 = 0;
    user->unk5A = 1;
    _Actor_Stop(user);
    _Actor_TravelTo(user, x, 0, z);
    _Actor_SetAnim(user, 2);

    for (frame = 0; frame != 70; frame++) {
        GetBattleActorPos3(state->context->user, pos);
        (*(vu32 *)0x04000028) = (80 - pos[0]) << 8;
        if ((unsigned int)(frame - 8) <= 15) {
            int image = (frame - 8) / 2;
            if (image > 6)
                image = 6;
            if (state->context->side == 0)
                draw[0](render, state->graphics + HelmOffsets[image], HelmX[image] + 30,
                        HelmY[image] + pos[1] - 60, HelmWidths[image], HelmHeights[image]);
            else
                draw[0](render, state->graphics + HelmOffsets[image], 108 - HelmX[image] - HelmWidths[image],
                        HelmY[image] + pos[1] - 60, HelmWidths[image], HelmHeights[image]);
        }
        if (frame == 18) {
            _Func_80bd7dc(0x86);
            SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 8);
            _SetBattleActorKnockback((s16)state->context->targets[0], 6);
            state->unk77A8 = 4;
            p = (struct HelmParticle *)gBuffer;
            for (j = 0; j != 16; j++, p++) {
                int radius = (Random() & 63) + 256;
                int angle = Random() & 0xffff;
                p->x = 0x400000;
                p->y = 0x500000;
                p->vx = (sin(angle) * radius) >> 7;
                p->vy = -(cos(angle) * radius) >> 6;
                p->delay = (Random() & 15) + 16;
            }
        }
        q = (struct HelmParticle *)gBuffer;
        for (j = 0; j != 128; j++, q++) {
            if (q->delay > 0) {
                q->delay--;
                Func_80e3908(q, 60, 0);
                if (q->y > 0x680000) {
                    q->vy = -q->vy / 2;
                } else if ((unsigned int)q->x <= 0x7effff && q->y >= 0) {
                    int sx = q->x >> 16;
                    int sy = q->y >> 16;
                    draw[0](render, state->graphics + 0x3e80 + ((frame + j) / 4 % 6) * 256,
                            sx - 8, sy - 8, 16, 16);
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
