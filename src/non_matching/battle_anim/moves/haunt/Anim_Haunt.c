#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct HauntParticle {
    s32 x;
    s32 y;
    s32 z;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 count;
};

struct HauntState {
               u8 graphics[0x6980];
               s32 wave[160];
               u8 pad_6c00[0x7780 - 0x6c00];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

struct HauntActor {
    s32 unk0;
    s32 unk4;
    s32 x;
    s32 unkc;
    s32 z;
};

struct HauntVec { s32 x, y, z; };

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80[];

extern u8 gBuffer[];

extern char _FILE_a9[], _FILE_bb[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Func_80dbb9c(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern struct HauntActor **_GetBattleActor(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void MatrixTranslatev(struct HauntVec *);

extern void MatrixPitch(int);

extern int Func_8000948(int);

extern void Func_80e3944(struct HauntParticle *, struct HauntVec *);

extern void SetBattleActorState(int, int, int, int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

static inline void *API_Func_8001af8(void *dst, const void *src, unsigned int size)
{
    void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
    return copy(dst, src, size);
}

void Anim_Haunt(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct HauntState *state = (struct HauntState *)*slots++;
    u8 *render = *slots;
    int frame, i, j, dist;
    DrawFunc pair[2];
    u8 *camera;
    s32 *wave;
    struct HauntParticle *p;
    struct HauntActor *actor;
    struct HauntVec screen;
    struct HauntVec pos;

    state->context = context;
    AnimStart(0);
    {
        u8 *file = GetFile((int)_FILE_a9);
        API_Func_8001af8((void *)0x05000000, file, 0x80);
        file += 0x80;
        DecompressLZ(file, state);
        file = GetFile((int)_FILE_bb);
        API_Func_8001af8((void *)0x05000000, file, 0x80);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 3, 3);
    pair[1] = (DrawFunc)baseSlots[8];
    StartTask(Func_80dbb9c, 0x480);
    state->blitMode = 3;
    state->blitParam = 0x4040404;
    {
        struct HauntParticle *q;
        StartTask(Task_BlitAnim, 0x480);
        q = (struct HauntParticle *)gBuffer;

        for (i = 0; i != 512; i++, q++) {
            q->x = ((Random() & 255) - 127) << 15;
            q->y = ((Random() & 255) - 127) << 15;
            q->z = ((Random() & 255) - 127) << 15;
        }
    }
    _PlaySound(0x8e);

    for (frame = 0; frame != state->context->numTargets * 32 + 96; frame++) {
        camera = *iwram_3001e80;
        if (frame == 96)
            _Func_80bd7dc(0);
        wave = state->wave;
        if (state->context->side == 0) {
            for (i = 0; i != 160; i++)
                *wave++ = (0x60000 - sin((frame << 11) + i * 0x800) * 6) >> 10;
        } else {
            for (i = 0; i != 160; i++)
                *wave++ = (sin((frame << 11) + i * 0x800) * 6) >> 10;
        }

        for (j = 0; j != state->context->numTargets; j++) {
            actor = *_GetBattleActor((s16)state->context->targets[j]);
            InitMatrixStack();
            MatrixSetLook(camera, camera + 0xc);
            pos.x = actor->x;
            pos.y = 0x140000;
            pos.z = actor->z;
            MatrixTranslatev(&pos);
            if (frame > j * 32) {
                MatrixPitch(frame << 9);
                if (frame == j * 32 + 32)
                    SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 0x20);
                p = (struct HauntParticle *)gBuffer + j * 64;
                for (i = 0; i != 8; i++, p++) {
                    if (frame > (j * 8 + i) * 4) {
                        int (*root)(int) = Func_8000948;
                        dist = root((p->x >> 8) * (p->x >> 8) + (p->y >> 8) * (p->y >> 8)
                                    + (p->z >> 8) * (p->z >> 8)) >> 8;
                        if (dist != 0) {
                            Func_80e3944(p, &screen);
                            screen.x >>= 1;
                            pair[0](render, state->graphics + (i % 3) * 0x240,
                                    screen.x - 12, screen.y - 12, 24, 24);
                            p->x -= p->x / dist;
                            p->y -= p->y / dist;
                            p->z -= p->z / dist;
                            p->count++;
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
    StopTask(Func_80dbb9c);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
