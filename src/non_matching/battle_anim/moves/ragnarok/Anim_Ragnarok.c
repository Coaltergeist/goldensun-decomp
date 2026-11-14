/*
 * Clean C decompilation of Anim_Ragnarok (src/battle_anim/moves/ragnarok.c).
 *
 * Status:
 * - Exact section sizes: 1,288/1,288 bytes .text, 12/12 bytes .rodata, 49/49 relocations.
 * - Matches 0x000..0x27b (first 636 bytes) and all inner loops/epilogue 100% byte-for-byte.
 * - Remaining diff (-15/+15 lines): GCC 2.96 loop_optimize GIV stack-slot ordering swap
 *   between [sp, #8] and [sp, #12] (`state->particles[i]` vs `start = i * 8 + 16`) in the
 *   `for (i = 0; i != 2; i++)` loop.
 */

#include "anim.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct RagnarokParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 dx;
    s32 dy;
    s32 unk14;
    s32 timer;
};

struct RagnarokState {
    u8 graphics[0x7080];
    struct RagnarokParticle particles[4][16];
    s32 blitMode;
    s32 blitParam;
    u8 pad_7788[0x77a8 - 0x7788];
    s32 unk77A8;
    u8 pad_77ac[0x7824 - 0x77ac];
    s32 frameReady;
    struct AnimContext *context;
};

static const u8 RagnarokBladeX[2][3] = {
    { 0x20, 0x18, 0x00 },
    { 0x60, 0x68, 0x80 },
};

static const u8 RagnarokFlashFrames[6] = { 5, 5, 4, 3, 2, 1 };

extern u16 Data_ede48[];
extern u8 *iwram_3001eec[];
extern u8 gBuffer[];
extern char _FILE_55[], _FILE_7d[], _FILE_73[], _FILE_c0[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern s32 **_GetBattleActor(int);
extern void BuildDraw2DFuncs(int, DrawFunc *);
extern void _Actor_SetAnim(s32 *, int);
extern void _Actor_SetAnimSpeed(s32 *, int);
extern void LoadVFXFile(int, void *, int, int);
extern unsigned int Random(void);
extern int sin(int);
extern int cos(int);
extern void Task_BlitAnim(void);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void BlendVFXPaletteFile(char *);
extern void Func_80e3908(struct RagnarokParticle *, int, int);
extern void SetBattleActorState(int, int, int, int, int);
extern void _SetBattleActorKnockback(int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Ragnarok(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct RagnarokState *state = (struct RagnarokState *)*slots++;
    u8 *render = *slots;
    int i, j, frame;
    u8 *sparkGfx = baseSlots[2];
    s32 *actor;
    DrawFunc pair[2];
    struct RagnarokParticle *p;
    struct RagnarokParticle *buf = (struct RagnarokParticle *)gBuffer;

    actor = *_GetBattleActor(context->user);
    context->param = 1;
    state->context = context;
    AnimStart(1);
    (*(vu16 *)0x04000052) = 0x1010;
    BuildDraw2DFuncs(state->context->side, pair);
    _Actor_SetAnim(actor, 2);
    _Actor_SetAnimSpeed(actor, 0x30);
    LoadVFXFile((int)_FILE_55, state, 1, 1);
    LoadVFXFile((int)_FILE_7d, state->graphics + 0x2000, 1, 0);
    LoadVFXFile((int)_FILE_73, sparkGfx, 0, 0);

    for (i = 0; i != 3; i++) {
        for (j = 0, p = state->particles[i]; j != 16; j++, p++) {
            int step = j * 2;
            int a = Random() & 0xffff;
            p->x = sin(a) * step;
            p->y = -(cos(a) * step);
            p->timer = j / 2 + 25;
        }
        for (j = 0; j != 340; j++) {
            int r = (Random() & 0x1ff) + 0x20;
            int a = Random() & 0xffff;
            p = &buf[i * 340 + j];
            p->x = RagnarokBladeX[state->context->side][i] << 16;
            p->y = 0x580000;
            p->dx = (sin(a) * r) >> 6;
            p->dy = -(cos(a) * r * 2) >> 6;
            p->timer = (Random() & 7) + 0x20;
        }
    }

    state->blitMode = 2;
    state->blitParam = 0x4b;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != 80; frame++) {
        if (frame == 4)
            _PlaySound(0xd4);
        if (frame == 8)
            state->unk77A8 = frame;
        if (frame == 18)
            _PlaySound(0x91);
        if (frame == 40)
            _Func_80bd7dc(0x86);

        if (frame < 40) {
            int x, y;
            int h = 0x80;
            if (state->context->side == 1) {
                if (frame <= 9) {
                    x = frame * 10 - 8;
                    y = frame * 16 - 0x80;
                } else if (frame > 20) {
                    x = frame + 0x3e;
                    y = frame * 2 - 0x18;
                } else {
                    x = 0x52;
                    y = 0x10;
                }
            } else {
                if (frame <= 9) {
                    x = 0x80 - frame * 10;
                    y = frame * 16 - 0x80;
                } else if (frame > 20) {
                    x = 0x3a - frame;
                    y = frame * 2 - 0x18;
                } else {
                    x = 0x26;
                    y = 0x10;
                }
            }
            if (y + 0x80 > 0x68)
                h = h - y - 0x18;
            if (h > 0)
                pair[0](render, state->graphics, x - 0x20, y, 0x40, h);
        }

        if (frame > 16)
            BlendVFXPaletteFile(_FILE_c0);

        for (i = 0; i != 2; i++) {
            int start = i * 8 + 16;
            if (frame == start)
                state->unk77A8 = 12;
            if (frame >= start) {
                if (frame < i * 8 + 18)
                    pair[0](render, state->graphics + 0x2000,
                            RagnarokBladeX[state->context->side][i] - 0x10, 0x38, 0x20, 0x40);
                for (j = 0; j != 12; j++) {
                    int x, y;
                    p = &state->particles[i][j];
                    y = p->y >> 16;
                    x = (p->x >> 16) + RagnarokBladeX[state->context->side][i];
                    if (p->timer >= 0 && p->timer < 18)
                        pair[0](render,
                                state->graphics + 0x2000 + (RagnarokFlashFrames[p->timer / 3] << 11),
                                x - 0x10, y + 0x38, 0x20, 0x40);
                    if (p->timer > 0)
                        p->timer = p->timer - 1;
                    else
                        p->timer = -1;
                }
            }
            if (frame > start + 5) {
                for (j = 0; j != 256; j++) {
                    struct RagnarokParticle *p = &((struct RagnarokParticle *)gBuffer)[i * 340 + j];
                    if (p->timer > 0) {
                        Func_80e3908(p, 0x40, 0x1000);
                        p->timer--;
                        if (p->y > 0x6c0000) {
                            p->dy = -p->dy / 2;
                        } else if (p->x >= 0 && p->x < 0x7f0000 && p->y >= 0) {
                            int x, y, w;
                            y = p->y >> 16;
                            x = p->x >> 16;
                            w = p->timer / 5 + 1;
                            pair[j & 1](render, sparkGfx + Data_ede48[w - 1],
                                        x - w / 2, y - w, w, w * 2);
                        }
                    }
                }
            }
            for (j = 0; j != state->context->numTargets; j++) {
                if (frame == start + 6) {
                    SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 10);
                    _SetBattleActorKnockback((s16)state->context->targets[j], 4);
                }
            }
        }

        UpdateScreenShake(16, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    _Actor_SetAnimSpeed(actor, 16);
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
