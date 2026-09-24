/* Gaia animation. Built with the per-TU strict-aliasing exception. */
#include "anim.h"
#include "sprite.h"
#include "task.h"

/* Historical ignored-return convention for generated drawing code. */
typedef int (*GaiaDraw)(u8 *, const u8 *, int, int, int, int);
struct GaiaParticle { s32 x, y, speed, phase, step, scale, delay; };
struct GaiaScale { s32 x, y; };
struct GaiaPosition { s32 x, y, z, extra; };
extern u8 *iwram_3001eec[];
/* Experimental caller declaration: table entries are treated as constant.
 * The allocator writes this table; this qualification is a TU-local hypothesis. */
extern void *const gPtrs[]; extern u8 gBuffer[];
extern u16 GaiaStripOffsets[] __asm__(".Leed7e");
extern u8 GaiaStripWidths[] __asm__(".Leed90");
extern u16 GaiaBaseOffsets[] __asm__(".Leed9a");
extern u8 GaiaBaseWidths[] __asm__(".Leeda0");
extern u8 GaiaBaseHeights[] __asm__(".Leeda3");
extern const signed char GaiaScroll[] __asm__(".Leeda6");
extern const u8 GaiaRockX[] __asm__(".Leedac");
extern const u16 Data_ede48[];
extern const struct GaiaScale Data_edab0;
extern char _FILE_7b[], _FILE_7c[], _FILE_73[];
extern void AnimStart(int);
extern void AnimEnd(void);
extern void LoadVFXFile(int, void *, int, int);
extern void *GetFile(int);
extern void *Func_8001af8(void *, const void *, unsigned int);
extern unsigned int Random(void);
extern struct Sprite *_CreateSprite(int);
extern void _Sprite_SetAnim(struct Sprite *, int);
extern void _DeleteSprite(struct Sprite *);
extern void _UpdateSprite(struct Sprite *, struct GaiaPosition *, struct GaiaScale *, int);
extern int BuildDraw2DFuncEx(int, int, int, int, int);
extern void Task_BlitAnim(void);
extern void _PlaySound(int);
extern void _Func_80bd7dc(int);
extern void SetBattleActorState(int, int, int, int, int);
extern void _SetBattleActorKnockback(int, int);
extern void UpdateScreenShake(int, int);
extern void Func_80cd52c(void);
extern void WaitFrames(int);
extern void gfree(int);
typedef char GaiaParticleSize[sizeof(struct GaiaParticle) == 0x1c ? 1 : -1];

struct GaiaState {
    /* 0000 */ u8 graphics[0x7198];

    /*
     * 7198..72E7
     *
     * Main particle processing uses [0..10].
     * The GaiaRockX initialization writes x for [6..11].
     */
    /* 7198 */ struct GaiaParticle particles[12];

    /* 72E8 */ u8 pad_72E8[0x7780 - 0x72E8];

    /* 7780 */ s32 blitMode;
    /* 7784 */ s32 blitParam;

    /* 7788 */ u8 pad_7788[0x77A8 - 0x7788];

    /* 77A8 */ s32 unk77A8;

    /* 77AC */ u8 pad_77AC[0x77D8 - 0x77AC];

    /* 77D8 */ struct Sprite *sprites[11];

    /* 7804 */ u8 pad_7804[0x7824 - 0x7804];

    /* 7824 */ s32 frameReady;
    /* 7828 */ struct AnimContext *context;
};

enum {
    GAIA_DRAW_SLOT = 0x2e,
    GAIA_MIRROR_SLOT = 0x2f
};

struct GaiaRendererPair {
    GaiaDraw draw, mirror;
};
/* The expanded column body is 48x96; its 48x21 cap starts directly below it.
 * Each bitmap is centered with a normal left half and a mirrored right half. */
static inline void GaiaDrawColumnBody(struct GaiaRendererPair pair, u8 *dst,
                                      const u8 *src, int center)
{
    pair.draw(dst, src, center - 48, 0, 48, 96);
    pair.mirror(dst, src, center, 0, 48, 96);
}

static inline void GaiaDrawColumnCap(struct GaiaRendererPair pair, u8 *dst,
                                     const u8 *src, int center)
{
    pair.draw(dst, src, center - 48, 96, 48, 21);
    pair.mirror(dst, src, center, 96, 48, 21);
}

/* GCC calls r10 "sl"; the ROM provides its bx-r10 veneer as _call_via_r10. */
__asm__(".set _call_via_sl, _call_via_r10");

/* ROM asset metadata has a const view during expansion. Drawing code
 * retains the unqualified view of the same tables used by the previous seed. Both views
 * only read; these aliases add no objects and do not change the ROM addresses.
 * This is a declaration hypothesis, not a recovered original header. */
extern const u8 GaiaAssetWidths[] __asm__(".Leeda0");
extern const u8 GaiaAssetHeights[] __asm__(".Leeda3");

void Anim_Gaia(struct AnimContext *context)
{
    u8 **baseSlots = iwram_3001eec;
    u8 **slots = baseSlots;
    struct GaiaState *state = (struct GaiaState *)*slots++;
    u8 *render = *slots++;
    struct GaiaRendererPair pair;
    void *rendererStorage;
    s32 *blitParam;
    u8 *particleGfx;
    u8 *source;
    int origin, spriteOffset, written, i, j, k, frame, size;
    struct GaiaParticle *p;
    struct GaiaScale scale;
    struct GaiaPosition pos;
    volatile u16 *paletteEntry;

    particleGfx = baseSlots[2];
    state->context = context;
    AnimStart(0);
    if (state->context->param == 0)
        (*(vu16 *)(0x4000000 + 0x20)) = 0xcc;
    else if (state->context->param == 1)
        (*(vu16 *)(0x4000000 + 0x20)) = 0xaa;
    if (state->context->side == 1) {
        origin = 8;
        if (state->context->param == 0)
            spriteOffset = 40;
        else if (state->context->param == 1)
            spriteOffset = 36;
        else
            spriteOffset = 40;
    } else {
        origin = -16;
        spriteOffset = -12;
    }
    (*(vu32 *)(0x4000000 + 0x28)) = GaiaScroll[state->context->param + state->context->side * 3] * 256;
    LoadVFXFile((int)_FILE_7b, gBuffer, 1, 0);
    {
        void *palette = GetFile((int)_FILE_7c);
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)((volatile u16 *)0x05000000), palette, 0x80);
    }
    paletteEntry = ((volatile u16 *)0x05000000) + 1;
    for (j = 0; j != 63; j++, paletteEntry++) {
        int color = *paletteEntry;
        int blue = (((u16)color >> 10) & 31);
        int green = (((u16)color >> 5) & 31);
        int red = (color & 31);
        blue -= 8;
        green -= 8;
        red -= 8;
        if (blue < 0)
            blue = 0;
        if (green < 0)
            green = 0;
        if (red < 0)
            red = 0;
        *paletteEntry = (blue << 10) | (green << 5) | red;
    }
    /* Expand the packed strips and base images into the animation workspace. */
    source = gBuffer;
    written = 0;
    for (i = 0; i != 9; i++) {
        for (j = 0; j != 32; j++) {
            k = 0;
            if (GaiaStripWidths[i] != 0) {
                size = GaiaStripWidths[i];
                do {
                    state->graphics[written++] = source[k++];
                } while (k != size);
            }
        }
        source += GaiaStripWidths[i];
    }
    for (i = 0; i != 32; i++) {
        for (j = 0; j != 3; j++) {
            for (k = 0; k != 48; k++, written++)
                state->graphics[written] = source[k];
        }
        source += 48;
    }
    for (j = 0; j != 0x3f0; j++)
        state->graphics[written++] = *source++;
    for (i = 0; i != 3; i++) {
        for (k = 0; k != GaiaAssetWidths[i] * GaiaAssetHeights[i]; k++)
            state->graphics[written++] = *source++;
    }
    LoadVFXFile((int)_FILE_73, particleGfx, 0, 0);
    for (j = 0; j != 11; j++) {
        struct Sprite *sprite = _CreateSprite(0x186);
        state->sprites[j] = sprite;
        if (sprite != 0) {
            sprite->flags = 0;
            _Sprite_SetAnim(sprite, j / 4);
            {
                struct Sprite *configured = state->sprites[j];
                ((signed char *)configured)[9] = (((signed char *)configured)[9] & ~12) | 4;
            }
        }
    }
    BuildDraw2DFuncEx(GAIA_DRAW_SLOT, 7, 7, 3, 2);
    rendererStorage = gPtrs;
    pair.draw = (GaiaDraw)((void *const *)rendererStorage)[GAIA_DRAW_SLOT];
    BuildDraw2DFuncEx(GAIA_MIRROR_SLOT, 7, 7, 7, 2);
    (*(vu16 *)0x04000050) = 0x3f46;
    (*(vu16 *)0x04000052) = 0x1010;
    rendererStorage = (void *const *)rendererStorage + GAIA_MIRROR_SLOT;
    state->blitMode = 2;
    blitParam = &state->blitParam;
    /* Resolve the advanced slot through the named const table view. */
    rendererStorage = gPtrs[(void *const *)rendererStorage - gPtrs];
    *blitParam = 75;
    pair.mirror = (GaiaDraw)rendererStorage;
    StartTask(Task_BlitAnim, 0x480);
    for (j = 0; j != 11; j++) {
        p = &state->particles[j];
        p->x = (Random() & 15) + 88;
        p->y = 128;
        p->speed = (Random() & 15) + 2;
        p->phase = j;
        p->step = 1;
        p->scale = 0x8000;
        p->delay = 44 - j * 4;
    }
    for (j = 0; j != 6; j++)
        state->particles[j + 6].x = GaiaRockX[j];
    p = (struct GaiaParticle *)gBuffer;
    for (j = 0; j != 256; j++, p++) {
        p->x = ((Random() & 63) + origin + 32) << 16;
        p->y = ((Random() & 7) + 96) << 16;
        p->step = ((Random() & 63) + 32) << 13;
        p->delay = Random() & 31;
    }
    (*(vu16 *)(0x4000000 + 0xc)) = 0x785;
    state->unk77A8 = 250;
    for (frame = 0; frame != 192; frame++) {
        if (frame == 0)
            _PlaySound(0xd4);
        if (frame == 40)
            _PlaySound(0x8d);
        if (frame == 96)
            _PlaySound(0x91);
        if (frame == 120)
            _Func_80bd7dc(0x86);
        if (frame <= 81) {
            int image = frame / 4;
            if (image > 2)
                image = (image & 1) + 1;
            pair.draw(render, state->graphics + GaiaBaseOffsets[image], origin + 64 - GaiaBaseWidths[image],
                 116 - GaiaBaseHeights[image], GaiaBaseWidths[image], GaiaBaseHeights[image]);
            pair.mirror(render, state->graphics + GaiaBaseOffsets[image], origin + 64,
                   116 - GaiaBaseHeights[image], GaiaBaseWidths[image], GaiaBaseHeights[image]);
        }
        if ((unsigned int)(frame - 12) <= 75) {
            int image = (frame - 64) / 3;
            int y;
            if (image < 0)
                image = 0;
            if (image > 7)
                image = 7;
            for (j = 0; j != 4; j++) {
                y = j * 32 - 12;
                pair.draw(render, state->graphics + GaiaStripOffsets[image],
                          origin + 64 - GaiaStripWidths[image], y, GaiaStripWidths[image], 32);
                pair.mirror(render, state->graphics + GaiaStripOffsets[image],
                            origin + 64, y, GaiaStripWidths[image], 32);
            }
        }
        if ((unsigned int)(frame - 160) <= 23) {
            int image = 7 - (frame - 160) / 3;
            int y;
            if (image < 0)
                image = 0;
            if (image > 7)
                image = 7;
            for (j = 0; j != 4; j++) {
                y = j * 32 - 12;
                pair.draw(render, state->graphics + GaiaStripOffsets[image],
                          origin + 64 - GaiaStripWidths[image], y, GaiaStripWidths[image], 32);
                pair.mirror(render, state->graphics + GaiaStripOffsets[image],
                            origin + 64, y, GaiaStripWidths[image], 32);
            }
        }
        /* The central column consists of two vertically adjacent mirrored pairs. */
        if ((unsigned int)(frame - 88) <= 71) {
            GaiaDrawColumnBody(pair, render, state->graphics + 0x13c0, origin + 64);
            GaiaDrawColumnCap(pair, render, state->graphics + 0x25c0, origin + 64);
        }
        if (frame > 87) {
            p = (struct GaiaParticle *)gBuffer;
            for (j = 0; j != 64; j++, p++) {
                if (p->delay == 0) {
                    int width = (j & 3) + 5;
                    pair.draw(render, particleGfx + Data_ede48[width - 1],
                         *(s16 *)((u8 *)&p->x + 2) - width / 2,
                         *(s16 *)((u8 *)&p->y + 2) - width, width, width * 2);
                    p->y -= p->step;
                    if (p->y < 0 && frame <= 159)
                        p->y = 96 * 65536;
                } else {
                    p->delay--;
                }
            }
        }
        if (frame > 4) {
            int count = frame <= 71 ? 6 : 11;
            for (k = 0; k != count; k++) {
                p = &state->particles[k];
                if (p->delay == 0) {
                    int spriteIndex;
                    scale = Data_edab0;
                    if (frame > 71) {
                        int baseScale;
                        struct AnimContext *owner;
                        baseScale = k * 0x1000;
                        baseScale += 0x8000;
                        owner = state->context;
                        scale.x = baseScale;
                        scale.x += owner->param * 0x4000;
                    } else {
                        scale.x = 0x8000;
                    }
                    scale.y = scale.x;
                    pos.extra = 0;
                    pos.x = (p->x + spriteOffset * 2) * 65536;
                    pos.y = 0x2000000 - p->y * 65536;
                    pos.z = 0x2000000;
                    spriteIndex = (frame / 2 + k) % 11;
                    if (spriteIndex != -1)
                        _UpdateSprite(state->sprites[spriteIndex], &pos, &scale, 0);
                    p->y -= p->speed;
                    p->phase += p->step;
                    if (p->phase > 12)
                        p->phase -= 12;
                    if (p->y < 0) {
                        if (frame > 159) {
                            p->delay = -1;
                        } else {
                            if (frame > 87) {
                                p->speed = (Random() & 7) + 8;
                                if (state->context->param == 0)
                                    p->x = Random() % 96 + 42;
                                else if (state->context->param == 1)
                                    p->x = Random() % 112 + 34;
                                else
                                    p->x = Random() % 160 + 10;
                            }
                            p->y = 128;
                            p->delay = 8;
                        }
                    }
                } else {
                    p->delay--;
                }
            }
        }
        if (frame <= 158) {
            for (j = 0; j != state->context->numTargets; j++) {
                if (frame > 85) {
                    if (frame % 12 == 0)
                        SetBattleActorState((s16)state->context->targets[j], 7, 5, j, 6);
                    if ((frame & 3) == 0)
                        _SetBattleActorKnockback((s16)state->context->targets[j], 5);
                }
            }
        }
        if ((unsigned int)(frame - 90) > 70)
            UpdateScreenShake(2, 2);
        else
            UpdateScreenShake(8, 8);
        Func_80cd52c();
        state->frameReady = 1;
        WaitFrames(1);
    }
    StopTask(Task_BlitAnim);
    gfree(GAIA_MIRROR_SLOT);
    gfree(GAIA_DRAW_SLOT);
    for (j = 0; j != 11; j++)
        _DeleteSprite(state->sprites[j]);
    AnimEnd();
}
