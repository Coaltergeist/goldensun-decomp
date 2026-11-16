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

struct BindVec {
    s32 x;
    s32 y;
    s32 z;
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
extern u8 *gPtrs[];
extern char _FILE_79[], _FILE_73[], _FILE_76[], _FILE_8f[];
extern u16 Data_ede5c[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void Anim_Djinni(struct AnimContext *, int, int, int, int *, int *);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void DecompressLZ(const void *, void *);
extern void Task_BlitAnim(void);
extern void GetBattleActorPos2(int, struct BindVec *);
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
extern void Func_80e3944(const void *, struct BindVec *);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Bind(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct BindState *state = (struct BindState *)*slots++;
    u8 *render = *slots;
    int frame, t;
    u8 *palette = baseSlots[2];
    s32 *camera = (s32 *)baseSlots[-27];
    DrawFunc pair[2];
    u8 **slot8;
    int djX, djY;
    struct BindVec pos;
    struct BindVec vec, screen;
    s32 scale[3];
    int xoff, f, i, k, size;
    s32 *actor;
    struct BindParticle *p;
    u8 *file;
    void *(*copy)(void *, const void *, unsigned int);

    state->context = context;
    AnimStart(1);
    if (state->context->djinni == 1)
        Anim_Djinni(context, 3, state->context->side, 0, &djX, &djY);
    (*(vu16 *)0x04000020) = 0x100;
    file = GetFile((int)_FILE_79);
    slot8 = &baseSlots[8];
    copy = Func_8001af8;
    copy((void *)0x05000000, file, 0x80);
    file += 0x80;
    DecompressLZ(file, state);
    DecompressLZ(GetFile((int)_FILE_73), palette);
    DecompressLZ(GetFile((int)_FILE_76), state->ropeGraphics);
    file = GetFile((int)_FILE_8f);
    file += 0x80;
    DecompressLZ(file, state->djinniGraphics);
    state->blitMode = 3;
    state->blitParam = 0x4040404;
    StartTask(Task_BlitAnim, 0x480);
    GetBattleActorPos2((s16)state->context->targets[0], &pos);
    xoff = 0x40 - pos.x;
    (*(vu32 *)0x04000028) = xoff << 8;
    _PlaySound(0x8e);

    for (frame = 0; frame != state->context->numTargets * 20 + 72; frame++) {
        if (frame == 0x40)
            _Func_80bd7dc(0);
        ColorCycleVFXPalette(frame, 0xaaab, 0x5555, 0);
        if (state->context->djinni == 1) {
            int x = ((sin(frame << 11) * 20) >> 16) + djX + xoff - 20;
            int y = ((cos(frame << 11) * 4) >> 16) + djY - 24;
            BuildDraw2DFuncs(state->context->side, pair);
            if (frame > 32)
                y = y - frame * 2 + 64;
            pair[0](render, state->djinniGraphics, x, y, 40, 40);
            if (frame <= 3)
                pair[1](render, state->djinniGraphics, x, y, 40, 40);
            gfree(0x2f);
            gfree(0x2e);
        }
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
        pair[0] = (DrawFunc)gPtrs[0x2e];
        BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
        pair[1] = (DrawFunc)*slot8;
        if (frame > 16 && (frame & 15) == 0)
            state->blitParam += 0x1010101;

        for (t = 0; t != 1; t++) {
            f = frame - t * 8;
            actor = *_GetBattleActor((s16)state->context->targets[t]);
            if ((unsigned)f < 96) {
                InitMatrixStack();
                MatrixSetLook(camera, camera + 3);
                vec.x = actor[2];
                vec.y = actor[3];
                vec.z = actor[4];
                Func_80e3944(&vec, &screen);
                screen.x = pos.x + xoff;
                screen.y -= 24;
                if (f <= 0x43) {
                    for (i = 0; i != 3; i++) {
                        p = &state->particles[t * 32 + i];
                        InitMatrixStack();
                        if (f < 64) {
                            scale[0] = 0x2a000 - f * 0x600;
                            scale[1] = 0x2a000 - f * 0x600;
                            scale[2] = 0x2a000 - f * 0x600;
                            MatrixScalev(scale);
                            MatrixRoll((0x40 - f) << 9);
                            MatrixYaw((0x40 - f) << 9);
                        }
                        MatrixRoll(i * 0x5555);
                        Func_80e3944(sRopeOffset, &vec);
                        p->x = vec.x + screen.x;
                        p->y = vec.y + screen.y + 16;
                    }
                    for (i = 0; i != 3; i++) {
                        struct BindParticle *a = &state->particles[i + t * 32];
                        struct BindParticle *b = &state->particles[(i + 1) % 3 + t * 32];
                        size = 5 - f / 16;
                        for (k = 0; k != 24; k++) {
                            int x = a->x + k * (b->x - a->x) / 24;
                            int y = a->y + k * (b->y - a->y) / 24;
                            pair[0](render, state->ropeGraphics + Data_ede5c[size - 1],
                                x - size, y - size, size * 2, size * 2);
                        }
                    }
                }
                if (f > 63) {
                    pair[0](render, state->graphics, screen.x - 24, screen.y - 24, 24, 48);
                    pair[1](render, state->graphics, screen.x, screen.y - 24, 24, 48);
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
