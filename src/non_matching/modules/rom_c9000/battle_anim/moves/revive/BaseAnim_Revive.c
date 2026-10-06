/* Unfinished candidate. Setup and call-argument instruction scheduling still differs. */
#include "anim.h"
#include "math.h"
#include "task.h"

extern void BaseAnim_Revive(void *context, int subanim);

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct ReviveParticle {
    s32 x, y, z;
    s32 unkC, unk10, unk14;
    s32 timer;
};

struct ReviveVec { s32 x, y, z; };

struct ReviveActor {
    u8 pad[8];
    s32 x, y, z;
};

struct ReviveState {
    /* 0000 */ u8 graphics[0x7780];
    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;
    /* 7788 */ u8 pad_7788[0x7824 - 0x7788];
    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

/* Sparkle frame sequence and light-pillar sprite offsets, widths and heights. */
__asm__(".section .rodata\n"
        ".Lee0a2:\n\t.byte 2, 1, 0, 1, 2, 3, 4, 3\n"
        ".Lee0aa:\n\t.hword 0xa8e, 0xdcf, 0x11e4\n"
        ".Lee0b0:\n\t.byte 0x11, 0x13, 0x14\n"
        ".Lee0b3:\n\t.byte 0x31, 0x37, 0x40\n"
        "\t.text\n");

extern u8 ReviveSparkleFrames[] __asm__(".Lee0a2");
extern u16 RevivePillarOffsets[] __asm__(".Lee0aa");
extern u8 RevivePillarWidths[] __asm__(".Lee0b0");
extern u8 RevivePillarHeights[] __asm__(".Lee0b3");

extern u8 *iwram_3001eec[];
extern u8 *iwram_3001e80[];
extern void *gPtrs[];
extern u8 gBuffer[];
extern char _FILE_7b[], _FILE_b1[], _FILE_93[], _FILE_91[];

extern void AnimStart(int);
extern void AnimEnd(void);
extern void Anim_Djinni(struct AnimContext *, int, int, int, int *, int *);
extern void BuildDraw2DFuncs(int, DrawFunc *);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern u8 *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern void DecompressLZ(const void *, void *);
extern unsigned int Random(void);
extern void GetBattleActorPos2(int, s32 *);
extern void Task_BlitAnim(void);
extern struct ReviveActor **_GetBattleActor(int);
extern void InitMatrixStack(void);
extern void MatrixSetLook(u8 *, u8 *);
extern void MatrixTranslatev(struct ReviveVec *);
extern void Func_80e3944(void *, struct ReviveVec *);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void WaitFrames(int);
extern void gfree(int);

static inline void CopyPalette(void *dst, const void *src, unsigned int size)
{
    void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
    copy(dst, src, size);
}

void BaseAnim_Revive(void *arg, int subanim)
{
    struct AnimContext *context = arg;
    u8 **slots = iwram_3001eec;
    struct ReviveState *state = (struct ReviveState *)*slots++;
    u8 *render = *slots;
    DrawFunc pair[2];
    int djinniX, djinniY;
    s32 actorPos[3];
    struct ReviveVec out, pos, vec;
    struct ReviveParticle *particles = (struct ReviveParticle *)gBuffer;
    struct ReviveParticle *p, *q;
    struct ReviveActor *actor, *target;
    int frame, i, j, xoff, x, y, idx, width, delay;
    u8 *camera;
    u8 *file;

    state->context = context;
    AnimStart(0);
    if (state->context->djinni == 1)
        Anim_Djinni(context, subanim, state->context->side ^ 1, 0, &djinniX, &djinniY);
    file = GetFile((int)_FILE_7b);
    CopyPalette((void *)0x05000000, file, 0x80);
    file += 0x80;
    DecompressLZ(file, state);
    file = GetFile((int)_FILE_b1);
    CopyPalette((void *)0x05000000, file, 0x80);
    file += 0x80;
    DecompressLZ(file, state->graphics + 0x2710);
    file = GetFile(subanim == 0 ? (int)_FILE_93 : (int)_FILE_91);
    CopyPalette((void *)0x05000000, file, 0x80);
    file += 0x80;
    DecompressLZ(file, state->graphics + 0x65c0);

    for (j = 0; j != 512; j++) {
        p = &particles[j];
        p->x = 0;
        p->y = 0x500000;
        p->z = (Random() | -32) << 14;
        p->timer = Random() & 0xff;
    }

    (*(vu16 *)0x04000020) = 0x100;
    if (state->context->numTargets == 1) {
        GetBattleActorPos2((s16)state->context->targets[0], actorPos);
        xoff = 0x40 - actorPos[0];
    } else if (state->context->side == 1) {
        xoff = -112;
    } else {
        xoff = 0;
    }
    (*(vu32 *)0x04000028) = xoff << 8;
    state->blitMode = 2;
    state->blitParam = 50;
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != state->context->numTargets * 16 + 116; frame++) {
        camera = *iwram_3001e80;
        if (frame == 64)
            _PlaySound(0xd4);
        if (frame == 80)
            _Func_80bd7dc(0);
        if (state->context->djinni == 1) {
            x = ((-sin(frame << 11) * 20) >> 16) + djinniX + xoff - 20;
            y = ((cos(frame << 11) * 4) >> 16) + djinniY - 24;
            BuildDraw2DFuncs(state->context->side ^ 1, pair);
            if (frame > 32)
                y = y - frame * 2 + 64;
            pair[1](render, state->graphics + 0x65c0, x, y, 40, 40);
            if (frame <= 3)
                pair[1](render, state->graphics + 0x65c0, x, y, 40, 40);
            gfree(0x2f);
            gfree(0x2e);
        }
        BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
        pair[0] = (DrawFunc)gPtrs[0x2e];
        BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
        pair[1] = (DrawFunc)gPtrs[0x2f];

        for (i = 0; i != state->context->numTargets; i++) {
            actor = *_GetBattleActor((s16)state->context->targets[i]);
            delay = i * 16;
            InitMatrixStack();
            MatrixSetLook(camera, camera + 0xc);
            vec.x = actor->x;
            vec.y = 0;
            vec.z = actor->z;
            MatrixTranslatev(&vec);
            if (frame > delay) {
                for (j = 0; j != 8; j++) {
                    q = &particles[i * 64 + j];
                    if (frame > j * 8 + delay && q->y > 0x80000) {
                        int s;
                        Func_80e3944(q, &out);
                        out.x += xoff;
                        s = (sin(q->timer << 10) << 4) >> 16;
                        if (j & 1)
                            out.x -= s;
                        else
                            out.x += s;
                        pair[j & 1](render,
                            state->graphics + 0x2710 + ReviveSparkleFrames[(q->timer / 8) & 7] * 0x240,
                            out.x - 12, out.y - 12, 24, 24);
                        q->y -= 0x10000;
                        q->timer++;
                    }
                }
            }
        }

        for (j = 0; j != state->context->numTargets; j++) {
            if (frame >= j * 16 + 72) {
                target = *_GetBattleActor((s16)state->context->targets[j]);
                InitMatrixStack();
                MatrixSetLook(camera, camera + 0xc);
                if (frame == j * 16 + 72)
                    SetBattleActorState((s16)state->context->targets[j], 1, -1, -1, 0);
                if (frame == j * 16 + 88)
                    SetBattleActorState((s16)state->context->targets[j], 0, -1, -1, 0);
                pos.x = target->x;
                pos.y = 0;
                pos.z = target->z;
                Func_80e3944(&pos, &out);
                out.x += xoff;
                if (frame < j * 16 + 104) {
                    idx = frame / 4;
                    width = 6;
                    if (frame > j * 16 + 88)
                        width = 6 - (frame - j * 16 - 88) / 3;
                    if (idx > 2)
                        idx = (idx & 1) + 1;
                    if (frame < j * 16 + 100) {
                        pair[0](render, state->graphics + RevivePillarOffsets[idx],
                            out.x - RevivePillarWidths[idx],
                            out.y - RevivePillarHeights[idx] + 8,
                            RevivePillarWidths[idx], RevivePillarHeights[idx]);
                        pair[1](render, state->graphics + RevivePillarOffsets[idx],
                            out.x,
                            out.y - RevivePillarHeights[idx] + 8,
                            RevivePillarWidths[idx], RevivePillarHeights[idx]);
                    }
                    for (i = 0; i != out.y; i++) {
                        pair[0](render, state->graphics + 5, out.x - width, i, width, 1);
                        pair[1](render, state->graphics + 5, out.x, i, width, 1);
                    }
                }
            }
        }
        gfree(0x2f);
        gfree(0x2e);
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    AnimEnd();
}
