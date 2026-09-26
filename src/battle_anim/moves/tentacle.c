/* battle_anim/moves/tentacle.c */
#include "nonmatching.h"
#include "anim.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct TentacleState {
    /* 0000 */ u8 graphics[0x7780];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x77a8 - 0x7788];
    /* 77a8 */ s32 unk77A8;
    /* 77ac */ u8 pad_77ac[0x7824 - 0x77ac];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

struct TentacleActor {
    u8 pad_00[0x28];
    s32 unk28;
    u8 pad_2c[0x44 - 0x2c];
    s32 unk44;
    s32 unk48;
};

extern u8 *iwram_3001eec[];
extern u8 gBuffer[];
extern char _FILE_71[], _FILE_72[], _FILE_a0[];
extern u8 TentacleWidths[] __asm__(".Lee064");
extern u8 TentacleHeights[] __asm__(".Lee06a");
extern const u16 TentacleOffsets[] __asm__(".Lee070");
extern u8 TentacleX[] __asm__(".Lee07c");
extern signed char TentacleY[] __asm__(".Lee088");

extern void AnimStart(int);
extern void AnimEnd(void);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void LoadVFXFile(int, void *, int, int);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void Task_BlitAnim(void);
extern struct TentacleActor **_GetBattleActor(int);
extern void GetBattleActorPos2(int, s32 *);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void _SetBattleActorKnockback(int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void BaseAnim_Tentacle(struct AnimContext *context, int subanim);

void Anim_PoisonBeat(void *context) {
    BaseAnim_Tentacle(context, 0);
}


void Anim_SpinningBeat(void *context) {
    BaseAnim_Tentacle(context, 1);
}

void BaseAnim_Tentacle(struct AnimContext *context, int subanim)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct TentacleState *state = (struct TentacleState *)*slots++;
    u8 *render = *slots;
    struct TentacleActor *actor;
    DrawFunc pair[2];
    s32 pos[3];
    int frames, frame, image;

    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000020) = 0x100;
    if (state->context->side == 1) {
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
        pair[0] = (DrawFunc)baseSlots[7];
    } else {
        BuildDraw2DFuncEx(0x2e, 7, 7, 7, 1);
        pair[0] = (DrawFunc)baseSlots[7];
    }
    LoadVFXFile((int)_FILE_71, state, 1, 1);
    LoadVFXFile((int)_FILE_72, gBuffer, 1, 0);
    if (subanim == 0) {
        void *palette = GetFile((int)_FILE_a0);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, palette, 0x80);
    }
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    actor = *_GetBattleActor((s16)state->context->targets[0]);
    GetBattleActorPos2((s16)state->context->targets[0], pos);
    if (state->context->side == 0)
        (*(vu32 *)0x04000028) = (16 - pos[0]) << 8;
    else
        (*(vu32 *)0x04000028) = (112 - pos[0]) << 8;
    frames = 74;
    if (subanim != 1)
        frames = 48;
    for (frame = 0; frame != frames; frame++) {
        image = frame / 4;
        if (image <= 5) {
            if (image <= 3)
                pair[0](render, state->graphics + TentacleOffsets[image],
                     TentacleX[image + state->context->side * 6], TentacleY[image] + 32,
                     TentacleWidths[image], TentacleHeights[image]);
            else
            {
                u8 *buffer = gBuffer;
                pair[0](render, buffer + TentacleOffsets[image],
                     TentacleX[image + state->context->side * 6], TentacleY[image] + 32,
                     TentacleWidths[image], TentacleHeights[image]);
            }
        }
        if (frame == 8) {
            if (subanim == 0) {
                _Func_80bd7dc(0x85);
                _SetBattleActorKnockback((s16)state->context->targets[0], 1);
            } else {
                _PlaySound(0x86);
                SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 4);
            }
            state->unk77A8 = 8;
        }
        if (subanim == 1) {
            if (frame == 13) {
                actor->unk28 = 0xc0000;
                actor->unk48 = 0x7851;
                actor->unk44 = 0x4000;
            }
            if (frame == 65) {
                state->unk77A8 = 4;
                _Func_80bd7dc(0x86);
            }
        }
        UpdateScreenShake(8, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
