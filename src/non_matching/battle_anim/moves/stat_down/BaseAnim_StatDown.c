/*
 * Clean C decompilation of BaseAnim_StatDown (src/battle_anim/moves/stat_down.c).
 *
 * Status:
 * - Exact section sizes: 1,296/1,296 bytes .text, 48/48 bytes .rodata, 53/53 relocations.
 * - Matches 0x000..0x27b (first 636 bytes including wrapper functions) and epilogue 100% byte-for-byte.
 * - Remaining diff (-38/+38 lines): GCC 2.96 loop_optimize GIV stack-slot ordering swap
 *   between [sp, #8] and [sp, #12] (`t - 0x18` vs `j * 32 * sizeof(struct StatDownParticle)`)
 *   inside the per-target loop.
 */

#include "anim.h"
#include "math.h"
#include "task.h"
#include "gba/io.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct StatDownParticle {
    s32 x, y, z;
    s32 vx, vy, vz;
    s32 age;
};

struct StatDownState {
    u8 graphics[0x2580];
    u8 arrows[0x15c0];
    u8 pad_3b40[0x7780 - 0x3b40];
    s32 blitMode;
    s32 blitParam;
    u8 pad_7788[0x7824 - 0x7788];
    s32 frameReady;
    struct AnimContext *context;
};

extern u8 *iwram_3001eec[];
extern s32 *iwram_3001e80;
extern u8 gBuffer[];
extern char _FILE_9b[], _FILE_9c[], _FILE_9d[], _FILE_b7[], _FILE_bb[];

extern void BaseAnim_StatDown(void *context, int subanim);
extern void AnimStart(int);
extern void AnimEnd(void);
extern void LoadVFXFile(int, void *, int, int);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void BuildDraw2DFuncs(int, DrawFunc *);
extern unsigned int Random(void);
extern void Task_BlitAnim(void);
extern s32 **_GetBattleActor(int);
extern void InitMatrixStack(void);
extern void MatrixSetLook(s32 *, s32 *);
extern void MatrixTranslatev(s32 *);
extern void Func_80e3944(void *, s32 *);
extern void Func_80e38b8(struct StatDownParticle *, int, int);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void WaitFrames(int);
extern void gfree(int);

static inline void *API_Func_8001af8(void *dst, const void *src, unsigned int size)
{
    void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
    return copy(dst, src, size);
}

void BaseAnim_StatDown(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    static const u16 offsets[12] = {
        0x000, 0x078, 0x0b4, 0x102, 0x12a, 0x160,
        0x198, 0x1d7, 0x237, 0x25f, 0x277, 0x295,
    };
    static const u8 widths[12] = { 10, 5, 6, 5, 6, 7, 9, 8, 4, 6, 6, 7 };
    static const u8 heights[12] = { 12, 12, 13, 8, 9, 8, 7, 12, 10, 4, 5, 5 };
    u8 **slots = iwram_3001eec;
    struct StatDownState *state = (struct StatDownState *)*slots++;
    u8 *render = *slots;
    int frame, j;
    int xoff;
    DrawFunc funcs[2];
    s32 origin[3];
    s32 screen[3];
    s32 vec[3];
    void *file;
    s32 *actor;
    int speed;
    int i, t, x, y;

    state->context = context;
    AnimStart(0);
    REG_BG2PA = 0x100;
    if (subanim == 0)
        LoadVFXFile((int)_FILE_9c, state, 1, 1);
    else
        LoadVFXFile((int)_FILE_9b, state, 1, 1);
    if (subanim == 0)
        file = GetFile((int)_FILE_bb);
    else if (subanim == 1)
        file = GetFile((int)_FILE_b7);
    else
        file = GetFile((int)_FILE_bb);
    API_Func_8001af8((void *)0x05000000, file, 0x80);
    LoadVFXFile((int)_FILE_9d, state->arrows, 0, 0);

    for (i = 1; i != 8; i++) {
        for (j = 0; j != 0x2b8; j++) {
            int v = state->arrows[j];
            if (v > 0x40 - i * 7)
                v = 0x40 - i * 7;
            if (v < 0)
                v = 0;
            state->arrows[i * 0x2b8 + j] = v;
        }
    }

    if (state->context->side == 1) {
        REG_BG2X = 0xffff9000;
        xoff = -0x70;
    } else {
        REG_BG2X = 0;
        xoff = 0;
    }

    {
        struct StatDownParticle *p = (struct StatDownParticle *)gBuffer;
        for (i = 0; i != 0x200; i++) {
            int angle = Random() & 0xffff;
            speed = 0xc0;
            p->x = 0;
            if (subanim == 0) {
                p->y = ((i & 31) / 4) * 0x60000 - 0xa0000;
                p->z = (i % 4) * 0x20000 - 0x20000;
            } else {
                p->y = ((i & 31) / 4) * 0x60000 - 0xa0000;
                p->z = (i % 4) * 0x80000 - 0x100000;
            }
            if (state->context->side == 1)
                p->vx = 0x20000;
            else
                p->vx = -0x20000;
            p->vy = (cos(angle) * speed >> 6) + 0x10000;
            p->vz = sin(angle) * speed >> 6;
            p->age = Random() & 0xff;
            p++;
        }
    }

    BuildDraw2DFuncs(state->context->side, funcs);
    state->blitMode = 2;
    state->blitParam = 0x32;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != state->context->numTargets * 4 + 0x40; frame++) {
        s32 *camera = iwram_3001e80;
        if (frame == 0x48)
            _Func_80bd7dc(0);
        for (j = 0; j != state->context->numTargets; j++) {
            actor = *_GetBattleActor((s16)state->context->targets[j]);
            t = frame - j * 4;
            if (t > 0) {
                InitMatrixStack();
                MatrixSetLook(camera, camera + 3);
                vec[0] = actor[2];
                vec[1] = 0x140000;
                vec[2] = actor[4];
                InitMatrixStack();
                MatrixSetLook(camera, camera + 3);
                MatrixTranslatev(vec);
                origin[0] = 0;
                origin[1] = 0;
                origin[2] = 0;
                Func_80e3944(origin, screen);
                x = screen[0] + xoff;
                y = screen[1];
                if (subanim == 0) {
                    if (t <= 0x1a)
                        funcs[0](render, state->graphics + ((t / 4) % 7) * 0x3c0,
                                x - 12, y - 20, 0x18, 0x28);
                } else {
                    if (t <= 0x17)
                        funcs[1](render, state->graphics + ((t / 4) % 6) * 0x640,
                                x - 20, y - 20, 0x28, 0x28);
                }
                if (t == 0x18)
                    _PlaySound(0x8f);
                if (t >= 0x18 && t <= 0x3c) {
                    struct StatDownParticle *p;
                    int level = 0;
                    if (t > 0x1c) {
                        level = (t - 0x18) / 4;
                        if (level > 7)
                            level = 7;
                    }
                    for (i = 0, p = (struct StatDownParticle *)gBuffer + j * 32; i != 0x18; i++, p++) {
                        int a = (i % 4) * 3;
                        int b = ((p->age + t) / 8) % 3;
                        int k;
                        Func_80e3944(p, screen);
                        k = a + b;
                        x = screen[0] + xoff;
                        y = screen[1];
                        funcs[0](render, &state->arrows[level * 0x2b8 + offsets[k]],
                                x, y, widths[k], heights[k]);
                        Func_80e38b8(p, 0x3c, 0);
                    }
                }
            }
        }
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
