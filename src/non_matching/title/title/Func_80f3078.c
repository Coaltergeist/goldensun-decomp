/* Func_80f3078 -- palette post-processing / tone mapping (ROM 0x080f3078).
 *
 * `mode` is overloaded: it is either a raw BGR555 colour, a PaletteMode
 * selector, or a packed colour carrying PALMODE_FLAG_* operation bits.  Source
 * (`color_t *src`) and destination (`u16 *dst`) walk the 0x200-entry BGR555
 * palette and the 3-word-per-colour BGR plane buffer directly (matching
 * Func_80f2ebc's channel pointer signature; callers pass `p->startPal.colors`
 * and `p->targetBGR.channels` / `p->currentBGR.channels`).
 *
 * Status: PARKED (99.1% byte match: exact 1692/1692 code bytes + 104 trailing
 * rodata bytes = 1796/1796 bytes, exact 6292/6292 TU .text bytes, exact
 * 110/110 TU relocations with zero offset diffs, exact 0x28 stack frame with
 * `count` at `[sp, #36]`, `dst` in `r8`, `src` in `sl`, `i` in `r9`, and
 * separate non-cross-jumped `DMA3_SET` transfers).
 *
 * Remaining 8-insn diff (out of 887 ASM lines):
 *   - 4 insns in `PALMODE_SEPIA` (+0x16c..+0x17a): `09.cse2` `make_regs_eqv`
 *     (`cse.c:1032-1036`) checks `REGNO_LAST_UID(g) > REGNO_LAST_UID(b)`; since
 *     the final use of `b` (`dst[i*3 + 0] = b`) precedes `g` (`dst[i*3 + 1] =
 *     g`) in `PALMODE_FLAG_GAIN`, `g` (`r6`) becomes canonical over `b` (`r5`)
 *     for `3 * c + 5`.
 *   - 4 stack-slot offsets in `PALMODE_FLAG_FADE` (+0x5a8/+0x5b6/+0x5d0/+0x60e):
 *     loop-hoisted `mr + mg` and `mb << 16` swap spill slots `[sp, #4]` and
 *     `[sp, #8]`.
 */

#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"
#include "math.h"
#include "palette.h"
#include "title.h"

extern u16 gBGRCurve1[] __asm__(".Lf39ee");
extern u16 gBGRCurve2[] __asm__(".Lf3a2e");
extern u16 gBGRCurve3[] __asm__(".Lf3a6e");

extern int divsi3_RAM(int, int);
extern int Func_80f3898(int arg0);
extern int Func_80f38ac(int arg0);

static inline int title_div(int a, int b)
{
    int (*fn)(int, int) = divsi3_RAM;
    return fn(a, b);
}

void Func_80f3078(unsigned int mode, color_t *src, u16 *dst, int type)
{
    int count = PALETTE_COUNT * 2;
    unsigned int i;
    u32 c;
    int r, g, b;

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
        {
            int n = count - 1;
            DMA3_SET(dst - 3, dst, 0x80000000 | ((u32)(n * 6) >> 1));
        }
    } else if (mode < PALMODE_PACKED) {
        switch (mode) {
        case PALMODE_GREYSCALE:
            for (i = 0; i < count; i++) {
                c = *src++;
                c = title_div(BGR555_LUMA(c), 7);

                dst[i * 3 + 0] = c;
                dst[i * 3 + 1] = c;
                dst[i * 3 + 2] = c;
            }
            break;
        case PALMODE_SEPIA:
            for (i = 0; i < count; i++) {
                c = *src++;

                r = BGR555_R(c);
                g = BGR555_G(c);
                b = BGR555_B(c);
                c = title_div(r + g + b, 10);
                r = 4 * c + 5;
                b = 3 * c + 5;
                g = 3 * c + 5;

                if (r < 8)
                    r = 8;
                if (g < 8)
                    g = 8;
                if (b < 8)
                    b = 8;
                if (r > 0x1c)
                    r = 0x1c;
                if (g > 0x1c)
                    g = 0x1c;
                if (b > 0x1c)
                    b = 0x1c;

                *dst++ = gBGRCurve2[b];
                *dst++ = gBGRCurve2[g];
                *dst++ = gBGRCurve2[r];
            }
            break;
        case PALMODE_WARM:
            for (i = 0; i < count; i++) {
                c = *src++;

                r = BGR555_R(c);
                g = BGR555_G(c);
                b = BGR555_B(c);

                r -= r / 2;
                g -= g / 3;
                r += 6;
                r = Func_80f3898(r);
                g += 4;
                g = Func_80f3898(g);
                b -= 6;
                b = Func_80f3898(b);

                dst[i * 3 + 0] = gBGRCurve3[b];
                dst[i * 3 + 1] = gBGRCurve2[g];
                dst[i * 3 + 2] = gBGRCurve1[r];
            }
            break;
        case PALMODE_CONTRAST:
            for (i = 0; i < count; i++) {
                c = *src++;

                g = BGR555_G(c);
                r = BGR555_R(c);
                b = BGR555_B(c);

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

                r = Func_80f3898(r);
                g += 2;
                g = Func_80f3898(g);
                b += 2;
                b = Func_80f3898(b);

                *dst++ = gBGRCurve1[b];
                *dst++ = gBGRCurve1[g];
                *dst++ = gBGRCurve1[r];
            }
            break;
        case PALMODE_HALFBLEND:
            for (i = 0; i < count; i++) {
                int avg;
                c = *src++;

                r = BGR555_R(c);
                g = BGR555_G(c);
                b = BGR555_B(c);
                avg = Func_80f3898((r + g + b) / 3);

                r = (r >> 1) + avg;
                g = (g >> 1) + avg;
                b = (b >> 1) + avg;

                r = Func_80f3898(r);
                g = Func_80f3898(g);
                b = Func_80f3898(b);

                dst[i * 3 + 0] = gBGRCurve3[b];
                dst[i * 3 + 1] = gBGRCurve3[g];
                dst[i * 3 + 2] = gBGRCurve3[r];
            }
            break;
        case PALMODE_DESATURATE:
            for (i = 0; i < count; i++) {
                c = *src++;

                r = BGR555_R(c);
                g = BGR555_G(c);
                b = BGR555_B(c);

                r += (g >> 3) + (b >> 3);
                r = Func_80f3898(r);
                g = g - g / 3;
                b = b - b / 3;

                dst[i * 3 + 0] = gBGRCurve1[b];
                dst[i * 3 + 1] = gBGRCurve1[g];
                dst[i * 3 + 2] = gBGRCurve2[r];
            }
            break;
        case PALMODE_WARM_ALT:
            for (i = 0; i < count; i++) {
                c = *src++;

                r = BGR555_R(c);
                g = BGR555_G(c);
                b = BGR555_B(c);

                r -= r / 2;
                g -= g / 3;
                r += 6;
                r = Func_80f3898(r);
                g += 4;
                g = Func_80f3898(g);
                b -= 6;
                b = Func_80f3898(b);

                dst[i * 3 + 0] = gBGRCurve3[b];
                dst[i * 3 + 1] = gBGRCurve2[g];
                dst[i * 3 + 2] = gBGRCurve1[r];
            }
            break;
        default:
            for (i = 0; i < count; i++) {
                c = *src++;

                dst[i * 3 + 0] = BGR555_PLANE_B(c);
                dst[i * 3 + 1] = BGR555_PLANE_G(c);
                dst[i * 3 + 2] = BGR555_PLANE_R(c);
            }
            break;
        }
    } else if (mode & PALMODE_FLAG_GAIN) {
        int mr = BGR555_R(mode);
        int mg = BGR555_G(mode);
        int mb = BGR555_B(mode);

        for (i = 0; i < count; i++) {
            c = *src++;
            c = title_div(BGR555_LUMA(c), 0x60);

            r = c * mr;
            g = c * mg;
            b = c * mb;

            r = Func_80f38ac(r);
            g = Func_80f38ac(g);
            b = Func_80f38ac(b);

            dst[i * 3 + 0] = b;
            dst[i * 3 + 1] = g;
            dst[i * 3 + 2] = r;
        }
    } else if (mode & PALMODE_FLAG_FADE) {
        int mr = BGR555_R(mode);
        int mg = BGR555_G(mode);
        int mb = BGR555_B(mode);

        for (i = 0; i < count; i++) {
            c = *src++;
            r = BGR555_R(c);
            g = BGR555_G(c);
            b = BGR555_B(c);
            c = title_div((r + g + b) << 4, mr + mg + mb);

            r = fx32_multiply((u32)(c * mr) >> 4 << 16, (mr << 16) >> 4);
            g = fx32_multiply((u32)(c * mg) >> 4 << 16, (mg << 16) >> 4);
            b = fx32_multiply((u32)(c * mb) >> 4 << 16, (mb << 16) >> 4);

            r = Func_80f3898((u32)r >> 16);
            g = Func_80f3898((u32)g >> 16);
            b = Func_80f3898((u32)b >> 16);

            *dst++ = gBGRCurve1[b];
            *dst++ = gBGRCurve1[g];
            *dst++ = gBGRCurve1[r];
        }
    } else if (mode & PALMODE_FLAG_OVERLAY) {
        for (i = 0; i < count; i++) {
            c = *src++;

            dst[i * 3 + 0] = BGR555_PLANE_B(c);
            dst[i * 3 + 1] = BGR555_PLANE_G(c);
            dst[i * 3 + 2] = BGR555_PLANE_R(c);
        }
    } else {
        PaletteBGR *pattern = &((PaletteBGRData *)mode)->palettes;

        if (type == PALFADE_OBJ)
            pattern++;

        DMA3_SET(pattern, dst, 0x84000000 | (((u32)count * 6) / 4));
    }
}
