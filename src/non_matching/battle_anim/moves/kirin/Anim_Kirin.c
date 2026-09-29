#include "anim.h"

#include "sprite.h"

#include "task.h"

#include "math.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct KirinParticle { s32 x, y, z, dx, dy, dz, age; };

struct KirinScale { s32 x, y; };

struct KirinPosition { s32 x, y, z, extra; };

struct KirinState {
    u8 graphics[0x7080];
    struct KirinParticle particles[64];
    s32 blitMode, blitParam;
    u8 pad7788[0x77a8 - 0x7788];
    s32 shake;
    u8 pad77ac[0x77d8 - 0x77ac];
    struct Sprite *sprites[9];
    u8 pad77fc[0x7824 - 0x77fc];
    s32 frameReady;
    struct AnimContext *context;
};

extern u8 *iwram_3001ef0[];

extern void *gPtrs[];

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern vs32 gKeyRepeat;

extern u16 iwram_3001ad0[];

extern s32 gPhysVec[];

extern const struct KirinScale Data_edad8, Data_edae0;

extern const u16 Data_ede48[];

extern const u8 KirinX[] __asm__(".Leef56");

extern const u8 KirinY[] __asm__(".Leef5f");

extern char _FILE_73[], _FILE_95[];

extern char KirinBackgroundFile[] __asm__(".Lkirin_file_3a");

__asm__(".equ .Lkirin_file_3a, 0x3a");

extern void AnimStart(int);

extern void AnimEnd(void);

extern void Func_80c9048(void);

extern void Task_BlitAnim(void);

extern void AnimTransitionOut(int, int);

extern void _AnimTransitionIn(int, int, int);

extern void Func_80d6750(struct AnimContext *);

extern int Func_80d67dc(void);

extern void CreateSummonSprite(int, int, int);

extern void _UpdateSprite(struct Sprite *, struct KirinPosition *, struct KirinScale *, int);

extern void _DeleteSprite(struct Sprite *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern unsigned int Random(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void GetBattleActorPos3(int, s32 *);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

void Anim_Kirin(struct AnimContext *context)
{
    u8 **slots = iwram_3001ef0;
    u8 *render = slots[0];
    struct KirinState *state = (struct KirinState *)slots[-1];
    DrawFunc draw;
    u8 *particleGfx = slots[1];
    int bodyOffset, distance, savedScroll;
    s32 *settings;
    int speed, height;
    struct KirinPosition pos;
    s32 actorPos[3];
    u8 windOffsets[16];
    u8 hit[14];
    struct KirinPosition chargePos;
    struct KirinScale scale, chargeScale;
    struct KirinParticle *p;
    int i, j, frame;

    state->context = context;
    AnimStart(0);
    Func_80c9048();
    (*(vu16 *)0x0400000c) = 0x784;
    (*(vu16 *)0x05000000) = 0;
    (*(vu16 *)0x05000002) = 0;
    state->blitMode = 0;
    StartTask(Task_BlitAnim, 0x480);
    AnimTransitionOut(1, 0);
    CreateSummonSprite(9, 0x175, 1);
    gPhysVec[4] = 240;
    Func_80d6750(state->context);
    (*(vu16 *)0x04000048) = 0x2737;
    (*(vu16 *)0x04000040) = 0xca;
    WaitFrames(1);
    _AnimTransitionIn(1, (int)KirinBackgroundFile, 0);
    AnimTransitionOut(1, 1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_95, state, 1, 1);
    (*(vu16 *)0x04000000) = 0x7741;
    (*(vu16 *)0x04000020) = 0x80;
    (*(vu16 *)0x04000052) = 0x100e;
    (*(vu16 *)0x04000050) = 0x3f44;
    bodyOffset = 0;
    distance = 0;
    savedScroll = iwram_3001ad0[2];
    settings = (s32 *)slots[4];
    speed = 0;
    state->blitMode = 1;
    state->blitParam = 0;
    settings[4] = 1;
    for (i = 0; i != 64; i++) {
        p = &state->particles[i];
        p->x = (Random() & 31) + 16;
        p->y = ((Random() & 31) + 48) << 16;
        p->dy = ((Random() & 31) - 16) << 16;
        p->age = Random() % 48 + 2;
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 3);
    draw = (DrawFunc)gPtrs[0x2e];
    (*(vu16 *)0x0400000c) = 0x786;
    for (frame = 0; frame != 120; frame++) {
        height = 0;
        if (frame == 0) _PlaySound(0x88);
        if (frame == 26) _PlaySound(0x8d);
        if (frame == 40) _PlaySound(0x9a);
        if (frame == 72) _PlaySound(0x9a);
        if (frame == 104) _PlaySound(0x9a);
        if ((gKeyRepeat & 3) && frame > 16)
            break;
        if ((unsigned)(frame - 24) <= 31)
            speed++;
        if (speed > 24)
            speed = 24;
        if (frame <= 135) {
            iwram_3001ad0[2] -= speed;
            distance += speed;
        }
        if (frame <= 149) {
            int escape;
            scale = Data_edad8;
            escape = 0;
            if (frame > 103)
                escape = (frame - 104) * 16;
            if ((unsigned)(frame - 8) <= 23)
                bodyOffset += speed - 8;
            if (frame > 7) {
                int amplitude = 96;
                int angle;
                if (frame <= 104) amplitude = 32;
                angle = ((frame << 10) - 0x2000) & 0xffff;
                if (angle > 0x8000)
                    angle -= 0x8000;
                height = (sin(angle) * amplitude) >> 16;
                if ((frame & 31) == 8)
                    state->shake = 4;
            }
            pos.extra = 0;
            pos.y = 0xff0000;
            for (i = 0; i != 9; i++) {
                pos.x = ((bodyOffset + KirinX[i] - escape) << 16) + 0xe00000;
                pos.z = ((KirinY[i] - height) << 16) + 0x480000;
                _UpdateSprite(state->sprites[i], &pos, &scale, 0);
            }
        }
        if (frame <= 26) {
            int size = distance + 4;
            int count = frame * 8;
            if (size > 10)
                size = 10;
            if (count > 64)
                count = 64;
            for (i = 0; i != count; i++) {
                int x = ((sin(i << 10) * (distance * 2 + 8)) >> 16) + distance;
                int y;
                x += 96;
                y = (cos(i << 10) * (distance * 12 + 48)) >> 16;
                y += 64;
                draw(render, particleGfx + Data_ede48[size - 1],
                     x - size / 2, y - size, size, size * 2);
            }
        }
        if (frame == 24) {
            state->blitMode = 2;
            state->blitParam = 50;
        }
        if (frame == 28)
            (*(vu16 *)0x0400000c) = 0x784;
        if (frame > 17) {
            for (i = 0; i != 48; i++) {
                p = &state->particles[i];
                if (p->age == 0) {
                    int size = i % 3 + 1;
                    draw(render, particleGfx + Data_ede48[size - 1], p->x,
                         *(s16 *)((u8 *)&p->y + 2) - size, size, size * 2);
                    p->x += 2;
                    p->y += p->dy;
                    p->dy = p->dy * 48 / 64;
                } else {
                    p->age--;
                }
                if (p->x > 128 || p->age == 1) {
                    p->x = (Random() & 31) + bodyOffset + 172;
                    p->y = ((Random() & 31) - height + 56) << 16;
                    p->dy = ((Random() & 31) - 16) << 15;
                }
            }
        }
        if (frame > 31) {
            int offset = (frame - 32) / 2;
            if (offset > 40)
                offset = 40;
            for (i = 0; i != 6; i++)
                draw(render, state->graphics + (Random() & 3) * 0x600,
                     120 - offset, i * 18, 48, 32);
        }
        if (state->shake > 0) {
            state->shake--;
            iwram_3001ad0[3] = (Random() & 7) + 28;
        } else {
            iwram_3001ad0[3] = 32;
        }
        state->frameReady = 1;
        WaitFrames(1);
    }
    iwram_3001ad0[2] = savedScroll;
    settings[4] = 0;
    Func_80d67dc();
    (*(vu16 *)0x04000040) = 0xf0;
    for (i = 0; i != 9; i++)
        state->sprites[i]->oam.priority = 3;
    {
        int chargeX = 224;
        for (i = 0; i != 14; i++)
            hit[i] = 0;
        for (i = 0; i != 16; i++)
            windOffsets[i] = Random() & 31;
        for (i = 0; i != 320; i++)
            ewram_2010018[i * 7] = 0;
        state->blitMode = 2;
        state->blitParam = 75;
        (*(vu16 *)0x0400000c) = 0x784;
        (*(vu16 *)0x04000052) = 0x1010;
        for (frame = 0; frame != 96; frame++) {
            if (frame <= 23) {
                int bob;
                chargeScale = Data_edae0;
                chargeX -= 16;
                if (frame <= 8) {
                    int angle = (frame << 11) + 0x4000;
                    if (angle > 0x8000)
                        angle -= 0x8000;
                    bob = (sin(angle) << 6) >> 16;
                } else {
                    int angle = (frame << 11) + 0x4000;
                    if (angle > 0x8000)
                        angle -= 0x8000;
                    bob = (sin(angle) << 5) >> 16;
                }
                chargePos.extra = 0;
                chargePos.y = 0xff0000;
                for (i = 0; i != 9; i++) {
                    chargePos.x = (chargeX + KirinX[i]) << 16;
                    chargePos.z = ((KirinY[i] - bob) << 16) + 0x480000;
                    _UpdateSprite(state->sprites[i], &chargePos, &chargeScale, 0);
                }
            }
            if (frame == 8) {
                state->shake = 8;
                _PlaySound(0x91);
            }
            if (frame == 11) _PlaySound(0x91);
            if (frame == 46) _PlaySound(0x89);
            for (i = 0; i != state->context->numTargets; i++) {
                if (hit[i] == 0) {
                    GetBattleActorPos3((s16)state->context->targets[i], actorPos);
                    if (actorPos[0] > chargeX) {
                        struct KirinParticle *group;long offset=i*896;
                        hit[i]=1;group=(struct KirinParticle *)(gBuffer+offset);
                        for (j = 0; j != 32; j++) {
                            p = &group[j];
                            p->x = actorPos[0] << 15;
                            p->y = (actorPos[1] - 16) << 16;
                            p->dx = ((Random() & 255) - 128) << 10;
                            p->dy = ((Random() & 255) - 192) << 11;
                            p->x += p->dx * 4;
                            p->y += p->dy * 4;
                            p->age = (Random() & 15) + 8;
                        }
                        _SetBattleActorKnockback((s16)state->context->targets[i], 1);
                        _PlaySound(0x86);
                    }
                }
            }
            p = (struct KirinParticle *)gBuffer;
            for (i = 0; i != 192; i++, p++) {
                if (p->age > 0) {
                    int size = 3;
                    draw(render, particleGfx + Data_ede48[size - 1],
                         *(s16 *)((u8 *)&p->x + 2) - size / 2,
                         *(s16 *)((u8 *)&p->y + 2) - size, size, size * 2);
                    p->x += p->dx;
                    p->y += p->dy;
                    p->age--;
                }
            }
            if (frame == 48) _PlaySound(0x88);
            if (frame > 40) {
                int windX = (frame - 40) * 12;
                state->blitMode = 0;
                state->blitParam = 75;
                for (i = 0; i != 16; i++)
                    draw(render, state->graphics + (Random() & 3) * 0x600,
                         windOffsets[i] - windX + 120, i * 8 - 8, 48, 32);
            }
            if (frame > 64)
                state->blitMode = 2;
            if (frame == 58) {
                for (i = 0; i != state->context->numTargets; i++)
                    SetBattleActorState((s16)state->context->targets[i], 14, 5, -1, 0);
            }
            UpdateScreenShake(8, 8);
            Func_80cd52c();
            state->frameReady = 1;
            WaitFrames(1);
        }
    }
    _Func_80bd7dc(0x86);
    for (i = 0; i != 9; i++)
        _DeleteSprite(state->sprites[i]);
    StopTask(Task_BlitAnim);
    gfree(0x2e);
    AnimEnd();
}
