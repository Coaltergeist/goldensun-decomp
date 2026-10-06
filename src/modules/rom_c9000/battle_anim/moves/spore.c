/* battle_anim/moves/spore.c -- consolidated TU. */
#include "anim.h"
#include "math.h"
#include "task.h"

extern void BaseAnim_Spore(void *context, int subanim);

void Anim_SleepStar(void *context) {
    BaseAnim_Spore(context, 1);
}


void Anim_SoothingStar(void *context) {
    BaseAnim_Spore(context, 0);
}

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct SporeParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 timer;
};

struct SporeVec { s32 x, y, z; };

struct SporeActor {
    u8 pad[8];
    s32 x, y, z;
};

struct SporeState {
    /* 0000 */ u8 pad_0000[0x7780];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x7824 - 0x7788];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

extern u8 *iwram_3001eec[];
extern void *gPtrs[];
extern u8 gBuffer[];
extern const u16 Data_ede48[];
extern char _FILE_73[], _FILE_7b[], _FILE_7c[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void LoadVFXFile(int, void *, int, int);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void Task_BlitAnim(void);
extern struct SporeActor **_GetBattleActor(int);
extern unsigned int Random(void);
extern void InitMatrixStack(void);
extern void MatrixSetLook(void *, void *);
extern void Func_80e3944(struct SporeVec *, struct SporeVec *);
extern void Func_80e38b8(struct SporeParticle *, int, int);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void BaseAnim_Spore(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct SporeState *state = (struct SporeState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    u8 *camera = baseSlots[-27];
    u8 *particleGfx = baseSlots[2];
    struct SporeActor *actor;
    struct SporeParticle *p, *q;
    struct SporeVec pos, out;
    int frame, j;

    state->context = context;
    if (subanim == 0)
        AnimStart(0);
    else
        AnimStart(1);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)gPtrs[0x2e];
    BuildDraw2DFuncEx(0x2f, 7, 7, 11, 2);
    pair[1] = (DrawFunc)gPtrs[0x2f];
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    {
        void *file = GetFile(subanim == 0 ? (int)_FILE_7c : (int)_FILE_7b);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    actor = *_GetBattleActor(state->context->user);

    p = (struct SporeParticle *)gBuffer;
    for (j = 0; j != 256; j++, p++) {
        int speed = (Random() & 0x3ff) + 32;
        int angle = Random() & 0xffff;
        p->x = actor->x;
        p->y = actor->y + 0x50000;
        p->z = actor->z;
        p->vx = (sin(angle) * speed) >> 8;
        p->vy = ((int)(Random() & 0xff) - 32) << 9;
        p->vz = -(cos(angle) * speed * 2) >> 8;
        p->timer = (Random() & 31) + 48;
        if (subanim == 0) {
            p->vx /= 2;
            p->vz /= 2;
        }
    }

    for (frame = 0; frame != 128; frame++) {
        do {
            InitMatrixStack();
            MatrixSetLook(camera, camera + 0xc);
        } while (0);
        for (q = (struct SporeParticle *)gBuffer, j = 0; j != 128; j++, q++) {
            if (frame >= (j / 32) * 8 && q->timer >= 0) {
                int size;
                pos.x = q->x + (sin((j * 4 + q->timer) << 10) << 4);
                pos.y = q->y;
                pos.z = q->z;
                Func_80e3944(&pos, &out);
                out.x >>= 1;
                if (out.z < 0x13a)
                    out.z = 0x13a;
                if (out.z > 0x27a)
                    out.z = 0x27a;
                size = 6 - (out.z - 0x13a) / 64;
                pair[0](render, particleGfx + Data_ede48[size - 1],
                     out.x - size / 2, out.y - size, size, size * 2);
                Func_80e38b8(q, 0x3e, 0x400);
                if (subanim == 1) {
                    if (actor->x < 0)
                        q->vx += 0x2000;
                    else
                        q->vx -= 0x2000;
                }
                q->timer--;
            }
        }
        if (subanim == 1) {
            for (j = 0; j != state->context->numTargets; j++) {
                if (frame == j * 8 + 48) {
                    _Func_80bd7dc(-1);
                    SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 8);
                }
            }
        } else {
            for (j = 0; j != state->context->numTargets; j++) {
                if (frame == j * 8 + 48) {
                    _PlaySound(0x7e);
                    _Func_80bd7dc(-1);
                    SetBattleActorState((s16)state->context->targets[j], 7, -1, j, 8);
                }
            }
        }
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
