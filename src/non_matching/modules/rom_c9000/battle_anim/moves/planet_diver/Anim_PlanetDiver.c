#include "anim.h"

#include "math.h"

#include "task.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct PlanetDiverVec { s32 x, y, z; };

struct PlanetDiverParticle { s32 x, y, vx, unk0C, vy, unk14, life; };

struct PlanetDiverActor {
             u8 pad_00[0x08];
             s32 x;
             s32 y;
             s32 z;
             u8 pad_14[0x24 - 0x14];
             s32 unk24;
             s32 unk28;
             u8 pad_2C[0x30 - 0x2C];
             s32 unk30;
             s32 unk34;
             u8 pad_38[0x48 - 0x38];
             s32 unk48;
             u8 pad_4C[0x58 - 0x4C];
             u8 unk58;
             u8 pad_59;
             u8 unk5A;
};

struct PlanetDiverState {
               u8 graphics[0x7780];
               s32 blitMode;
               s32 blitParam;
               u8 pad_7788[0x77A8 - 0x7788];
               s32 unk77A8;
               u8 pad_77AC[0x7824 - 0x77AC];
               s32 frameReady;
               struct AnimContext *context;
};

extern u8 *iwram_3001eec[];

extern u8 *iwram_3001e80[];

extern struct PlanetDiverParticle gBuffer[];

extern s32 ewram_2010018[];

extern const u16 Data_ede48[];

extern char _FILE_73[], _FILE_7d[], _FILE_89[];

extern void AnimStart(int);

extern void AnimEnd(void);

extern void *GetFile(int);

extern void *Func_8001af8(void *, const void *, unsigned int);

extern void DecompressLZ(const void *, void *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void Task_BlitAnim(void);

extern void InitMatrixStack(void);

extern void MatrixSetLook(void *, void *);

extern struct PlanetDiverActor **_GetBattleActor(int);

extern void GetBattleActorPos3(int, struct PlanetDiverVec *);

extern void _Actor_TravelTo(struct PlanetDiverActor *, int, int, int);

extern void _Actor_SetAnim(struct PlanetDiverActor *, int);

extern void _Actor_Stop(struct PlanetDiverActor *);

extern unsigned int Random(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void _SetBattleActorKnockback(int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_PlanetDiver(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct PlanetDiverState *state = (struct PlanetDiverState *)*slots++;
    u8 *render = *slots;
    u8 *particleGfx = baseSlots[2];
    DrawFunc pair[2];
    struct PlanetDiverVec pos;
    struct PlanetDiverActor *user, *target;
    struct PlanetDiverParticle *p;
    s32 *clear;
    int frame, i, step;

    state->context = context;
    AnimStart(0);
    DecompressLZ(GetFile((int)_FILE_73), particleGfx);
    {
        void *file = GetFile((int)_FILE_7d);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x05000000, file, 0x80);
        DecompressLZ((u8 *)file + 0x80, state);
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)baseSlots[7];
    BuildDraw2DFuncEx(0x2f, 7, 7, 7, 2);
    pair[1] = (DrawFunc)baseSlots[8];
    state->blitMode = 2;
    state->blitParam = 75;
    StartTask(Task_BlitAnim, 0x480);

    clear = ewram_2010018;
    for (i = 0; i != 0x400; i++) {
        *clear = 0;
        clear += 7;
    }

    user = *_GetBattleActor(state->context->user);
    target = *_GetBattleActor((s16)state->context->targets[0]);
    step = user->x > 0 ? -0xf0000 : 0xf0000;

    for (frame = 0; frame != 0x58; frame++) {
        u8 *camera = *iwram_3001e80;
        InitMatrixStack();
        MatrixSetLook(camera, camera + 0xc);
        if (frame > 0x11 || frame == 0) {
            GetBattleActorPos3(state->context->user, &pos);
            pos.x /= 2;
        }
        if ((unsigned int)(frame - 2) <= 1)
            pair[0](render, state->graphics, pos.x - 16, pos.y - 64, 32, 64);
        if ((unsigned int)(frame - 4) <= 11) {
            for (i = 0; i != 16; i++) {
                int x = pos.x + ((frame * sin(i << 12)) >> 16);
                int y = pos.y + ((frame * cos(i << 12)) >> 16) - frame;
                pair[0](render, state->graphics + (((frame - 4) / 2) << 11),
                        x - 16, y - 64, 32, 64);
            }
        }
        if (frame == 4) {
            user->unk28 = 0x140000;
            user->unk34 = 0x10000;
            user->unk30 = 0x30000;
            user->unk48 = 0xab85;
            user->unk5A = 0;
            user->unk58 = 0;
            _Actor_TravelTo(user, user->x * 3, 0, user->z);
            _Actor_SetAnim(user, 2);
            state->unk77A8 = frame;
            _PlaySound(0x88);
        }
        if (frame == 0x10) {
            void *file = GetFile((int)_FILE_89);
            void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
            copy((void *)0x05000000, file, 0x80);
            DecompressLZ((u8 *)file + 0x80, state);
            user->unk48 = 0;
            user->unk24 = 0;
            user->unk28 = 0;
            user->z = target->z;
            _Actor_Stop(user);
        }
        if (frame > 0x11) {
            if (user->y > 0) {
                user->x += step;
                user->y -= 0x80000;
                if (state->context->side == 0) {
                    pair[0](render, state->graphics, pos.x - 20, pos.y - 52, 40, 64);
                    pos.x -= 8;
                } else {
                    pair[1](render, state->graphics, pos.x - 26, pos.y - 52, 40, 64);
                    pos.y += 8;
                }
            }
            if (user->y < 0) {
                user->y = 0;
                p = gBuffer;
                for (i = 0; i != 256; i++, p++) {
                    int speed = Random() & 0x3ff;
                    int angle = Random() & 0xffff;
                    p->x = pos.x << 16;
                    p->y = (pos.y - 24) << 16;
                    speed += 0x20;
                    p->vx = (speed * sin(angle)) >> 6;
                    p->vy = -(speed * cos(angle) * 2) >> 6;
                    p->life = (Random() & 7) + 0x20;
                }
                state->unk77A8 = 8;
                _Func_80bd7dc(0x91);
                _SetBattleActorKnockback((s16)state->context->targets[0], 4);
                SetBattleActorState((s16)state->context->targets[0], 7, 5, 0, 8);
            }
        }

        p = gBuffer;
        for (i = 0; i != 256; i++, p++) {
            int life = p->life;
            if (life > 0) {
                int vx = p->vx, vy = p->vy;
                int x, y;
                p->x = x = p->x + vx;
                y = p->y + vy;
                p->life = --life;
                p->y = y;
                p->vx = vx * 56 / 64;
                p->vy = vy * 56 / 64 + 0x2000;
                if (y > 0x700000) {
                    p->vy = -p->vy / 2;
                } else if ((unsigned int)x <= 0x7effff && y >= 0) {
                    int w = life / 8 + 1;
                    pair[i & 1](render, particleGfx + Data_ede48[w - 1],
                                (x >> 16) - w / 2, (y >> 16) - w, w, w * 2);
                }
            }
        }
        UpdateScreenShake(16, 16);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
