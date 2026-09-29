#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct BindParticle {
    s32 unk0[3];
    s32 x;
    s32 y;
    s32 unk14[2];
};

struct BindState {
               u8 graphics[0x1000];
               u8 ropeGraphics[0x1000];
               u8 djinniGraphics[0x7080 - 0x2000];
               struct BindParticle particles[64];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

static const s32 sRopeOffset[3] = { 0, 0x18, 0 };

extern u8 *iwram_3001eec[];

extern s32 *iwram_3001e80[];

extern u8 *gPtrs[];

extern u8 *iwram_3001f0c;

extern char _FILE_79[], _FILE_73[], _FILE_76[], _FILE_8f[];

extern const u16 Data_ede5c[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void Anim_Djinni(struct AnimContext *, int, int, int, int *, int *);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern void Task_BlitAnim(void);

extern void GetBattleActorPos2(int, s32 *);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void ColorCycleVFXPalette(int, int, int, int);

extern void BuildDraw2DFuncs(int, DrawFunc *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern s32 **_GetBattleActor(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(s32 *, s32 *);

extern void MatrixScalev(s32 *);

extern void MatrixRoll(int);

extern void MatrixYaw(int);

extern void Func_80e3944(const s32 *, s32 *);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Bind(struct AnimContext *context)
{
    u8 **slots = iwram_3001eec;
    struct BindState *state = (struct BindState *)*slots++;
    u8 *render = *slots++;
    s32 *camera = *iwram_3001e80;
    u8 *palette = *slots;
    DrawFunc pair[2];
    int djX, djY;
    s32 pos[3];
    s32 vec[3], screen[3], scale[3];
    int xoff, frame, t, f, i, k, x, y, angle, size;
    s32 *actor;
    struct BindParticle *p, *a, *b;

    state->context = context;
    AnimStart(1);
    if (state->context->djinni == 1)
        Anim_Djinni(context, 3, state->context->side, 0, &djX, &djY);
    (*(vu16 *)0x04000020) = 0x100;
    {
        void *file = GetFile((int)_FILE_79);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
        DecompressLZ((u8 *)file + 0x80, state);
    }
    DecompressLZ(GetFile((int)_FILE_73), palette);
    DecompressLZ(GetFile((int)_FILE_76), state->ropeGraphics);
    DecompressLZ((u8 *)GetFile((int)_FILE_8f) + 0x80, state->djinniGraphics);
    state->blitMode = 3;
    state->blitParam = 0x4040404;
    StartTask(Task_BlitAnim, 0x480);
    GetBattleActorPos2((s16)state->context->targets[0], pos);
    xoff = 0x40 - pos[0];
    (*(vu32 *)0x04000028) = xoff << 8;
    _PlaySound(0x8e);

    for (frame = 0; frame != state->context->numTargets * 20 + 72; frame++) {
        if (frame == 0x40)
            _Func_80bd7dc(0);
        ColorCycleVFXPalette(frame, 0xaaab, 0x5555, 0);
        if (state->context->djinni == 1) {
            angle = frame << 11;
            x = ((sin(angle) * 20) >> 16) + djX + xoff - 20;
            y = ((cos(angle) * 4) >> 16) + djY;
            BuildDraw2DFuncs(state->context->side, pair);
            y -= 24;
            if (frame > 32)
                y = y - frame * 2 + 64;
            pair[0](render, state->djinniGraphics, x, y, 40, 40);
            if (frame <= 3)
                pair[1](render, state->djinniGraphics, x, y, 40, 40);
            gfree(0x2f);
            gfree(0x2e);
        }
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
        pair[0] = (DrawFunc)gPtrs[46];
        BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
        pair[1] = (DrawFunc)iwram_3001f0c;
        if (frame > 16 && (frame & 15) == 0)
            state->blitParam += 0x1010101;

        for (t = 0; t != 1; t++) {
            f = frame - t * 8;
            actor = *_GetBattleActor((s16)state->context->targets[t]);
            if ((unsigned)f < 96) {
                InitMatrixStack();
                MatrixSetLook(camera, camera + 3);
                vec[0] = actor[2];
                vec[1] = actor[3];
                vec[2] = actor[4];
                Func_80e3944(vec, screen);
                screen[0] = pos[0] + xoff;
                screen[1] -= 24;
                if (f <= 0x43) {
                    angle = 0;
                    p = &state->particles[t * 32];
                    for (i = 0; i != 3; i++) {
                        InitMatrixStack();
                        if (f < 64) {
                            scale[0] = scale[1] = scale[2] = 0x2a000 - f * 0x600;
                            MatrixScalev(scale);
                            MatrixRoll((0x40 - f) << 9);
                            MatrixYaw((0x40 - f) << 9);
                        }
                        MatrixRoll(angle);
                        Func_80e3944(sRopeOffset, vec);
                        p->x = screen[0] + vec[0];
                        p->y = vec[1] + screen[1] + 16;
                        angle += 0x5555;
                        p++;
                    }
                    for (i = 0; i != 3; i++) {
                        a = &state->particles[t * 32 + i];
                        b = &state->particles[t * 32 + (i + 1) % 3];
                        size = 5 - f / 16;
                        for (k = 0; k != 24; k++) {
                            x = a->x + k * (b->x - a->x) / 24;
                            y = a->y + k * (b->y - a->y) / 24;
                            pair[0](render, state->ropeGraphics + Data_ede5c[size - 1],
                                x - size, y - size, size * 2, size * 2);
                        }
                    }
                }
                if (f > 63) {
                    pair[0](render, state->graphics, screen[0] - 24, screen[1] - 24, 24, 48);
                    pair[1](render, state->graphics, screen[0], screen[1] - 24, 24, 48);
                }
            }
        }
        gfree(0x2f);
        gfree(0x2e);
        state->frameReady = t;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    AnimEnd();
}
