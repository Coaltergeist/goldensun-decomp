/*
 * Non-matching decompilation of Anim_Unused_Haunt.
 *
 * Matches 0x000..0x0f5 (init, palette copy, LZ decompression, particle init,
 * and outer loop setup) 100% byte-for-byte.
 * Remaining diff:
 * - Unfinished unused move (contains dead `blitMode = 1` / `blitParam = 0`
 *   writes and unused `screen` projection). In the target binary, `frame - i * 16`
 *   was strength-reduced into a loop GIV and tested with separate `< 0` and
 *    `> 63` branches, whereas GCC 2.96 `fold-const.c` folds `t >= 0 && t < 64`
 *   into `(unsigned)t <= 63` (single GIV benefit 34 < threshold 125) unless an
 *   additional dead use of `frame - i * 16` was present in the unfinished source.
 */
#include "anim.h"
#include "math.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct HauntParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 angle;
    s32 unk10;
    s32 unk14;
    s32 unk18;
};

struct HauntState {
    u8 graphics[0x7080];
    struct HauntParticle particles[64];
    s32 blitMode;
    s32 blitParam;
    u8 pad_7788[0x7824 - 0x7788];
    s32 frameReady;
    struct AnimContext *context;
};

struct HauntVec { s32 x, y, z; };

extern u8 *const iwram_3001eec[];
extern char _FILE_a9[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void DecompressLZ(const void *, void *);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void Task_BlitAnim(void);
extern void **_GetBattleActor(int);
extern void GetBattleActorPos2(int, struct HauntVec *);
extern void InitMatrixStack(void);
extern void MatrixSetLook(u8 *, u8 *);
extern void Func_80e3944(struct HauntVec *, struct HauntVec *);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Unused_Haunt(struct AnimContext *context)
{
    u8 *const *baseSlots = iwram_3001eec;
    u8 *const *slots = baseSlots;
    struct HauntState *state = (struct HauntState *)*slots++;
    u8 *render = *slots;
    int frame;
    struct HauntParticle *p;
    DrawFunc draw;
    int i;
    u8 *camera;
    int offset, k;
    void **actor;
    s32 *obj;
    struct HauntVec world, screen, pos;

    camera = baseSlots[-27];
    AnimStart(1);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000052) = 0x1010;
    {
        u8 *file = GetFile((int)_FILE_a9);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
        DecompressLZ(file + 0x80, state);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    state->blitMode = 1;
    state->blitParam = 0;
    state->blitMode = 2;
    state->blitParam = 75;
    draw = (DrawFunc)iwram_3001eec[7];
    StartTask(Task_BlitAnim, 0x480);

    offset = 0;
    if (state->context->side)
        offset = -112;
    (*(vu32 *)0x04000028) = offset << 8;

    for (k = 0; k != 64; k++) {
        p = &state->particles[k];
        p->x = 0;
        p->y = 0;
        p->angle = 0;
        p->unk8 = 4;
    }

    for (frame = 0; frame != state->context->numTargets * 16 + 64; frame++) {
        for (i = 0; i != state->context->numTargets; i++) {
            actor = _GetBattleActor((s16)state->context->targets[i]);
            obj = *actor;
            GetBattleActorPos2((s16)state->context->targets[i], &pos);
            pos.x += offset;
            if (frame - i * 16 >= 0 && frame - i * 16 < 64) {
                InitMatrixStack();
                MatrixSetLook(camera, camera + 0xc);
                world.x = obj[2];
                world.y = obj[3];
                world.z = obj[4];
                Func_80e3944(&world, &screen);
                screen.x += offset;
                for (k = 0; k != 3; k++) {
                    int x, y;
                    p = &state->particles[i * 2 + i + k];
                    x = pos.x + ((sin(p->angle + k * 0x5555) << 3) >> 16);
                    y = pos.y + ((cos(p->angle + k * 0x5555) << 3) >> 16);
                    p->angle += 0x200;
                    draw(render, state->graphics + k * 0x240, x - 12, y - 28, 24, 24);
                }
            }
        }
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
