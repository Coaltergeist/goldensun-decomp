/* battle_anim/moves/unused_skull_cloud.c */
#include "anim.h"
#include "math.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct SkullCloudParticle {
    s32 x, y, z;
    s32 vx, vy;
    s32 unk14;
    s32 age;
};

struct SkullCloudState {
    /* 0000 */ u8 graphics[0x1b00];
    /* 1b00 */ u8 cloudGraphics[0x7080 - 0x1b00];
    /* 7080 */ struct SkullCloudParticle particles[64];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x7824 - 0x7788];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

extern u8 *iwram_3001eec[];
extern s32 *iwram_3001e80;
extern char _FILE_9e[], _FILE_6c[], _FILE_bb[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void LoadVFXFile(int, void *, int, int);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern unsigned int Random(void);
extern void Task_BlitAnim(void);
extern s32 **_GetBattleActor(int);
extern void InitMatrixStack(void);
extern void MatrixSetLook(s32 *, s32 *);
extern void MatrixTranslatev(s32 *);
extern void Func_80e3944(struct SkullCloudParticle *, s32 *);
extern void Func_80e38b8(struct SkullCloudParticle *, int, int);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Unused_SkullCloud(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct SkullCloudState *state = (struct SkullCloudState *)*slots++;
    u8 *render = *slots;
    int frame;
    DrawFunc mirror, draw;
    int i, j;
    struct SkullCloudParticle *p;
    s32 *camera;
    s32 *actor;
    s32 screen[3];
    s32 vec[3];

    state->context = context;
    AnimStart(0);
    LoadVFXFile((int)_FILE_9e, state, 1, 1);
    LoadVFXFile((int)_FILE_6c, state->cloudGraphics, 0, 0);
    {
        void *file = GetFile((int)_FILE_bb);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 3);
    draw = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 3, 2);
    mirror = (DrawFunc)baseSlots[8];

    for (i = 0; i != 64; i++) {
        int angle = Random() & 0xffff;
        int speed = Random() & 0xff;
        p = &state->particles[i];
        p->x = 0;
        p->y = 0;
        p->z = 0;
        if (i % 6 == 5) {
            p->vx = 0;
            p->vy = 0;
        } else {
            p->vx = (sin(angle) * speed) >> 7;
            p->vy = (cos(angle) * speed) >> 9;
        }
        p->unk14 = 0;
        p->age = 0;
    }

    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != 96; frame++) {
        camera = iwram_3001e80;
        for (j = 0; j != state->context->numTargets; j++) {
            actor = *_GetBattleActor((s16)state->context->targets[j]);
            InitMatrixStack();
            MatrixSetLook(camera, camera + 3);
            vec[0] = actor[2];
            vec[1] = 0x140000;
            vec[2] = actor[4];
            MatrixTranslatev(vec);
            if (frame >= j * 8 && frame < j * 8 + 40) {
                for (i = 0; i != 6; i++) {
                    int image;
                    p = &state->particles[j * 6 + i];
                    image = p->age / 6;
                    if (image > 5)
                        image = 5;
                    Func_80e3944(p, screen);
                    screen[0] >>= 1;
                    if (i == 5) {
                        Func_80e38b8(p, 0x3e, 0x800);
                        draw(render, state->cloudGraphics + image * 0x480,
                                screen[0] - 12, screen[1] - 36, 24, 48);
                    } else {
                        Func_80e38b8(p, 0x3c, 0x200);
                        mirror(render, state->graphics + image * 0x480,
                                screen[0] - 12, screen[1] - 36, 24, 48);
                    }
                    p->age++;
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
