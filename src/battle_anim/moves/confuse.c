/* battle_anim/moves/confuse.c */
#include "anim.h"
#include "math.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct ConfuseVec { s32 x, y, z; };

struct ConfuseState {
    /* 0000 */ u8 graphics[0x6980];
    /* 6980 */ s32 scroll[160];
    /* 6c00 */ u8 pad_6c00[0x7780 - 0x6c00];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x7824 - 0x7788];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

extern u8 *iwram_3001eec[];
extern u8 *iwram_3001e80[];
extern char _FILE_af[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void DecompressLZ(const void *, void *);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void Func_80dbb9c(void);
extern void Task_BlitAnim(void);
extern void InitMatrixStack(void);
extern void MatrixSetLook(void *, void *);
extern s32 **_GetBattleActor(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void Func_80e3944(struct ConfuseVec *, struct ConfuseVec *);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Confuse(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct ConfuseState *state = (struct ConfuseState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    struct ConfuseVec pos, out;
    int frame, i, t, xoff;
    s32 *actor;
    s32 *scroll;
    u8 *camera;

    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000020) = 0x100;
    {
        void *file = GetFile((int)_FILE_af);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
        DecompressLZ((u8 *)file + 0x80, state);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 15, 2);
    pair[1] = (DrawFunc)baseSlots[8];
    StartTask(Func_80dbb9c, 0x480);
    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);
    if (state->context->side == 1) {
        (*(vu32 *)0x04000028) = -0x6800;
        xoff = -112;
    } else {
        xoff = 0;
    }

    for (frame = 0; frame != state->context->numTargets * 16 + 48; frame++) {
        camera = *iwram_3001e80;
        scroll = state->scroll;
        if (state->context->side == 0) {
            for (i = 0; i != 160; i++)
                *scroll++ = (0x80000 - sin((frame + i) << 10) * 8) >> 10;
        } else {
            for (i = 0; i != 160; i++)
                *scroll++ = ((sin((frame + i) << 10) * 8) >> 10) - 0x7000;
        }
        InitMatrixStack();
        MatrixSetLook(camera, camera + 0xc);
        for (t = 0; t != state->context->numTargets; t++) {
            actor = *_GetBattleActor((s16)state->context->targets[t]);
            if (frame > t * 16 && frame < t * 16 + 60) {
                if (frame == t * 16 + 32)
                    SetBattleActorState((s16)state->context->targets[t], 0, 5, -1, 0);
                pos.x = actor[2];
                pos.y = 0x280000;
                pos.z = actor[4];
                Func_80e3944(&pos, &out);
                for (i = 0; i != 4; i++) {
                    int x = out.x + ((sin((frame << 9) + i * 0x4000) << 4) >> 16) + xoff;
                    int y = out.y + ((cos((frame << 9) + i * 0x4000) << 4) >> 16);
                    pair[(frame / 16) & 1](render,
                        state->graphics + ((frame / 4 - (frame / 16) * 4) << 10),
                        x - 16, y - 16, 32, 32);
                }
            }
        }
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    StopTask(Func_80dbb9c);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
