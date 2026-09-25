/* battle_anim/moves/unused_sabre_rain.c */
#include "nonmatching.h"
#include "anim.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct SabreRainParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 dx;
    s32 dy;
    s32 unk14;
    s32 unk18;
};

struct SabreRainPosition {
    s32 x, y, z;
};

struct SabreRainState {
    /* 0000 */ u8 graphics[0x7080];
    /* 7080 */ struct SabreRainParticle particles[64];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x77a8 - 0x7788];
    /* 77a8 */ s32 unk77A8;
    /* 77ac */ u8 pad_77ac[0x7824 - 0x77ac];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

/* Sabre sprite widths, heights and graphics offsets, indexed by speed. */
extern const u8 SabreWidths[] __asm__(".Ledf7f");
extern const u8 SabreHeights[] __asm__(".Ledf83");
extern const u16 SabreOffsets[] __asm__(".Ledf88");

extern u8 *iwram_3001eec[];
extern char _FILE_78[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void LoadVFXFile(int, void *, int, int);
extern unsigned int Random(void);
extern void Task_BlitAnim(void);
extern void GetBattleActorPos2(int, struct SabreRainPosition *);
extern void _PlaySound(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Unused_SabreRain(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct SabreRainState *state = (struct SabreRainState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    struct SabreRainPosition pos;
    struct SabreRainParticle *p;
    int frame, j, idx;

    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000020) = 0x100;
    (*(vu16 *)0x04000052) = 0x1000;
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 1);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 1);
    pair[1] = (DrawFunc)baseSlots[8];
    LoadVFXFile((int)_FILE_78, state, 1, 1);
    state->blitMode = 1;
    state->blitParam = 0;
    StartTask(Task_BlitAnim, 0x480);
    GetBattleActorPos2((s16)state->context->targets[0], &pos);
    (*(vu32 *)0x04000028) = (0x40 - pos.x) << 8;

    for (j = 0; j != 64; j++) {
        int x;
        p = &state->particles[j];
        p->x = x = Random() % 96 + 16;
        p->y = (24 - j / 4) << 16;
        if (x <= 43)
            p->dx = 3;
        else if (x <= 51)
            p->dx = 2;
        else if (x <= 59)
            p->dx = 1;
        else if (x <= 67)
            p->dx = 0;
        else if (x <= 75)
            p->dx = -1;
        else if (x <= 83)
            p->dx = -2;
        else
            p->dx = -3;
        p->dx <<= 17;
        p->dy = 0x80000;
        p->x <<= 16;
    }

    _PlaySound(0xd4);

    for (frame = 0; frame != 120; frame++) {
        if (frame <= 16) {
            (*(vu16 *)0x04000052) = frame | 0x1000;
            if (frame == 16)
                (*(vu16 *)0x04000050) = 0;
        }
        if (frame > 103) {
            (*(vu16 *)0x04000052) = (120 - frame) | 0x1000;
            if (frame == 104)
                (*(vu16 *)0x04000050) = 0x3f44;
        }

        for (j = 15; j != -1; j--) {
            int dx;
            p = &state->particles[j];
            dx = p->dx;
            idx = (dx < 0 ? -dx : dx) >> 17;
            if (frame < j * 4 + 25) {
                pair[(u32)dx >> 31](render, state->graphics + SabreOffsets[idx],
                                    *(s16 *)((u8 *)&p->x + 2) - SabreWidths[idx] / 2,
                                    *(s16 *)((u8 *)&p->y + 2) - SabreHeights[idx] / 2,
                                    SabreWidths[idx], SabreHeights[idx]);
                if (frame >= j * 4 + 16) {
                    p->x += p->dx;
                    p->y += p->dy;
                }
            } else {
                pair[(u32)dx >> 31](render, state->graphics + SabreOffsets[idx],
                                    *(s16 *)((u8 *)&p->x + 2) - SabreWidths[idx] / 2,
                                    *(s16 *)((u8 *)&p->y + 2) - SabreHeights[idx] / 2,
                                    SabreWidths[idx], SabreHeights[idx] - 4);
            }
        }

        if ((unsigned int)(frame - 23) <= 64 && (frame & 3) == 0) {
            SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 2);
            state->unk77A8 = 1;
            if ((frame & 7) == 0)
                _PlaySound(0x85);
        }
        UpdateScreenShake(8, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}

INCLUDE_ASM("asm/battle_anim/moves/unused_sabre_rain/unused_sabre_rain_data.s");
