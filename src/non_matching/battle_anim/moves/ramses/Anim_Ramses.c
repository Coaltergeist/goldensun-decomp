#include "anim.h"

#include "sprite.h"

#include "task.h"

#include "math.h"

typedef int (*DrawFunc)(u8 *, const u8 *, int, int, int, int);

struct RamsesParticle { s32 x, y, z, dx, dy, dz, age; };

struct RamsesScale { s32 x, y; };

struct RamsesPosition { s32 x, y, z, extra; };

struct RamsesState {
    u8 graphics[0x7080];
    struct RamsesParticle particles[64];
    s32 blitMode, blitParam;
    u8 pad7788[0x77a8 - 0x7788];
    s32 shake;
    u8 pad77ac[8];
    s32 unk77b4, unk77b8;
    u8 pad77bc[0x77d8 - 0x77bc];
    struct Sprite *sprites[15];
    u8 pad7814[0x7824 - 0x7814];
    s32 frameReady;
    struct AnimContext *context;
};

extern u8 *iwram_3001ef0[];

extern void *gPtrs[];

extern u8 gBuffer[];

extern s32 ewram_2010018[];

extern vs32 gKeyRepeat;

extern const struct RamsesScale Data_edac8;

extern const u16 Data_ede48[];

extern const u8 RamsesX[] __asm__(".Leeed8");

extern const u8 RamsesY[] __asm__(".Leeee1");

extern const u16 RamsesOffsets[] __asm__(".Leeeea");

extern const u16 RamsesSizes[] __asm__(".Leeef8");

extern char _FILE_73[], _FILE_c0[];

extern char RamsesBackgroundFile[] __asm__(".Lramses_file_3c");

__asm__(".equ .Lramses_file_3c, 0x3c");

extern void AnimStart(int);

extern void AnimEnd(void);

extern void Func_80c9048(void);

extern void Task_BlitAnim(void);

extern void AnimTransitionOut(int, int);

extern void _AnimTransitionIn(int, int, int);

extern void Func_80d6750(struct AnimContext *);

extern void Func_80d67dc(void);

extern void CreateSummonSprite(int, int, int);

extern struct Sprite *_CreateSprite(int);

extern void _Sprite_SetAnim(struct Sprite *, int);

extern void _UpdateSprite(struct Sprite *, struct RamsesPosition *, struct RamsesScale *, int);

extern void _DeleteSprite(struct Sprite *);

extern int BuildDraw2DFuncEx(int, int, int, int, int);

extern void LoadVFXFile(int, void *, int, int);

extern unsigned int Random(void);

extern void _PlaySound(int);

extern void _Func_80bd7dc(int);

extern void Func_80e3908(struct RamsesParticle *, int, int);

extern void SetBattleActorState(int, int, int, int, int);

extern void _SetBattleActorKnockback(int, int);

extern void UpdateScreenShake(int, int);

extern void Func_80cd52c(void);

extern void WaitFrames(int);

extern void gfree(int);

__asm__(".include \"macros.inc\"\n"
        ".section .rodata\n"
        ".Leeed8:\n.incrom 0xeeed8, 0xeeee1\n"
        ".Leeee1:\n.incrom 0xeeee1, 0xeeeea\n"
        ".Leeeea:\n.incrom 0xeeeea, 0xeeef8\n"
        ".Leeef8:\n.incrom 0xeeef8, 0xeef06\n.text\n");

void Anim_Ramses(struct AnimContext *context)
{
    u8 **slots = iwram_3001ef0;
    u8 *render = slots[0];
    struct RamsesState *state = (struct RamsesState *)slots[-1];
    int frame;
    u8 *particleGfx = slots[1];
    struct RamsesPosition pos;
    DrawFunc pair[2];
    struct RamsesScale scale;
    struct RamsesParticle *p, *q;
    vec2_t body, fist;
    int i, j;

    state->context = context;
    AnimStart(0);
    Func_80c9048();
    (*(vu16 *)0x05000000) = 0;
    (*(vu16 *)0x05000002) = 0;
    state->blitMode = 0;
    StartTask(Task_BlitAnim, 0x480);
    AnimTransitionOut(1, 0);
    Func_80d6750(state->context);
    CreateSummonSprite(9, 0x17b, 2);
    for (i = 0; i != 6; i++) {
        struct Sprite *sprite = _CreateSprite(0x186);
        state->sprites[i + 9] = sprite;
        if (sprite != 0) {
            sprite->flags = 0;
            _Sprite_SetAnim(sprite, i % 3);
            state->sprites[i + 9]->oam.priority = 1;
        }
    }
    BuildDraw2DFuncEx(0x2e, 7, 7, 3, 2);
    pair[0] = (DrawFunc)gPtrs[0x2e];
    BuildDraw2DFuncEx(0x2f, 7, 7, 3, 3);
    pair[1] = (DrawFunc)gPtrs[0x2f];
    (*(vu16 *)0x04000048) = 0x2737;
    (*(vu16 *)0x04000040) = 0xf0;
    (*(vu16 *)0x04000046) = 0x1088;
    WaitFrames(1);
    _AnimTransitionIn(1, (int)RamsesBackgroundFile, 0);
    AnimTransitionOut(1, 1);
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    LoadVFXFile((int)_FILE_c0, state, 1, 1);
    (*(vu16 *)0x04000000) = 0x7741;
    (*(vu16 *)0x04000020) = 0x80;
    (*(vu16 *)0x04000052) = 0x1010;
    (*(vu16 *)0x04000050) = 0x3f44;
    state->blitMode = 2;
    state->blitParam = 50;
    body.x = 188 << 16;
    body.y = 92 << 16;
    fist.x = 160 << 16;
    fist.y = 92 << 16;
    for (i = 0; i != 6; i++) {
        p = &state->particles[i];
        p->x = (Random() & 127) << 16;
        p->y = -(i << 20);
        p->dx = 0;
        p->dy = 0;
        p->age = 0;
    }
    for (i = 0; i != 58; i++)
        state->particles[i + 6].age = 24;
    for (i = 0; i != 1024; i++)
        ewram_2010018[i * 7] = -1;
    state->unk77b4 = 24;
    state->unk77b8 = 0;
    for (frame = 0; frame != 320 && !(gKeyRepeat & 3); frame++) {
        if (frame == 94) _PlaySound(0x9c);
        if (frame == 136) _PlaySound(0x9c);
        if (frame == 178) _PlaySound(0x9c);
        if (frame == 260) _PlaySound(0x91);
        scale = Data_edac8;
        if ((unsigned)(frame - 96) <= 155)
            state->shake = 1;
        else if ((unsigned)(frame - 260) <= 3)
            state->shake = 1;
        pos.extra = 0;
        pos.y = 0;
        for (i = 0; i != 7; i++) {
            pos.x = (RamsesX[i] << 16) + body.x - 0x200000;
            pos.z = (RamsesY[i] << 16) + body.y - 0x200000;
            _UpdateSprite(state->sprites[i], &pos, &scale, 0);
        }
        if (frame <= 90) {
            fist.x = (sin(frame << 9) << 4) + (156 << 16);
            fist.y = (cos(frame << 9) << 4) + (92 << 16);
        }
        if (frame <= 196) {
            int start = 91;
            for (i = 0; i != 3; i++, start += 40) {
                if (frame >= start && frame < start + 4)
                    fist.y += 0x80000;
                if (frame == start + 3) {
                    for (j = 0; j != 4; j++) {
                        q = &state->particles[i * 8 + j + 6];
                        q->x = 0x400000;
                        q->y = 0x600000;
                        q->dx = ((Random() & 255) - 127) << 10;
                        q->dy = ((Random() & 255) - 127) << 10;
                        q->age = Random() & 15;
                    }
                }
                if (frame >= start + 20 && frame < start + 36)
                    fist.y -= 0x20000;
            }
        }
        if ((unsigned)(frame - 244) <= 7)
            fist.x -= 0x10000;
        if ((unsigned)(frame - 252) <= 23)
            fist.x -= (frame - 250) << 16;
        if (frame <= 259) {
            pos.y = -0x1000000;
            pos.z = fist.y - 0x1000000;
            pos.x = fist.x;
            _UpdateSprite(state->sprites[7], &pos, &scale, 0);
            pos.x = fist.x + 0x200000;
            _UpdateSprite(state->sprites[8], &pos, &scale, 0);
        }
        pos.y = 0;
        for (i = 0; i != 6; i++) {
            p = &state->particles[i];
            if (p->age != 2) {
                pos.x = p->x;
                pos.z = p->y;
                _UpdateSprite(state->sprites[i + 9], &pos, &scale, 0);
                p->x += p->dx;
                p->y += p->dy;
                if (frame > 96)
                    p->dy += 0x4000;
                if (p->y > 0x780000) {
                    p->age++;
                    if (p->age == 1) {
                        p->dy = -p->dy / 2;
                        for (j = 0; j != 2; j++) {
                            q = &state->particles[i * 2 + j + 30];
                            q->x = p->x / 2;
                            q->y = p->y - 0x200000;
                            q->dx = ((Random() & 255) - 127) << 10;
                            q->dy = ((Random() & 255) - 127) << 10;
                            q->age = Random() & 15;
                        }
                    } else if (frame <= 199) {
                        p->y = 0;
                        p->dy = 0;
                        p->age = 0;
                    }
                }
            }
        }
        for (i = 0; i != 56; i++) {
            p = &state->particles[i + 6];
            if (p->age >= 0) {
                if ((unsigned)p->age <= 23) {
                    int image = p->age / 6 + 3;
                    pair[0](render, state->graphics + RamsesOffsets[image],
                        *(s16 *)((u8 *)&p->x + 2) - RamsesSizes[image] / 2,
                        *(s16 *)((u8 *)&p->y + 2) - RamsesSizes[image] / 2, RamsesSizes[image], RamsesSizes[image]);
                }
                Func_80e3908(p, 60, -0x4000);
                p->age++;
            }
        }
        if (frame == 260) {
            for (i = 0; i != state->context->numTargets; i++) {
                _SetBattleActorKnockback((s16)state->context->targets[i], 4);
                SetBattleActorState((s16)state->context->targets[i], 7, -1, i, 8);
            }
            state->shake = 8;
        }
        if (frame == 260) {
            p = (struct RamsesParticle *)gBuffer;
            for (i = 0; i != 512; i++, p++) {
                int speed = (Random() & 1023) + 32;
                int angle = Random() & 65535;
                p->x = 0x200000;
                p->y = 0x5c0000;
                p->dx = (sin(angle) * speed) >> 7;
                p->dy = -((cos(angle) * speed) << 1) >> 7;
                p->age = (Random() & 15) + 32;
            }
        }
        p = (struct RamsesParticle *)gBuffer;
        for (i = 0; i != 512; i++, p++) {
            if (p->age >= 0) {
                int size = (p->age >> 3) + 1;
                const u8 *image = particleGfx + Data_ede48[size - 1];
                int x = *(s16 *)((u8 *)&p->x + 2) - size / 2;
                int y = *(s16 *)((u8 *)&p->y + 2) - size;
                pair[i & 1](render, image, x, y, size, size * 2);
                Func_80e3908(p, 62, 0x1000);
                p->age--;
            }
        }
        UpdateScreenShake(8, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    _Func_80bd7dc(0x86);
    Func_80d67dc();
    for (i = 0; i != 15; i++)
        _DeleteSprite(state->sprites[i]);
    StopTask(Task_BlitAnim);
    gfree(0x2f);
    gfree(0x2e);
    AnimEnd();
}
