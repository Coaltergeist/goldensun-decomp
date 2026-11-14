/* Func_80f3078 -- palette post-processing / tone mapping (title screen).
 *
 * `mode` is overloaded: it is either a raw BGR555 colour, a PaletteMode
 * selector, or a packed colour carrying PALMODE_FLAG_* operation bits.  The
 * selectors themselves, and the range each one falls in, are declared as
 * PaletteMode in src/title/title.c.  Source and destination are walked as flat
 * arrays: the palette stores 0x200 BGR555 colours, the BGR buffer three plane
 * words per colour.  `type` is a TitlePalFadeType -- PALFADE_ALL processes the
 * whole 0x200-entry palette, PALFADE_BG only the BG half, PALFADE_OBJ the OBJ
 * half (which also starts 0x300 words into `target` and 0x100 words into
 * `source`).
 *
 * Status: PARKED (not byte-exact). Exact 181/181 TU relocations (uses scoped
 * `divsi3_RAM` indirect calls in the four dividing arms, `fx32_multiply` inline
 * fastcall for `Func_8000888` in `PALMODE_FLAG_FADE`, and unsigned `u32 c`
 * channel extraction for `lsrs`). Remaining gap is camelot-gcc register
 * allocation and frame layout: the ROM places `dst` in `r8` with a 0x28 stack
 * frame (`count` at `[sp, #36]`) and omits tail-merging the two DMA3 transfers,
 * whereas camelot-gcc allocates `dst` into a low callee-saved register (`r7`)
 * with a 0x20/0x24 frame and cross-jumps the DMA3 epilogues.
 */

#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"
#include "math.h"
#include "palette.h"
#include "title.h"

extern const u16 gBGRCurve1[] __asm__(".Lf39ee");
extern const u16 gBGRCurve2[] __asm__(".Lf3a2e");
extern const u16 gBGRCurve3[] __asm__(".Lf3a6e");

extern int divsi3_RAM(int, int);
extern int Func_80f3898(int arg0);
extern int Func_80f38ac(int arg0);

#define CURVE1(v) (gBGRCurve1[Func_80f3898(v)])
#define CURVE3(v) (gBGRCurve3[Func_80f3898(v)])

#define FADE_CH(m, q) FIXED_MUL_4_12(fx32_multiply, (m) * (q), (m))

void Func_80f3078(unsigned int mode, PaletteData *source,
                  PaletteBGRData *target, int type)
{
    typedef int (*DivFn)(int, int);

    color_t *src = (color_t *)&source->colors;
    u16 *dst = (u16 *)&target->channels;
    int count = PALETTE_COUNT * 2;
    unsigned int i;

    if (mode == PALMODE_INDIRECT)
        mode = *src;

    if (type == PALFADE_BG) {
        count = PALETTE_COUNT;
    } else if (type == PALFADE_OBJ) {
        dst += sizeof(PaletteBGR) / sizeof(u16);
        src += sizeof(palette_t) / sizeof(color_t);
        count = PALETTE_COUNT;
    }

    if (mode < PALMODE_INDIRECT) {
        *dst++ = BGR555_PLANE_B(mode);
        *dst++ = BGR555_PLANE_G(mode);
        *dst++ = BGR555_PLANE_R(mode);
        DMA3_COPY16(dst - 3, dst, (count - 1) * 6);
    } else if (mode < PALMODE_PACKED) {
        switch (mode) {
        case PALMODE_GREYSCALE: {
            DivFn div = divsi3_RAM;
            u16 *d = dst;

            for (i = 0; i < count; i++) {
                u32 c = *src++;
                int v = div(BGR555_LUMA(c), 7);

                *d++ = v;
                *d++ = v;
                *d++ = v;
            }
            break;
        }
        case PALMODE_SEPIA: {
            DivFn div = divsi3_RAM;

            for (i = 0; i < count; i++) {
                u32 c = *src++;
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
        }
        case PALMODE_WARM:
            for (i = 0; i < count; i++) {
                u32 c = *src++;
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
                u32 c = *src++;
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
            for (i = 0; i < count; i++) {
                u32 c = *src++;
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
                u32 c = *src++;
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
            for (i = 0; i < count; i++) {
                u32 c = *src++;
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
            u16 *d = dst;

            for (i = 0; i < count; i++) {
                u32 c = *src++;

                d[0] = BGR555_PLANE_B(c);
                d[1] = BGR555_PLANE_G(c);
                d[2] = BGR555_PLANE_R(c);
                d += 3;
            }
            break;
        }
        }
    } else if (mode & PALMODE_FLAG_GAIN) {
        DivFn div = divsi3_RAM;
        int mr = BGR555_R(mode);
        int mg = BGR555_G(mode);
        int mb = BGR555_B(mode);

        for (i = 0; i < count; i++) {
            u32 c = *src++;
            int q = div(BGR555_LUMA(c), 0x60);

            *dst++ = Func_80f38ac(mb * q);
            *dst++ = Func_80f38ac(mg * q);
            *dst++ = Func_80f38ac(mr * q);
        }
    } else if (mode & PALMODE_FLAG_FADE) {
        DivFn div = divsi3_RAM;
        int mr = BGR555_R(mode);
        int mg = BGR555_G(mode);
        int mb = BGR555_B(mode);

        for (i = 0; i < count; i++) {
            u32 c = *src++;
            int q = div((BGR555_R(c) + BGR555_G(c) + BGR555_B(c)) << 4,
                        mr + mg + mb);
            int tr = FADE_CH(mr, q);
            int tg = FADE_CH(mg, q);
            int tb = FADE_CH(mb, q);

            *dst++ = CURVE1(tb);
            *dst++ = CURVE1(tg);
            *dst++ = CURVE1(tr);
        }
    } else if (mode & PALMODE_FLAG_OVERLAY) {
        u16 *d = dst;

        for (i = 0; i < count; i++) {
            u32 c = *src++;

            d[0] = BGR555_PLANE_B(c);
            d[1] = BGR555_PLANE_G(c);
            d[2] = BGR555_PLANE_R(c);
            d += 3;
        }
    } else {
        PaletteBGR *pattern = &((PaletteBGRData *)mode)->palettes;

        if (type == PALFADE_OBJ)
            pattern++;

        DMA3_COPY(pattern, dst, count * 6);
    }
}
