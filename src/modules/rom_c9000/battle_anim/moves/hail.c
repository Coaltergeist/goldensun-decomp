/* battle_anim/moves/hail.c */
#include "anim.h"
#include "math.h"
#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct HailParticle {
    s32 x;
    s32 y;
    s32 kind;
    s32 vx;
    s32 vy;
    s32 unk14;
    s32 unk18;
};

struct HailState {
    /* 0000 */ u8 graphics[0x7780];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x77a8 - 0x7788];
    /* 77a8 */ s32 unk77A8;
    /* 77ac */ u8 pad_77ac[0x7824 - 0x77ac];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

/* Hailstone sprite widths, heights and graphics offsets (odd ROM alignment). */
__asm__(".section .rodata\n"
        ".Leec5f:\n\t.byte 8, 8, 8, 8\n"
        ".Leec63:\n\t.byte 8, 8, 8, 8, 0\n"
        ".Leec68:\n\t.hword 0x904, 0x944, 0x984, 0x9c4\n"
        "\t.text\n");
/* GCC calls r12 "ip"; the ROM provides its bx-r12 veneer as _call_via_r12. */
__asm__(".set _call_via_ip, _call_via_r12");

extern const u8 HailWidths[] __asm__(".Leec5f");
extern const u8 HailHeights[] __asm__(".Leec63");
extern const u16 HailOffsets[] __asm__(".Leec68");

extern u8 *iwram_3001eec[];
extern u8 gBuffer[];
extern char _FILE_6e[], _FILE_b8[], _FILE_92[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void Anim_Djinni(struct AnimContext *, int, int, int, int *, int *);
extern void BuildDraw2DFuncs(int, DrawFunc *);
extern void LoadVFXFile(int, void *, int, int);
extern void GetBattleActorPos3(int, int *);
extern unsigned int Random(void);
extern void Task_BlitAnim(void);
extern void Func_80e38b8(struct HailParticle *, int, int);
extern void _Func_80bd7dc(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void _SetBattleActorKnockback(int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);

void Anim_Hail(struct AnimContext *context)
{
    u8 **slots = iwram_3001eec;
    struct HailState *state = (struct HailState *)*slots++;
    u8 *render = *slots;
    DrawFunc *draw;
    DrawFunc funcs[2];
    int djinniX, djinniY;
    int pos[3];
    struct HailParticle *p, *particles;
    int frame, j, x, y, angle, radius, idx, rise;

    state->context = context;
    AnimStart(0);
    Anim_Djinni(context, 1, state->context->side, 2, &djinniX, &djinniY);
    BuildDraw2DFuncs(state->context->side, draw = funcs);
    LoadVFXFile((int)_FILE_6e, state, 1, 1);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);
    GetBattleActorPos3((s16)state->context->targets[0], pos);

    particles = (struct HailParticle *)gBuffer;
    for (j = 0; j != 64; j++) {
        p = &particles[j];
        angle = (Random() & 0x7fff) + 0x4000;
        radius = (Random() & 0x1ff) + 0x80;
        p->x = (pos[0] / 2 + (Random() & 15) - 8) << 16;
        p->y = (pos[1] + 8) << 16;
        p->vx = (sin(angle) * radius) >> 9;
        p->vy = (cos(angle) * radius) >> 6;
        p->kind = Random() & 127;
        p->unk14 = Random() & 127;
        p->unk18 = (Random() & 15) + 32;
    }

    for (frame = 0; frame != 64; frame++) {
        if (frame > 47)
            (*(vu16 *)0x04000052) = (0x40 - frame) | 0x1000;
        if (frame == 1) {
            LoadVFXFile((int)_FILE_b8, state->graphics + 0x400, 1, 1);
            LoadVFXFile((int)_FILE_92, state->graphics + 0x65c0, 1, 0);
        }
        if (state->context->djinni == 1) {
            x = ((-sin(frame << 11) * 4) >> 16) + djinniX / 2 - 10;
            y = ((cos(frame << 11) * 2) >> 16) + djinniY - 22;
            if (frame > 69)
                y = y - frame * 2 + 138;
            draw[1](render, state->graphics + 0x65c0, x, y, 20, 40);
            if (frame <= 3)
                draw[1](render, state->graphics + 0x65c0, x, y, 20, 40);
        }
        p = (struct HailParticle *)gBuffer;
        for (j = 0; j != 64; j++, p++) {
            if (frame >= j / 4 + 4) {
                idx = (p->kind / 128) & 3;
                draw[j & 1](render, state->graphics + HailOffsets[idx] + 0x400,
                            *(s16 *)((u8 *)&p->x + 2) - HailWidths[idx] / 2,
                            *(s16 *)((u8 *)&p->y + 2) - HailHeights[idx] / 2,
                            HailWidths[idx], HailHeights[idx]);
                Func_80e38b8(p, 0x3f, 0x1000);
            }
        }
        if (frame == 8) {
            state->unk77A8 = frame;
            _Func_80bd7dc(0x86);
            SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 16);
            _SetBattleActorKnockback((s16)state->context->targets[0], 3);
        }
        rise = frame * 4;
        if (rise > 32)
            rise = 32;
        if (state->context->side == 0) {
            for (j = 0; j != 5; j++)
                funcs[0](render, state->graphics, j * 32 - ((frame / 4) & 31), 120 - rise, 32, 32);
        } else {
            for (j = 0; j != 5; j++)
                funcs[0](render, state->graphics, j * 32 + ((frame / 4) & 31) - 32, 120 - rise, 32, 32);
        }
        UpdateScreenShake(4, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
