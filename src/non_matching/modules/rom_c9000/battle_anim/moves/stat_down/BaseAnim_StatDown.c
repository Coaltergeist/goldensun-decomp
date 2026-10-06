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
               u8 arrows[8][0x2b8];
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
    DrawFunc funcs[2];
    s32 vec[3];
    s32 screen[3];
    s32 origin[3];
    struct StatDownParticle *p;
    s32 *camera;
    s32 *actor;
    int xoff;
    int limit;
    int frame, j, i, t, x, y;

    state->context = context;
    AnimStart(0);
    REG_BG2PA = 0x100;
    if (subanim == 0)
        LoadVFXFile((int)_FILE_9c, state, 1, 1);
    else
        LoadVFXFile((int)_FILE_9b, state, 1, 1);
    {
        void *file = GetFile(subanim == 0 ? (int)_FILE_bb
                             : subanim == 1 ? (int)_FILE_b7 : (int)_FILE_bb);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    LoadVFXFile((int)_FILE_9d, state->arrows[0], 0, 0);

    limit = 0x39;
    for (i = 1; i != 8; i++) {
        for (j = 0; j != 0x2b8; j++) {
            int v = state->arrows[0][j];
            if (v > limit)
                v = limit;
            if (v < 0)
                v = 0;
            state->arrows[i][j] = v;
        }
        limit -= 7;
    }

    if (state->context->side == 1) {
        REG_BG2X = 0xffff9000;
        xoff = -0x70;
    } else {
        REG_BG2X = 0;
        xoff = 0;
    }

    p = (struct StatDownParticle *)gBuffer;
    for (i = 0; i != 0x200; i++) {
        int angle = Random() & 0xffff;
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
        p->vy = (cos(angle) * 0xc0 >> 6) + 0x10000;
        p->vz = sin(angle) * 0xc0 >> 6;
        p->age = Random() & 0xff;
        p++;
    }

    BuildDraw2DFuncs(state->context->side, funcs);
    state->blitMode = 2;
    state->blitParam = 0x32;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != state->context->numTargets * 4 + 0x40; frame++) {
        camera = iwram_3001e80;
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
                if ((unsigned)(t - 0x18) <= 0x24) {
                    int level = 0;
                    if (t > 0x1c) {
                        level = (t - 0x18) / 4;
                        if (level > 7)
                            level = 7;
                    }
                    p = (struct StatDownParticle *)gBuffer + j * 32;
                    for (i = 0; i != 0x18; i++) {
                        int k = (i % 4) * 3;
                        int m = ((p->age + t) / 8) % 3;
                        Func_80e3944(p, screen);
                        k += m;
                        x = screen[0] + xoff;
                        y = screen[1];
                        funcs[0](render, state->arrows[0] + level * 0x2b8 + offsets[k],
                                x, y, widths[k], heights[k]);
                        Func_80e38b8(p, 0x3c, 0);
                        p++;
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
