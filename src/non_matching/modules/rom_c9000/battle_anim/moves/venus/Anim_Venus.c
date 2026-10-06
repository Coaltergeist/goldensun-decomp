#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct VenusParticle {
    s32 x;
    s32 y;
    s32 unk8;
    s32 unkc;
    s32 unk10;
    s32 unk14;
    s32 delay;
};

struct VenusState {
               u8 graphics[0x7080];
               struct VenusParticle particles[32];
               u8 pad_7400[0x7780 - 0x7400];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77a8 - 0x7788];
               s32 unk77A8;
               u8 pad_77ac[0x7824 - 0x77ac];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern char _FILE_73[], _FILE_94[], _FILE_6f[];

extern const u16 Data_ede48[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void LoadVFXFile(int, void *, int, int);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern unsigned int Random(void);

extern void Task_BlitAnim(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void Func_80e3908(struct VenusParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Venus(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct VenusState *state = (struct VenusState *)*slots++;
    u8 *render = *slots;
    int frame;
    DrawFunc mirror, draw;
    u8 *particleGfx;
    int angle, i, j;
    struct VenusParticle *p, *q;

    particleGfx = baseSlots[2];
    state->context = context;
    AnimStart(0);
    (*(vu16 *)0x04000052) = 0x1010;
    BuildDraw2DFuncEx(0x2e, 7, 7, 11, 2);
    BuildDraw2DFuncEx(0x2f, 7, 7, 3, 3);
    draw = (DrawFunc)baseSlots[7];
    mirror = (DrawFunc)baseSlots[8];
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_94, state, 1, 1);
    LoadVFXFile((int)_FILE_6f, state->graphics + 0x2f8, 1, 0);
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    for (i = 0; i != 32; i++) {
        p = &state->particles[i];
        p->x = Random() & 63;
        p->y = 104;
    }
    for (i = 0; i != 512; i++)
        ewram_2010018[i * 7] = -1;

    _PlaySound(0x8d);
    for (frame = 0, angle = 0x8000; frame != 96; frame++) {
        if (frame <= 79) {
            int x = ((sin(angle) * 24) >> 16) + 22;
            int y = (((64 - frame * 2) * cos(angle)) >> 16) + 29;
            mirror(render, state->graphics, x, y, 20, 38);
        }
        if (frame == 56)
            _Func_80bd7dc(0x85);

        for (i = 0; i != 10; i++) {
            p = &state->particles[i];
            if (frame >= i * 4 + 16) {
                draw(render, state->graphics + 0x9e0, p->x - 17, p->y - 32, 34, 65);
                if (frame == i * 4 + 16) {
                    q = (struct VenusParticle *)(gBuffer + i * 0x380);
                    for (j = 0; j != 16; j++, q++) {
                        int a = (Random() & 0x7fff) + 0x4000;
                        int r = (Random() & 0x1ff) + 256;
                        q->x = p->x << 16;
                        q->y = (p->y + 16) << 16;
                        q->unkc = (sin(a) * r) >> 7;
                        q->unk10 = (cos(a) * r) >> 6;
                        q->delay = (Random() & 15) + 32;
                    }
                    if (i & 1)
                        _PlaySound(0x85);
                    state->unk77A8 = 4;
                    for (j = 0; j != state->context->numTargets; j++) {
                        SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 6);
                        _SetBattleActorKnockback((s16)state->context->targets[j], 6);
                    }
                }
                p->y -= 12;
            }
        }

        p = (struct VenusParticle *)gBuffer;
        for (i = 0; i != 512; i++, p++) {
            if (p->delay != -1) {
                int w = p->delay / 16 + 2;
                mirror(render, particleGfx + Data_ede48[w - 1],
                     *(s16 *)((u8 *)&p->x + 2) - w / 2,
                     *(s16 *)((u8 *)&p->y + 2) - w, w, w * 2);
                Func_80e3908(p, 0x3e, 0x2000);
                p->delay--;
            }
        }

        UpdateScreenShake(4, 4);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
        angle -= 0x800;
    }

    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
