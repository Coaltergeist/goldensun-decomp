/* Func_80f3078 -- palette post-processing / tone mapping (title screen).
 *
 * `mode` is overloaded: it is either a raw BGR555 colour, a PaletteMode
 * selector, or a packed colour carrying PALMODE_FLAG_* operation bits.  The
 * selectors themselves, and the range each one falls in, are declared as
 * PaletteMode in src/title.c.  Source and destination are walked as flat
 * arrays: the palette stores 0x200 BGR555 colours, the BGR buffer three plane
 * words per colour.  `type` is a TitlePalFadeType -- PALFADE_ALL processes the
 * whole 0x200-entry palette, PALFADE_BG only the BG half, PALFADE_OBJ the OBJ
 * half (which also starts 0x300 words into `target` and 0x100 words into
 * `source`).
 *
 * What this file adds on top of the selector list is how the non-obvious arms
 * compute their result:
 *
 *   mode < PALMODE_INDIRECT
 *                        paint the plane with one colour: expand the three
 *                        BGR555 fields, then have DMA3 replicate the first
 *                        pixel over the rest of it.
 *   PALMODE_INDIRECT     `mode` is the address of that three-halfword colour.
 *   PALMODE_PLANE..PALMODE_WARM_ALT
 *                        each entry's three plane words are rewritten from one
 *                        packed source halfword through the three 32-entry
 *                        gamma curves gBGRCurve1/.Lf39ee, gBGRCurve2/.Lf3a2e
 *                        and gBGRCurve3/.Lf3a6e; the per-mode arithmetic is on
 *                        each case below.
 *   PALMODE_FLAG_FADE    fade each plane towards the gain colour, weighted by
 *                        the entry's own brightness; see FADE_CH.
 *   otherwise            `mode` is the address of a three-halfword BGR pattern
 *                        which DMA3 copies over the destination.
 *
 * ---------------------------------------------------------------------------
 * CLEAN RECONSTRUCTION -- does not match
 * ---------------------------------------------------------------------------
 * The body below is a clean C reconstruction: no `register ... __asm__` pins,
 * no empty-asm barriers, no pin-but-never-assign tricks, no integer punning,
 * no per-call `{ }` scoping games.  It is NOT byte-compatible with the ROM.
 * Measured: 247/803 normalised-instruction agreement (30.8%), 750
 * instructions, literal pool 20/20, 1688-byte symbol, against reference
 * numbers of 803 instructions / 1796 bytes.  Per-arm instruction counts are
 * 35/64/53/63/53/52 for modes 0x10001..0x10006 against the ROM's
 * 37/76/55/71/55/53.  src/title.c currently includes this file in place of its
 * INCLUDE_ASM line, so the ROM it builds is not byte-identical to the
 * reference: the divergence starts at this function and shifts everything
 * after it.
 *
 * The residual gap is REGISTER ALLOCATION, not algorithm or source shape.  The
 * ROM keeps `target` in r8 and `type` in r2 with a 0x28 frame and `count` at
 * [sp,#36]; every clean source form tried keeps `target` in r4/r6/r7, `type`
 * in r4/r5 and `count` at [sp,#28]/[sp,#32] with a 0x20/0x24 frame.  Because
 * the callee-saved register that holds `target` differs, essentially every
 * instruction of every loop is renamed, which is why even a correct,
 * instruction-for-instruction reconstruction scores about 31%.  The longest
 * contiguous run of agreed instructions anywhere in the function is eight (the
 * prologue and epilogue runs); no run reaches ten.  Closing that gap requires
 * allocator-level control -- i.e. register pins -- which this file
 * deliberately does not use.
 *
 * Three details are written in the higher-scoring of the two honest forms
 * tried: the channel shifts are plain (`c >> 5`), the greyscale (`/ 7`) and
 * gain (`/ 0x60`) divides use the compiler's `__divsi3`, and every arm stores
 * through a running pointer.  All three compute exactly the same values as the
 * ROM's forms -- a valid BGR555 colour is never negative, and the ROM's
 * indirect `bl _call_via_rN` reaches the same divide routine -- so they change
 * only which instructions the compiler emits.
 * ---------------------------------------------------------------------------
 */

#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"
#include "palette.h"

extern const u16 gBGRCurve1[] __asm__(".Lf39ee");
extern const u16 gBGRCurve2[] __asm__(".Lf3a2e");
extern const u16 gBGRCurve3[] __asm__(".Lf3a6e");

extern int divsi3_RAM(int, int);
extern int Func_8000888(int, int);
extern int Func_80f3898(int arg0);
extern int Func_80f38ac(int arg0);

/* PaletteMode and TitlePalFadeType live in src/title.c; palette.h supplies the
 * buffer layouts (PaletteData / PaletteBGRData) and the BGR555_* / FIXED_MUL_4_12
 * macros.  The three macros below stay here: they name table lookups and the
 * local multiply pointer, so they are specific to this reconstruction rather
 * than reusable palette vocabulary. */

 /* Func_80f3898 saturates a channel into the 0..31 domain the curves below are
  * indexed by, so this is the "clamp and tone-map" lookup.  A channel that is
  * already in that domain is indexed directly: `gBGRCurve1[v]`. */
#define CURVE1(v) (gBGRCurve1[Func_80f3898(v)])
#define CURVE3(v) (gBGRCurve3[Func_80f3898(v)])

  /* One plane of the fade: the gain channel `m` (0..31) scaled by the entry's
   * brightness `q`, in 4.12 fixed point.  FIXED_MUL_4_12 takes the 16.16
   * multiply routine, so this one arm reaches it through a function pointer. */
#define FADE_CH(m, q) FIXED_MUL_4_12(fmul, (m) * (q), (m))

void Func_80f3078(unsigned int mode, PaletteData* source,
    PaletteBGRData* target, int type)
{
    typedef int (*DivFn)(int, int);
    typedef int (*MulFn)(int, int);

    DivFn div = divsi3_RAM;
    MulFn fmul = Func_8000888;
    /* Both buffers are walked as flat arrays of BGR555/plane words; the plane
     * form is three words per colour, hence the 6-byte entry stride below. */
    color_t* src = (color_t*)&source->colors;
    u16* dst = (u16*)&target->channels;
    int count = PALETTE_COUNT * 2;
    unsigned int i;

    if (mode == PALMODE_INDIRECT)
        mode = *src;

    if (type == PALFADE_BG) {
        count = PALETTE_COUNT;
    }
    else if (type == PALFADE_OBJ) {
        /* The object half: bgrOBJ of the BGR buffer, palOBJ of the palette. */
        dst += sizeof(PaletteBGR) / sizeof(u16);
        src += sizeof(palette_t) / sizeof(color_t);
        count = PALETTE_COUNT;
    }

    if (mode < PALMODE_INDIRECT) {
        /* Paint the plane with one colour: expand the three BGR555 fields,
         * then let DMA3 replicate the first pixel over the rest of it. */
        *dst++ = BGR555_PLANE_B(mode);
        *dst++ = BGR555_PLANE_G(mode);
        *dst++ = BGR555_PLANE_R(mode);
        DMA3_COPY16(dst - 3, dst, (count - 1) * 6);
    }
    else if (mode < PALMODE_PACKED) {
        /* Palette post-processing modes: each reads one packed BGR555
         * halfword from `src` per entry and writes that entry's three plane
         * words to `dst`. */
        switch (mode) {
        case PALMODE_GREYSCALE: {
            /* Grey: the luminance of the source colour in every plane. */
            u16* d = dst;

            for (i = 0; i < count; i++) {
                int c = *src++;
                int v = BGR555_LUMA(c) / 7;

                *d++ = v;
                *d++ = v;
                *d++ = v;
            }
            break;
        }
        case PALMODE_SEPIA:
            /* Sepia: the entry's brightness is quantised to 0..9 and each
             * plane is a linear ramp of it through curve 2.  Green and blue
             * use 3q+5, red the one-step-steeper 4q+5 -- that slope is what
             * warms the mid-tones -- and the shared +5 keeps the darkest tone
             * off curve index 0.  Red reaches the 0x1c ceiling first, so the
             * highlights come back to neutral. */
            for (i = 0; i < count; i++) {
                int c = *src++;
                int r = BGR555_R(c);
                int g = BGR555_G(c);
                int b = BGR555_B(c);
                int q = div(r + g + b, 10);
                int ir = 4 * q + 5;
                int ig = 3 * q + 5;
                int ib = 3 * q + 5;

                if (ir < 8)
                    ir = 8;
                if (ig < 8)
                    ig = 8;
                if (ib < 8)
                    ib = 8;
                if (ir > 0x1c)
                    ir = 0x1c;
                if (ig > 0x1c)
                    ig = 0x1c;
                if (ib > 0x1c)
                    ib = 0x1c;

                *dst++ = gBGRCurve2[ib];
                *dst++ = gBGRCurve2[ig];
                *dst++ = gBGRCurve2[ir];
            }
            break;
        case PALMODE_WARM:
            /* Warm highlight wash. */
            for (i = 0; i < count; i++) {
                int c = *src++;
                int r = BGR555_R(c);
                int g = BGR555_G(c);
                int b = BGR555_B(c);

                r = Func_80f3898(r - (r >> 1) + 6);
                g = Func_80f3898(g - g / 3 + 4);
                b = Func_80f3898(b - 6);

                *dst++ = gBGRCurve3[b];
                *dst++ = gBGRCurve2[g];
                *dst++ = gBGRCurve1[r];
            }
            break;
        case PALMODE_CONTRAST:
            for (i = 0; i < count; i++) {
                int c = *src++;
                int r = BGR555_R(c);
                int g = BGR555_G(c);
                int b = BGR555_B(c);

                if (r < 10)
                    r = 10;
                if (g < 16)
                    g = 16;
                if (b < 16)
                    b = 16;
                if (r > 0x1c)
                    r = 0x1c;
                if (g > 0x18)
                    g = 0x18;
                if (b > 0x1a)
                    b = 0x1a;

                *dst++ = CURVE1(b + 2);
                *dst++ = CURVE1(g + 2);
                *dst++ = CURVE1(r);
            }
            break;
        case PALMODE_HALFBLEND:
            /* Blend each plane halfway towards the entry's average. */
            for (i = 0; i < count; i++) {
                int c = *src++;
                int r = BGR555_R(c);
                int g = BGR555_G(c);
                int b = BGR555_B(c);
                int avg = Func_80f3898((r + g + b) / 3);

                *dst++ = CURVE3((b >> 1) + avg);
                *dst++ = CURVE3((g >> 1) + avg);
                *dst++ = CURVE3((r >> 1) + avg);
            }
            break;
        case PALMODE_DESATURATE:
            for (i = 0; i < count; i++) {
                int c = *src++;
                int r = BGR555_R(c);
                int g = BGR555_G(c);
                int b = BGR555_B(c);

                r = Func_80f3898(r + (g >> 3) + (b >> 3));
                g = g - g / 3;
                b = b - b / 3;

                *dst++ = gBGRCurve1[b];
                *dst++ = gBGRCurve1[g];
                *dst++ = gBGRCurve2[r];
            }
            break;
        case PALMODE_WARM_ALT:
            /* Same as PALMODE_WARM; the ROM keeps a separate copy. */
            for (i = 0; i < count; i++) {
                int c = *src++;
                int r = BGR555_R(c);
                int g = BGR555_G(c);
                int b = BGR555_B(c);

                r = Func_80f3898(r - (r >> 1) + 6);
                g = Func_80f3898(g - g / 3 + 4);
                b = Func_80f3898(b - 6);

                *dst++ = gBGRCurve3[b];
                *dst++ = gBGRCurve2[g];
                *dst++ = gBGRCurve1[r];
            }
            break;
        default: {
            /* PALMODE_PLANE (and anything else in this range): straight
             * BGR555 plane decomposition, no tone mapping. */
            u16* d = dst;

            for (i = 0; i < count; i++) {
                int c = *src++;

                d[0] = BGR555_PLANE_B(c);
                d[1] = BGR555_PLANE_G(c);
                d[2] = BGR555_PLANE_R(c);
                d += 3;
            }
            break;
        }
        }
    }
    else if (mode & PALMODE_FLAG_GAIN) {
        /* Scale the entry's packed colour by a per-channel gain. */
        int mr = BGR555_R(mode);
        int mg = BGR555_G(mode);
        int mb = BGR555_B(mode);

        for (i = 0; i < count; i++) {
            int c = *src++;
            int q = BGR555_LUMA(c) / 0x60;

            *dst++ = Func_80f38ac(mb * q);
            *dst++ = Func_80f38ac(mg * q);
            *dst++ = Func_80f38ac(mr * q);
        }
    }
    else if (mode & PALMODE_FLAG_FADE) {
        /* Fade each plane towards the gain colour, weighted by the entry's
         * own brightness relative to the gain's total. */
        int mr = BGR555_R(mode);
        int mg = BGR555_G(mode);
        int mb = BGR555_B(mode);

        for (i = 0; i < count; i++) {
            int c = *src++;
            int q = div((BGR555_R(c) + BGR555_G(c) + BGR555_B(c)) << 4, mr + mg + mb);
            int tr = FADE_CH(mr, q);
            int tg = FADE_CH(mg, q);
            int tb = FADE_CH(mb, q);

            *dst++ = CURVE1(tb);
            *dst++ = CURVE1(tg);
            *dst++ = CURVE1(tr);
        }
    }
    else if (mode & PALMODE_FLAG_OVERLAY) {
        /* Brightness overlay: identical to the plain decomposition. */
        u16* d = dst;

        for (i = 0; i < count; i++) {
            int c = *src++;

            d[0] = BGR555_PLANE_B(c);
            d[1] = BGR555_PLANE_G(c);
            d[2] = BGR555_PLANE_R(c);
            d += 3;
        }
    }
    else {
        /* `mode` is the address of a three-halfword BGR pattern to replicate. */
        PaletteBGR* pattern = &((PaletteBGRData*)mode)->palettes;

        if (type == PALFADE_OBJ)
            pattern++;

        DMA3_COPY(pattern, dst, count * 6);
    }
}
