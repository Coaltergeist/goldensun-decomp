#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct PsyphonSealParticle {
    s32 unk0, unk4, unk8;
    s32 x, y;
    s32 unk14, unk18;
};

struct PsyphonSealVec { s32 x, y, z; };

struct PsyphonSealState {
               u8 graphics[0x7080];
               struct PsyphonSealParticle particles[64];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

static const struct PsyphonSealVec Data_ee134 = { 0, 0x18, 0 };

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80[];

extern DrawFunc iwram_3001f0c;

extern void *gPtrs[];

extern u16 Data_ede5c[];

extern char _FILE_79[], _FILE_73[], _FILE_76[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern void GetBattleActorPos2(int, struct PsyphonSealVec *);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void _Func_80b82c4(int, int, int, int);

extern void ColorCycleVFXPalette(int, int, int, int);

extern s32 **_GetBattleActor(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void MatrixScalev(s32 *);

extern void MatrixRoll(int);

extern void MatrixYaw(int);

extern void Func_80e3944(const struct PsyphonSealVec *, struct PsyphonSealVec *);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_PsyphonSeal(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct PsyphonSealState *state = (struct PsyphonSealState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx = baseSlots[2];
    u8 *camera = baseSlots[-27];
    u8 *file;
    DrawFunc draw, mirror;
    struct PsyphonSealVec pos, vec, screen;
    struct PsyphonSealParticle *p, *a, *b;
    s32 scaleVec[3];
    s32 *actor;
    int frame, t, i, k, local, scroll, angle, scale, rot, size;

    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000020) = 0x100;
    file = GetFile((int)_FILE_79);
    {
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    file += 0x80;
    DecompressLZ(file, state);
    DecompressLZ(GetFile((int)_FILE_73), particleGfx);
    file = GetFile((int)_FILE_76);
    DecompressLZ(file, state->graphics + 0x1000);
    state->blitMode = 3;
    state->blitParam = 0x4040404;
    StartTask(Task_BlitAnim, 0x480);
    GetBattleActorPos2((s16)state->context->targets[0], &pos);
    scroll = 0x40 - pos.x;
    (*(vu32 *)0x04000028) = scroll << 8;
    _PlaySound(0x8e);

    for (frame = 0; frame != state->context->numTargets * 20 + 72; frame++) {
        if (frame == 64)
            _Func_80bd7dc(0);
        if (frame == 46)
            _Func_80b82c4(state->context->user, (s16)state->context->targets[0], 16, 0);
        ColorCycleVFXPalette(frame, 0xaaab, 0x5555, 0);
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
        draw = (DrawFunc)gPtrs[0x2e];
        BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
        mirror = iwram_3001f0c;
        if (frame > 16 && (frame & 15) == 0)
            state->blitParam += 0x1010101;
        for (t = 0; t != 1; t++) {
            actor = *_GetBattleActor((s16)state->context->targets[t]);
            local = frame - t * 8;
            if ((unsigned int)local > 95)
                continue;
            InitMatrixStack();
            MatrixSetLook(camera, camera + 0xc);
            vec.x = actor[2];
            vec.y = actor[3];
            vec.z = actor[4];
            Func_80e3944(&vec, &screen);
            screen.x = pos.x + scroll;
            screen.y -= 24;
            if (local <= 67) {
                angle = 0;
                scale = 0x2a000 - local * 0x600;
                rot = (64 - local) << 9;
                for (i = 0; i != 3; i++) {
                    InitMatrixStack();
                    if (local <= 63) {
                        scaleVec[0] = scale;
                        scaleVec[1] = scale;
                        scaleVec[2] = scale;
                        MatrixScalev(scaleVec);
                        MatrixRoll(rot);
                        MatrixYaw(rot);
                    }
                    MatrixRoll(angle);
                    Func_80e3944(&Data_ee134, &vec);
                    p = &state->particles[t * 32 + i];
                    p->x = screen.x + vec.x;
                    p->y = vec.y + screen.y + 16;
                    angle += 0x5555;
                }
                for (i = 0; i != 3; i++) {
                    a = &state->particles[i + t * 32];
                    b = &state->particles[(i + 1) % 3 + t * 32];
                    size = 5 - local / 16;
                    for (k = 0; k != 24; k++) {
                        int x = a->x + k * (b->x - a->x) / 24;
                        int y = a->y + k * (b->y - a->y) / 24;
                        draw(render, state->graphics + 0x1000 + Data_ede5c[size - 1],
                             x - size, y - size, size * 2, size * 2);
                    }
                }
            }
            if (local > 63) {
                draw(render, state->graphics, screen.x - 24, screen.y - 24, 24, 48);
                mirror(render, state->graphics, screen.x, screen.y - 24, 24, 48);
            }
        }
        gfree(0x2f);
        gfree(0x2e);
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    AnimEnd();
}
