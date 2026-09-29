#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct DeathPlungeActor {
    u8 pad_00[0x8];
    s32 x;
    s32 y;
    s32 z;
    u8 pad_14[0x1c - 0x14];
    s32 unk1c;
    u8 pad_20[0x28 - 0x20];
    s32 unk28;
    u8 pad_2c[0x30 - 0x2c];
    s32 unk30;
    s32 unk34;
    u8 pad_38[0x48 - 0x38];
    s32 unk48;
    u8 pad_4c[0x58 - 0x4c];
    u8 unk58;
    u8 pad_59;
    u8 unk5a;
};

struct DeathPlungeState {
               u8 graphics[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

struct DeathPlungeRenderers {
    DrawFunc draw, mirror;
};

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80[];

extern char _FILE_7d[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern struct DeathPlungeActor **_GetBattleActor(int);

extern int _Func_80b8530(int);

extern void _Actor_Stop(struct DeathPlungeActor *);

extern void _Actor_TravelTo(struct DeathPlungeActor *, int, int, int);

extern void _Actor_SetAnim(struct DeathPlungeActor *, int);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern void Func_80e3944(s32 *, s32 *);

extern void SetBattleActorState(int, int, int, int, int);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void UpdateScreenShake(int, int);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_DeathPlunge(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct DeathPlungeState *state = (struct DeathPlungeState *)*slots++;
    u8 *render = *slots;
    struct DeathPlungeRenderers pair;
    struct DeathPlungeActor **userSlot, **targetSlot;
    struct DeathPlungeActor *user, *target;
    int pct, x, z, userHeight, targetHeight, frame, i;
    s32 in[3], out[3];
    s32 *blitParam;

    state->context = context;
    AnimStart(0);
    LoadVFXFile((int)_FILE_7d, state, 1, 1);
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    state->blitMode = 2;
    blitParam = &state->blitParam;
    baseSlots = (u8 **)baseSlots[7];
    *blitParam = 75;
    pair.draw = (DrawFunc)baseSlots;
    StartTask(Task_BlitAnim, 0x480);
    userSlot = _GetBattleActor(state->context->user);
    targetSlot = _GetBattleActor((s16)state->context->targets[0]);
    target = *targetSlot;
    user = *userSlot;
    pct = 90;
    x = user->x + (target->x - user->x) * pct / 100;
    z = user->z + (target->z - user->z) * pct / 100;
    userHeight = _Func_80b8530(state->context->user);
    targetHeight = _Func_80b8530((s16)state->context->targets[0]);
    _Actor_Stop(user);
    _Actor_TravelTo(user, x, 0, z);
    _Actor_SetAnim(user, 2);
    user->unk58 = 1;
    user->unk5a = 1;
    user->unk34 = 0x20000;
    user->unk30 = 0x80000;
    WaitFrames(20);

    for (frame = 0; frame != 96; frame++) {
        u8 *matrix = *iwram_3001e80;
        InitMatrixStack();
        MatrixSetLook(matrix, matrix + 0xc);
        if (frame == 0) {
            target->unk28 = 0xf0000;
            target->unk48 = 0x91eb;
            user->unk28 = 0xf0000;
            user->unk48 = 0x91eb;
        }
        if (frame == 11) {
            target->unk1c = -target->unk1c;
            user->unk1c = -user->unk1c;
            user->y += userHeight;
            target->y += targetHeight;
        }
        if (frame == 54) {
            SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 10);
            target->unk28 = 0x80000;
            target->unk48 = 0xab85;
            user->unk28 = 0x50000;
            user->unk48 = 0x7851;
            user->unk34 = 0x10000;
            user->unk30 = 0x20000;
            user->unk5a = 0;
            _Actor_Stop(user);
            _Actor_TravelTo(user, 0, 0, user->z);
        }
        InitMatrixStack();
        MatrixSetLook(matrix, matrix + 0xc);
        in[0] = user->x;
        in[1] = user->y;
        in[2] = user->z;
        Func_80e3944(in, out);
        out[0] >>= 1;
        if ((unsigned int)(frame - 54) <= 1)
            pair.draw(render, state->graphics, out[0] - 16, out[1] - 16, 32, 64);
        if ((unsigned int)(frame - 56) <= 11) {
            for (i = 0; i != 16; i++) {
                int angle = i << 12;
                int px = out[0] + ((sin(angle) * (frame - 46)) >> 16);
                int py = ((cos(angle) * (frame - 46)) >> 16) - frame;
                pair.draw(render, state->graphics + ((frame - 56) / 2 << 11),
                     px - 16, py + 100, 32, 64);
            }
        }
        if (frame == 64) {
            target->unk1c = -target->unk1c;
            user->unk1c = -user->unk1c;
            user->y -= userHeight;
            target->y -= targetHeight;
            _Actor_SetAnim(user, 0);
        }
        if (frame == 54)
            _Func_80bd7dc(0x86);
        if (frame == 0) {
            _PlaySound(0x88);
            state->unk77A8 = 6;
        }
        if (frame == 53)
            state->unk77A8 = 6;
        UpdateScreenShake(16, 16);
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
