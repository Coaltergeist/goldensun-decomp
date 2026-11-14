#include "nonmatching.h"
#include "anim.h"
#include "task.h"
#include "math.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct FireballParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 age;
};

struct FireballState {
    u8 graphics[0x7780];
    s32 blitMode;
    s32 blitParam;
    u8 pad_7788[0x77A8 - 0x7788];
    s32 unk77A8;
    s32 spinSpeed;
    s32 spinStarted;
    u8 pad_77B4[0x7824 - 0x77B4];
    s32 frameReady;
    struct AnimContext *context;
};

extern u8 *iwram_3001eec[];
extern void *gPtrs[];
extern u8 gBuffer[];

static const u8 FireballCounts[3] = { 16, 32, 64 };
static const u8 FireballBurstWidths[6] = { 24, 29, 30, 27, 24, 16 };
static const u8 FireballBurstHeights[6] = { 23, 32, 37, 49, 53, 52 };
static const u8 FireballBurstYOffsets[6] = { 41, 32, 26, 11, 4, 2 };
extern const u16 FireballBurstOffsets[6] __asm__(".Leea56");
extern const u16 Data_ede48[];
extern char _FILE_b4[], _FILE_73[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void LoadVFXFile(int, void *, int, int);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern unsigned int Random(void);
extern void Task_BlitAnim(void);
extern void Task_SpinCamera(void);
extern s32 **_GetBattleActor(int);
extern int _Func_80b8530(int);
extern void _Func_80bd7dc(int);
extern void _Func_80c0cec(int, int, int, int);
extern void InitMatrixStack(void);
extern void MatrixSetLook(s32 *, s32 *);
extern void Func_80e3944(struct FireballParticle *, s32 *);
extern void _PlaySound(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Fireball(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct FireballState *state = (struct FireballState *)*slots++;
    u8 *render = *slots;
    int frame;
    s32 *camera = (s32 *)baseSlots[-27];
    u8 *particleGfx = baseSlots[2];
    struct FireballParticle *particles = (struct FireballParticle *)gBuffer;
    DrawFunc funcs[2];
    s32 *actor, *target;
    s32 height;
    int i, half, size, k, n;
    int angle, speed;
    s32 screen[3];

    state->context = context;
    if (context->side == 1)
        AnimStart(1);
    else
        AnimStart(0);
    LoadVFXFile((int)_FILE_b4, state, 1, 1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 3);
    funcs[0] = (DrawFunc)gPtrs[0x2e];
    BuildDraw2DFuncEx(0x2f, 7, 7, 3, 2);
    funcs[1] = (DrawFunc)gPtrs[0x2f];
    (*(vu16 *)(0x4000000 + 0x52)) = 0x1010;

    actor = *_GetBattleActor(state->context->user);
    height = actor[3] + _Func_80b8530(state->context->user);
    for (i = 0; i != 64; i++) {
        angle = Random();
        speed = (Random() & 0x7f) + 0x7f;
        particles[i].vx = (sin(angle) * speed) >> 6;
        particles[i].vy = ((int)((Random() & 0x7f) - 16) << 16) >> 6;
        particles[i].vz = (cos(angle) * speed) >> 6;
        particles[i].x = actor[2];
        particles[i].y = height;
        particles[i].z = actor[4];
        particles[i].age = -1;
    }

    state->spinSpeed = 0;
    state->spinStarted = 0;
    StartTask(Task_SpinCamera, 0x480);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != (FireballCounts[state->context->param] >> 1) + 0x84; frame++) {
        if (frame > 16 && frame < 80)
            state->spinSpeed = 0x100;
        else
            state->spinSpeed = 0;
        if (frame == (FireballCounts[state->context->param] >> 1) + 0x6c)
            _Func_80bd7dc(0x85);
        _Func_80c0cec(0, 0, 0, 0x64);
        InitMatrixStack();
        MatrixSetLook(camera, camera + 3);

        for (i = 0; i != FireballCounts[state->context->param]; i++) {
            half = i / 2;
            if (frame > half && particles[i].age == -1) {
                Func_80e3944(&particles[i], screen);
                screen[0] >>= 1;
                if (screen[2] < 0xa0)
                    screen[2] = 0xa0;
                if (screen[2] > 0x31f)
                    screen[2] = 0x31f;
                size = 10 - (screen[2] - 0xa0) / 64;
                funcs[frame < half + 0x30](render, particleGfx + Data_ede48[size - 1],
                        screen[0] - size / 2, screen[1] - size, size, size * 2);
                particles[i].x += particles[i].vx;
                particles[i].y += particles[i].vy;
                particles[i].z += particles[i].vz;
            }
            if (frame > half + 0x30 && particles[i].age == -1) {
                target = *_GetBattleActor((s16)state->context->targets[i % (int)state->context->numTargets]);
                particles[i].vx += (target[2] - particles[i].x) >> 9;
                particles[i].vy += (target[3] - particles[i].y) >> 9;
                particles[i].vz += (target[4] - particles[i].z) >> 9;
                if (frame < half + 0x55) {
                    particles[i].vx = particles[i].vx * 60 / 64;
                    particles[i].vy = particles[i].vy * 60 / 64;
                    particles[i].vz = particles[i].vz * 60 / 64;
                }
                if (particles[i].y < 0) {
                    particles[i].age = 0;
                    particles[i].x = screen[0];
                    particles[i].y = screen[1];
                    _PlaySound(0x88);
                    k = i % (int)state->context->numTargets;
                    SetBattleActorState((s16)state->context->targets[k], 10, 5, k, 4);
                    state->unk77A8 = 2;
                }
            }
        }

        for (i = 0; i != FireballCounts[state->context->param]; i++) {
            if (particles[i].age >= 0 && particles[i].age < 12) {
                n = particles[i].age / 2;
                funcs[1](render, state->graphics + FireballBurstOffsets[n],
                        particles[i].x - FireballBurstWidths[n] / 2u,
                        particles[i].y + FireballBurstYOffsets[n] - 0x38,
                        FireballBurstWidths[n], FireballBurstHeights[n]);
                particles[i].age++;
            }
        }
        if (state->spinStarted == 0)
            state->spinStarted = 1;
        UpdateScreenShake(8, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    StopTask(Task_SpinCamera);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}

INCLUDE_ASM("asm/battle_anim/moves/fireball/rodata.s");
