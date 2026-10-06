/* battle_anim/moves/whirlwind.c */
#include "anim.h"
#include "math.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct WhirlwindParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 delay;
};

static const u8 Data_ee1ca[] = {
    1, 16, 2,
    2, 24, 2,
    4, 32, 4
};

struct WhirlwindState {
    /* 0000 */ u8 graphics[0x7080];
    /* 7080 */ struct WhirlwindParticle particles[16];
    /* 7240 */ u8 pad_7240[0x7780 - 0x7240];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x77a8 - 0x7788];
    /* 77a8 */ s32 unk77A8;
    /* 77ac */ u8 pad_77ac[0x7824 - 0x77ac];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

extern u8 *iwram_3001eec[];
extern char _FILE_ce[];
extern const u16 Data_edebe[];
extern const u8 Data_edeca[];
extern const u8 Data_eded0[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void DecompressLZ(const void *, void *);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern unsigned int Random(void);
extern void Task_BlitAnim(void);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void *Func_80008d8(void *, int, int);
extern void SetBattleActorState(int, int, int, int, int);
extern void _SetBattleActorKnockback(int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Whirlwind(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct WhirlwindState *state = (struct WhirlwindState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    int frame, i, j;
    int val;
    struct WhirlwindParticle *p;

    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000052) = 0x1010;
    {
        void *file = GetFile((int)_FILE_ce);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
        DecompressLZ((u8 *)file + 0x80, state);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
    pair[1] = (DrawFunc)baseSlots[8];

    for (j = 0; j != 16; j++) {
        p = &state->particles[j];
        p->x = Random() & 31;
        p->y = (Random() & 63) + 16;
        p->delay = -(Random() & 15);
    }

    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);
    (*(vu16 *)0x04000052) = 0x1000;
    WaitFrames(1);
    _PlaySound(0x8d);

    for (frame = 0; frame != 80; frame++) {
        val = sin(frame << 10) << 4;
        if (frame == 32)
            _Func_80bd7dc(0x85);

        {
            void *(*clear)(void *, int, int) = Func_80008d8;
            for (i = 0; i != 7; i++) {
                if (frame == i * 8 + 16)
                    clear(render, 0x4000, 0x08080808);
            }
        }

        if (state->context->side == 1)
            val += 0x200000;
        else
            val += 0xffe00000;

        if (frame <= 16)
            (*(vu16 *)0x04000052) = frame | 0x1000;
        if (frame > 63)
            (*(vu16 *)0x04000052) = (0x4f - frame) | 0x1000;

        for (i = 0; i != Data_ee1ca[state->context->param * 3]; i++) {
            u8 *pState = (u8 *)state + i * 0x70;
            int angle = (frame << 11) + i * 0x4000;
            int sin_val = sin(angle);
            int x = ((sin_val * Data_ee1ca[state->context->param * 3 + 1] + val) >> 16) + 40;
            int cos_val = cos(angle);
            int y = (cos_val * 2) >> 16;
            int step = (frame / 2) % 3;

            pair[0](render, state->graphics + step * 2560 + 0xc56, x, y + 16, 40, 32);
            pair[0](render, state->graphics + step * 1280 + 0x2a56, x, y + 48, 40, 32);
            pair[0](render, state->graphics + step * 2560 + 0x1156, x, y + 80, 40, 32);

            for (j = 0, p = (struct WhirlwindParticle *)(pState + 0x7080); j != 4; j++, p++) {
                if (p->delay >= 0) {
                    int idx = p->delay / 2 + (j / 2) * 3;
                    pair[j & 1](render, state->graphics + Data_edebe[idx],
                                p->x + x, p->y + y, Data_edeca[idx], Data_eded0[idx]);
                }
                p->delay++;
                if (p->delay == 6) {
                    p->x = Random() & 31;
                    p->y = (Random() & 63) + 16;
                    p->delay = 0;
                }
            }
        }

        for (j = 0; j != state->context->numTargets; j++) {
            for (i = 0; i != 7; i++) {
                if (frame == i * 8 + j * 3 + 16) {
                    SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 4);
                    _SetBattleActorKnockback((s16)state->context->targets[j], 6);
                }
            }
        }

        state->unk77A8 = 1;
        UpdateScreenShake(Data_ee1ca[state->context->param * 3 + 2],
                          Data_ee1ca[state->context->param * 3 + 2] * 2);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    gfree(0x2f);
    gfree(0x2e);
    StopTask(Task_BlitAnim);
    AnimEnd();
}
