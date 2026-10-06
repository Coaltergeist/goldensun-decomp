#include "anim.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct DouseParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 dx;
    s32 dy;
    s32 unk14;
    s32 life;
};

struct DouseState {
               u8 graphics[0x7080];
               struct DouseParticle drops[64];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x7824 - 0x7788];
               s32 frameReady;
               struct AnimContext *context;
};

extern const u8 DouseParams[][4] __asm__(".Lededc");

extern u16 Data_ede5c[];

extern u8 *iwram_3001eec[];

extern u8 gBuffer[];

extern struct DouseParticle ewram_2010140[];

extern s32 ewram_2010158[];

extern char _FILE_cc[], _FILE_76[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern unsigned int Random(void);

extern void Func_80c9048(void);

extern void Func_80c91a4(void);

extern void Task_BlitAnim(void);

extern void Func_80e3908(struct DouseParticle *, int, int);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Douse(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct DouseState *state = (struct DouseState *)*slots++;
    u8 *render = *slots;
    int frame;
    DrawFunc drawSplash, draw;
    struct DouseParticle *p, *q;
    struct DouseParticle *splash = ewram_2010140;
    int j, k, x, y, size;

    state->context = context;
    AnimStart(0x2001);
    (*(vu16 *)0x04000020) = 0x100;
    LoadVFXFile((int)_FILE_cc, state->graphics + 0x604, 1, 1);
    LoadVFXFile((int)_FILE_76, state, 0, 0);
    Func_80c9048();
    (*(vu16 *)0x04000050) = 0x3f44;
    (*(vu16 *)0x04000048) = 0x3337;
    BuildDraw2DFuncEx(0x2e, 7, 7, 2, 2);
    draw = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 2, 3);
    drawSplash = (DrawFunc)baseSlots[8];

    for (j = 0; j != 0x200; j++)
        ewram_2010158[j * 7] = -1;

    for (j = 0; j != 64; j++) {
        int x, y;
        p = &state->drops[j];
        x = Random() & 0x3f;
        y = -(j * DouseParams[state->context->param][2] + 16);
        if (state->context->side == 1)
            x = x + y / 2 - 0x30;
        else
            x = x - y / 2 + 0x48;
        p->x = x << 3;
        p->y = y << 3;
        p->life = -1;
    }

    if (state->context->side == 0) {
        u16 *buf = (u16 *)gBuffer;
        for (j = 0; j != 0xa0; j++) {
            if ((unsigned int)(j - 8) <= 0x5f)
                buf[j] = ((0x34 - j / 2) << 8) | (0xb4 - j / 2);
            else if (j <= 0x87)
                buf[j] = 0x80;
            else
                buf[j] = 0x100;
        }
    } else {
        u16 *buf = (u16 *)gBuffer;
        for (j = 0; j != 0xa0; j++) {
            if ((unsigned int)(j - 8) <= 0x5f)
                buf[j] = ((j / 2 + 0x3c) << 8) | (j / 2 + 0xbc);
            else if (j <= 0x87)
                buf[j] = 0x70f0;
            else
                buf[j] = 0x100;
        }
    }

    StartTask(Func_80c91a4, 0x480);
    if (state->context->param == 0) {
        state->blitMode = 1;
        state->blitParam = 0;
    } else if (state->context->param == 1) {
        state->blitMode = 2;
        state->blitParam = 50;
    } else {
        state->blitMode = 2;
        state->blitParam = 75;
    }
    StartTask(Task_BlitAnim, 0x480);

    for (frame = 0; frame != DouseParams[state->context->param][3]; frame++) {
        if (frame == DouseParams[state->context->param][3] - 0x40)
            _Func_80bd7dc(0x84);
        for (j = 0; j != DouseParams[state->context->param][0]; j++) {
            p = &state->drops[j];
            x = p->x / 8;
            y = p->y / 8;
            if (p->life == -1) {
                draw(render, state->graphics + 0x604, x, y, 0x18, 0x18);
                if (p->y <= 0x27f) {
                    if (state->context->side == 0)
                        p->x -= 0x20;
                    else
                        p->x += 0x20;
                    p->y += 0x40;
                } else {
                    p->life = 0;
                    for (k = 0; k != DouseParams[state->context->param][1]; k++) {
                        struct DouseParticle *base = ewram_2010140;
                        q = base + (j * DouseParams[state->context->param][1] + k);
                        q->x = (x + 12) << 16;
                        q->y = y << 16;
                        q->dx = ((Random() & 0xff) - 0x80) << 9;
                        if (state->context->param == 2)
                            q->dy = ((Random() & 0x1ff) - 0x180) << 10;
                        else
                            q->dy = ((Random() & 0xff) - 0xff) << 10;
                        q->life = (Random() & 0xf) + 0x10;
                    }
                    if ((j & 3) == 0)
                        _PlaySound(0x84);
                    for (k = 0; k != state->context->numTargets; k++)
                        SetBattleActorState((s16)state->context->targets[k], 7, 5, k, 2);
                }
            } else {
                if (p->life >= 0 && p->life <= 3)
                    draw(render, state->graphics + 0x844, x, y, 0x18, 0x18);
                else if (p->life <= 7)
                    draw(render, state->graphics + 0xa84, x - 9, y - 9, 0x2a, 0x2a);
                if (p->life <= 0xe)
                    p->life++;
            }
        }
        for (j = 0; j != 0x200; j++) {
            struct DouseParticle *s = &splash[j];
            if (s->life != -1) {
                size = s->life + 1;
                if (size > 6)
                    size = 6;
                drawSplash(render, state->graphics + Data_ede5c[size - 1],
                        *(s16 *)((u8 *)&s->x + 2) - size,
                        *(s16 *)((u8 *)&s->y + 2) - size, size * 2, size * 2);
                Func_80e3908(s, 0x3c, 0x2000);
                s->life--;
            }
        }
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }

    StopTask(Func_80c91a4);
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
    Func_80c9048();
}
