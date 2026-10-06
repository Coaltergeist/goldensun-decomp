#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct GroundRock { s32 x, y, z, vx, vy, vz, active; };

struct GroundChunk { s32 pad[3]; s32 piece; s32 flags; s32 pad2[2]; };

struct GroundVec { s32 x, y, z; };

struct GroundState {
               u8 graphics[0x65c0];
               u8 djinniGraphics[0x7080 - 0x65c0];
               struct GroundRock rocks[8];
               u8 pad_7160[0x7400 - 0x7160];
               struct GroundChunk chunks[32];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 shake;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern DrawFunc iwram_3001f0c;

extern void *const gPtrs[];

extern char _FILE_a7[], _FILE_94[];

static const u8 GroundChunkFlags[] = { 3, 7, 11, 15 };

static const u8 GroundPieceWidths[] = { 24, 7, 7, 8, 6, 13, 10, 11, 7 };

static const u8 GroundPieceHeights[] = { 48, 13, 14, 24, 24, 17, 20, 14, 20 };

static const u16 GroundPieceOffsets[] = {
    0x0000, 0x0480, 0x04db, 0x053d, 0x05fd, 0x068d, 0x076a, 0x0832, 0x08cc,
};

static const u8 GroundPieceX[] = { 0, 9, 9, 11, 10, 0, 3, 13, 7 };

static const u8 GroundPieceY[] = { 0, 18, 18, 0, 24, 20, 5, 22, 26 };

extern void AnimStart(int);

extern void AnimEnd(void);

extern void Anim_Djinni(struct AnimContext *, int, int, int, int *, int *);

extern void LoadVFXFile(int, void *, int, int);

extern void BlendVFXPaletteFile(int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern s32 **_GetBattleActor(int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(s32 *, s32 *);

extern void Func_80e3944(struct GroundRock *, struct GroundVec *);

extern int sin(int);

extern int cos(int);

extern void _PlaySound(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Ground(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct GroundState *state = (struct GroundState *)*slots++;
    u8 *render = *slots;
    s32 *camera = (s32 *)baseSlots[-27];
    DrawFunc draw;
    s32 *user, *target;
    struct GroundRock *rock;
    struct GroundChunk *chunk;
    struct GroundVec out;
    int djinniX, djinniY;
    int frame, i, j;
    int x, y;

    state->context = context;
    AnimStart(0);
    Anim_Djinni(context, 0, state->context->side, 2, &djinniX, &djinniY);
    (*(vu16 *)0x04000052) = 0x1010;
    if (state->context->side == 1)
        BuildDraw2DFuncEx(0x2e, 7, 7, 7, 2);
    else
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    draw = (DrawFunc)gPtrs[0x2e];
    LoadVFXFile((int)_FILE_a7, state, 1, 0);
    LoadVFXFile((int)_FILE_94, state->djinniGraphics, 1, 1);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    user = *_GetBattleActor(state->context->user);
    target = *_GetBattleActor((s16)state->context->targets[0]);

    for (i = 0; i != 8; i++) {
        rock = &state->rocks[i];
        rock->x = user[2];
        rock->y = 0x420000;
        rock->z = user[4];
        rock->vx = (i * 0x500000) >> 5;
        rock->vy = (int)(((Random() & 0x7f) - 0x40) << 16) >> 6;
        rock->vz = (int)(((Random() & 0xff) - 0x7f) << 16) >> 5;
        if (rock->x > 0)
            rock->vx = -rock->vx;
        rock->active = 1;
    }

    for (frame = 0; frame != 0x60; frame++) {
        if (frame > 16)
            BlendVFXPaletteFile((int)_FILE_a7);
        if (state->context->djinni == 1) {
            x = ((-sin(frame << 11) << 2) >> 16) + djinniX / 2;
            y = ((cos(frame << 11) << 1) >> 16) + djinniY;
            x -= 10;
            y -= 22;
            if (frame > 16)
                y = y - frame * 2 + 32;
            if (state->context->side == 1)
                BuildDraw2DFuncEx(0x2f, 7, 7, 7, 3);
            else
                BuildDraw2DFuncEx(0x2f, 7, 7, 3, 3);
            if (frame <= 3)
                iwram_3001f0c(render, state->djinniGraphics, x, y, 20, 40);
            gfree(0x2f);
            draw(render, state->djinniGraphics, x, y, 20, 40);
        }
        if (!(frame & 1)) {
            chunk = state->chunks;
            for (i = 0; i != 32; i++, chunk++) {
                chunk->piece = Random() % 6 + 3;
                chunk->flags = GroundChunkFlags[Random() & 3];
            }
        }
        InitMatrixStack();
        MatrixSetLook(camera, camera + 3);
        rock = state->rocks;
        for (i = 0; i != 6; i++, rock++) {
            if (rock->active != 1)
                continue;
            if (frame > i * 2) {
                Func_80e3944(rock, &out);
                out.x >>= 1;
                x = out.x - 12;
                y = out.y - 24;
                draw(render, state->graphics, x, y, 24, 48);
                if ((frame & 3) <= 1)
                    draw(render, state->graphics + GroundPieceOffsets[1],
                         x + GroundPieceX[1], y + GroundPieceY[1],
                         GroundPieceWidths[1], GroundPieceHeights[1]);
                else
                    draw(render, state->graphics + GroundPieceOffsets[2],
                         x + GroundPieceX[2], y + GroundPieceY[2],
                         GroundPieceWidths[2], GroundPieceHeights[2]);
                chunk = &state->chunks[i * 4];
                for (j = 0; j != 4; j++, chunk++) {
                    int piece, cx, cy;
                    BuildDraw2DFuncEx(0x2f, 7, 7, chunk->flags, 2);
                    piece = chunk->piece;
                    if (chunk->flags & 4)
                        cx = x - GroundPieceWidths[piece] - GroundPieceX[piece] + 24;
                    else
                        cx = x + GroundPieceX[piece];
                    if (chunk->flags & 8)
                        cy = y - GroundPieceHeights[piece] - GroundPieceY[piece] + 48;
                    else
                        cy = y + GroundPieceY[piece];
                    iwram_3001f0c(render, state->graphics + GroundPieceOffsets[piece],
                                  cx, cy, GroundPieceWidths[piece],
                                  GroundPieceHeights[chunk->piece]);
                    gfree(0x2f);
                }
                rock->x += rock->vx;
                rock->y += rock->vy;
                rock->z += rock->vz;
            }
            if (frame > i * 2 + 16) {
                rock->vx += (target[2] - rock->x) >> 8;
                rock->vy += (0x140000 - rock->y) >> 8;
                rock->vz += (target[4] - rock->z) >> 8;
                if (frame < i * 2 + 0x55) {
                    rock->vx = rock->vx * 60 / 64;
                    rock->vy = rock->vy * 60 / 64;
                    rock->vz = rock->vz * 60 / 64;
                }
                if (rock->y < 0x140000) {
                    state->shake = 8;
                    rock->active = 0;
                    _PlaySound(0x86);
                    SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 4);
                    _SetBattleActorKnockback((s16)state->context->targets[0], 4);
                }
            }
        }
        UpdateScreenShake(16, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
