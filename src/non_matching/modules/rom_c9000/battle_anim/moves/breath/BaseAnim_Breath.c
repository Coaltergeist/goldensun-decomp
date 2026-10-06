/* Unfinished candidate. Particle-loop preheader instruction order still differs. */
#include "anim.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct BreathParticle {
    s32 x;
    s32 y;
    s32 unk08;
    s32 vx;
    s32 vy;
    s32 unk14;
    s32 timer;
};

struct BreathState {
    /* 0000 */ u8 graphics[0x7080];
    /* 7080 */ struct BreathParticle particles[64];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x77a8 - 0x7788];
    /* 77a8 */ s32 unk77A8;
    /* 77ac */ u8 pad_77ac[0x7824 - 0x77ac];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

extern u8 *iwram_3001ef0[];
extern char _FILE_ce[], _FILE_5a[], _FILE_54[], _FILE_7d[], _FILE_73[];
extern char _FILE_b9[], _FILE_6e[], _FILE_a1[], _FILE_8d[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void BuildDraw2DFuncs(int, DrawFunc *);
extern void LoadVFXFile(int, void *, int, int);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void Task_BlitAnim(void);
extern void GetBattleActorPos(int, s32 *);
extern void GetBattleActorPos2(int, s32 *);
extern unsigned int Random(void);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void _SetBattleActorKnockback(int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

extern void BaseAnim_Breath(void *context, int subanim);

void BaseAnim_Breath(void *context, int subanim)
{
    u8 **slots = iwram_3001ef0;
    u8 *render = slots[0];
    struct BreathState *state = (struct BreathState *)slots[-1];
    u8 *buffer;
    DrawFunc funcs[2];
    s32 pos[3];
    s32 targetPos[8][3];
    s32 target[3];
    struct BreathParticle *p, *q;
    char *file;
    int i, frame, t, c, timer;

    state->context = context;
    buffer = slots[1];
    AnimStart(0);
    (*(vu16 *)0x04000052) = 0x1010;
    if (subanim == 7) {
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
        funcs[0] = (DrawFunc)slots[6];
        BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
        funcs[1] = (DrawFunc)slots[7];
    } else {
        BuildDraw2DFuncs(state->context->side, funcs);
    }
    LoadVFXFile((int)_FILE_ce, state, 1, 0);
    if (subanim == 5) {
        LoadVFXFile((int)_FILE_5a, state->graphics + 0xc56, 1, 1);
    } else if (subanim == 7) {
        LoadVFXFile((int)_FILE_54, state->graphics + 0xc56, 1, 1);
    } else {
        LoadVFXFile((int)_FILE_7d, state->graphics + 0xc56, 1, 1);
        LoadVFXFile((int)_FILE_73, buffer, 0, 0);
        if (subanim == 6) {
            for (i = 0; i != 64; i++) {
                c = i / 4;
                ((u16 *)0x05000000)[i] = (c << 10) | (c << 5) | c;
            }
            (*(vu16 *)0x04000050) = 0;
        } else {
            void *src;
            void *(*copy)(void *, const void *, unsigned int);
            switch (subanim) {
            case 0:
                file = _FILE_7d;
                break;
            case 1:
                file = _FILE_b9;
                break;
            case 2:
                file = _FILE_6e;
                break;
            case 3:
                file = _FILE_a1;
                break;
            case 4:
            default:
                file = _FILE_8d;
                break;
            }
            src = GetFile((int)file);
            copy = Func_8001af8;
            copy((void *)0x05000000, src, 0x80);
        }
    }
    if (subanim == 7) {
        state->blitMode = 2;
        state->blitParam = 50;
    } else {
        state->blitMode = 2;
        state->blitParam = 75;
    }
    StartTask(Task_BlitAnim, 0x480);
    for (i = 0; i != 64; i++)
        state->particles[i].timer = -1;

    GetBattleActorPos(state->context->user, pos);
    if (subanim == 3)
        pos[1] -= 16;
    if (subanim == 4) {
        if (state->context->side == 1)
            pos[0] += 28;
        else
            pos[0] -= 28;
    }
    if (subanim == 7) {
        if (state->context->side == 1)
            pos[0] += 16;
        else
            pos[0] -= 16;
    }
    if (subanim == 5) {
        pos[0] /= 3;
        (*(vu16 *)0x04000020) = 0x55;
    }
    for (i = 0; i != state->context->numTargets; i++)
        GetBattleActorPos2((s16)state->context->targets[i], targetPos[i]);

    for (frame = 0; frame != 64; frame++) {
        t = frame % (s32)state->context->numTargets;
        if (frame == 4)
            _PlaySound(0x88);
        if (subanim != 6) {
            if (frame == 24)
                _Func_80bd7dc(0x86);
        } else if (frame == 60) {
            _Func_80bd7dc(0x86);
        }
        if (subanim == 5) {
            if (state->context->side == 1)
                funcs[0](render, state->graphics + 0xc56 + (frame / 3 % 3) * 0x1200,
                         pos[0] - 2, pos[1] - 32, 72, 62);
            else
                funcs[0](render, state->graphics + 0xc56 + (frame / 3 % 3) * 0x1200,
                         pos[0] - 70, pos[1] - 32, 72, 62);
        } else {
            target[0] = targetPos[t][0] + (Random() & 0x1f) - 16;
            target[1] = targetPos[t][1] + (Random() & 0x3f) - 16;
            if (frame <= 47) {
                p = &state->particles[frame];
                p->x = pos[0] << 15;
                p->y = pos[1] << 16;
                p->vx = (target[0] - pos[0]) << 11;
                p->vy = (target[1] - pos[1]) << 11;
                p->timer = 0;
            }
        }

        for (i = 0; i != 64; i++) {
            q = &state->particles[i];
            timer = q->timer;
            if (timer < 0)
                continue;
            if (subanim == 7) {
                if (timer > 5)
                    funcs[state->context->side](render, state->graphics + 0xc56,
                        *(s16 *)((u8 *)&q->x + 2) - 16, *(s16 *)((u8 *)&q->y + 2) - 32, 32, 64);
            } else if (subanim == 4) {
                if (timer > 5)
                    funcs[0](render, state->graphics + 0xc56 + (timer / 4) * 0x800,
                        *(s16 *)((u8 *)&q->x + 2) - 16, *(s16 *)((u8 *)&q->y + 2) - 32, 32, 64);
            } else if (subanim != 5 && timer > 1) {
                funcs[0](render, state->graphics + 0xc56 + (timer / 4) * 0x800,
                    *(s16 *)((u8 *)&q->x + 2) - 16, *(s16 *)((u8 *)&q->y + 2) - 32, 32, 64);
            }
            q->x += q->vx;
            q->y += q->vy;
            if (++q->timer == 24)
                q->timer = -1;
        }

        if (subanim == 5) {
            for (i = 0; i != state->context->numTargets; i++) {
                if (frame >= i * 4 + 2 && (frame & 7) == i) {
                    state->unk77A8 = 8;
                    SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 4);
                }
            }
        } else {
            for (i = 0; i != state->context->numTargets; i++) {
                if (frame >= i * 4 + 16 && (frame & 7) == i) {
                    state->unk77A8 = 8;
                    if (subanim == 6)
                        SetBattleActorState((s16)state->context->targets[i], 14, 5, i, 4);
                    else
                        SetBattleActorState((s16)state->context->targets[i], 7, 5, i, 4);
                    _SetBattleActorKnockback((s16)state->context->targets[i], 4);
                }
            }
        }
        UpdateScreenShake(4, 4);
        if (subanim != 6)
            Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
