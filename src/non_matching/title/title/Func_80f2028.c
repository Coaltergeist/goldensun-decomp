/* Func_80f2028 -- title screen OAM builder (per-frame task, ROM 0x080f2028).
 *
 * StartTitleScreen takes this function's address (`ldr r0, =Func_80f2028`), so
 * it runs once per frame while the title screen is up.  Everything it touches
 * is the work block reached through iwram_3001efc; its layout and the OAM
 * vocabulary live in include/title.h:
 *
 *     +0x00 unk00
 *     +0x04 unk04
 *     +0x08 logoFrame      while this is below TITLE_LOGO_FRAME_END the
 *                          scrolling logo is still drawn (this is the field
 *                          StartTitleScreen calls `frame`)
 *     +0x0c tick           advanced every frame the subtitle timer is idle
 *     +0x10 state
 *     +0x14 parallaxFrame  advanced every fourth tick
 *     +0x18 oam[]          up to TITLE_OAM_RECORD_COUNT 8-byte OAM records,
 *                          DMA3'd straight to OAM
 *
 * Each frame:
 *   - advance `tick` (and `parallaxFrame` every fourth tick) while
 *     iwram_3001d20 is 0;
 *   - derive the parallax `scroll` from the BG1 vertical scroll shadow
 *     (TITLE_BG1_VOFS) and the vertical origin `base` from `parallaxFrame`;
 *   - while the logo is still on screen (logoFrame < TITLE_LOGO_FRAME_END),
 *     rebuild its three sprite rows from one of the two source columns of
 *     sTitleSpriteTable, chosen by `tick & 1`.  A row's vertical position comes
 *     from the depth span (`base - scroll`) scaled by 80 and anchored at 0x68.
 *     The first and third rows are a 2x2 block of 16x16 sprites (32x32 for the
 *     third row) spaced 16 (32) pixels apart; the middle row is one 32x32
 *     sprite on even ticks and the same 2x2 block of 16x16 sprites on odd ticks;
 *   - stamp OAM_BLANK_WORD0 into every remaining record up to record
 *     TITLE_OAM_RECORD_COUNT - 1;
 *   - set the semi-transparent 256-colour blend, DMA3 the records to OAM, then
 *     append the mask entry after the logo records and re-upload the first 32
 *     bytes.
 *
 * WRAP255 is the ROM's idempotent 8-bit coordinate wrap: once per row's Y and
 * once for the mask scroll.
 *
 * ---------------------------------------------------------------------------
 * PARKED CLEAN RECONSTRUCTION -- not a byte match.
 *
 * The dataflow above was read straight off the ROM's disassembly and is
 * believed complete, but gcc 2.96 cannot emit the ROM's addressing.  For every
 * small constant OAM offset the ROM materialises the offset into a scratch
 * register immediately before the store:
 *
 *     9c: movs r1, #24
 *     9e: str  r3, [r6, r1]
 *
 * whereas gcc 2.96 folds a known constant offset into the store itself
 * (`str r3, [r6, #24]`) at every optimisation level, including -O0.  The
 * materialised form is unique to this function in the entire ROM: a scan of
 * all 385 expected objects finds it nowhere else, and more than two thousand
 * generated source shapes (constant/variable byte offsets, pointer locals,
 * bitfields, 64-bit index casts, static-inline setters, cross-block offset
 * assignment, ...) all fold.  No clean C source in this tree reproduces it, so
 * the production TU keeps INCLUDE_ASM("asm/title/Func_80f2028.s").
 */

#include "title.h"
#include "dma.h"
#include "gba/lcd.h"

/* ---------------------------------------------------------------------------
 * OAM vocabulary (Func_80f2028).
 *
 * One OAM entry is two 32-bit halves: word 0 is attr0 in bits 0-15 and attr1
 * in bits 16-31, and word 1 is attr2.
 *
 *   attr0  0-7 Y, 8 affine, 9 disable, 10-11 OBJ mode, 12 mosaic,
 *          13 colour depth, 14-15 shape
 *   attr1  0-8 X, 12-13 flip H/V, 14-15 size
 *   attr2  0-9 tile, 10-11 priority, 12-15 palette
 *
 * (GBATEK: LCD OBJ - OAM attributes.)
 * ---------------------------------------------------------------------------
 */

/* ------------------------------------------------------------------ OAM -----
 * Word 0 of an OAM object packs attr1 (X, flips, object size) into the high half
 * and attr0 (Y, object mode) into the low half, so the two attribute-encoder
 * calls combine in that order.  The ROM ($080f2028) reaches the same word per
 * sprite, e.g. X+4/Y at 16x16 is `(X+4)<<16 | 0x2400` and the horizontally
 * flipped sprite beside it `(X+0x14)<<16 | 0x50002400` (size | flipH).
 *
 * The square macros take (x, y, ...), as the OAM vocabulary does throughout.
 * The size argument is the LCD_OBJ_SIZE_Square* enum; MAKE_OAM_ATTR1_WITHOUT_
 * ROTSCAL shifts it into the size field itself, so it must not be pre-shifted.
 * The flip arguments are likewise unshifted 0/1 flags.
 *
 * The two square macros differ only in object mode: the scrolling logo is
 * semi-transparent (mode 1, blending with the scrolling background), the single
 * mask entry Func_80f2028 appends is an opaque 256-colour object.
 */
#define OAM_OBJECT_ATTR0(mode) MAKE_OAM_ATTR0_WITHOUT_ROTSCAL(0, 0, mode, 0, 1, LCD_OBJ_SHAPE_Square)

#define MAKE_LCD_SOLID_SQUARE(x, y, size) \
	MAKE_OAM_WORD0(MAKE_OAM_ATTR0_WITHOUT_ROTSCAL(y, 0, LCD_OBJ_MODE_Normal, 0, 1, LCD_OBJ_SHAPE_Square), \
	               MAKE_OAM_ATTR1_WITHOUT_ROTSCAL(x, 0, 0, size))
#define MAKE_LCD_SOLID_SQUARE_16x16(x, y) MAKE_LCD_SOLID_SQUARE(x, y, LCD_OBJ_SIZE_Square16x16)
#define MAKE_LCD_SOLID_SQUARE_64x64(x, y) MAKE_LCD_SOLID_SQUARE(x, y, LCD_OBJ_SIZE_Square64x64)

#define MAKE_LCD_BLEND_SQUARE(x, y, size, flipH, flipV) \
	MAKE_OAM_WORD0(OAM_OBJECT_ATTR0(LCD_OBJ_MODE_SemiTransparent), \
	               MAKE_OAM_ATTR1_WITHOUT_ROTSCAL(x, flipH, flipV, size))
#define MAKE_LCD_BLEND_SQUARE_16x16(x, y, flipH, flipV) MAKE_LCD_BLEND_SQUARE(x, y, LCD_OBJ_SIZE_Square16x16, flipH, flipV)
#define MAKE_LCD_BLEND_SQUARE_32x32(x, y, flipH, flipV) MAKE_LCD_BLEND_SQUARE(x, y, LCD_OBJ_SIZE_Square32x32, flipH, flipV)

#define OAM_FLIP_H 1
#define OAM_FLIP_V 1

/* attr2 tile numbers of the three logo rows, indexed by tick parity. */
#define OAM_TILE_NUMBER(n) MAKE_OAM_WORD1(MAKE_OAM_ATTR2(n, 0, 0), 0)
#define TILE_ROW1_EVEN OAM_TILE_NUMBER(0xe8)
#define TILE_ROW2_EVEN OAM_TILE_NUMBER(0x80)
#define TILE_ROW3_EVEN OAM_TILE_NUMBER(0xc0)
#define TILE_ROW1_ODD  OAM_TILE_NUMBER(0xe0)
#define TILE_ROW2_ODD  OAM_TILE_NUMBER(0xe0)
#define TILE_ROW3_ODD  OAM_TILE_NUMBER(0xa0)

  /* Anchor X of each logo row, for the two tick parities (ROM .Lf39ab). */
extern const u8 sTitleSpriteTable[3][2] __asm__(".Lf39ab");

/* ------------------------------------------------------------------ layout ---
 * Anchor/geometry of the three logo rows.  Only this routine needs them, so
 * they stay next to the code; the OAM attribute vocabulary is in title.h.
 */
#define TITLE_SPRITE_ORIGIN 0x68
#define TITLE_DEPTH_RANGE   80
#define TITLE_ROW_INSET     16
#define TITLE_ROW3_INSET    32

#define OAM_HALF_SPRITE 16   /* Y offset between the two sprites of a row */
#define OAM_ROW3_SPRITE 0x24 /* X offset between the two 32x32 sprites */
#define OAM_QUAD_OFFSET 0x20 /* Y offset between the two 32x32 sprites */

#define OAM_RECORD_LIMIT (TITLE_OAM_RECORD_COUNT - 1)
#define OAM_MASK_WORD    (TITLE_OAM_MASK_RECORD * 2)

#define OAM_BASE ((void *)LCD_OAM_ADDR)

#define WRAP255(v) \
    do { \
        while ((v) > 255) (v) -= 256; \
        while ((v) < 0) (v) += 256; \
    } while (0)

void Func_80f2028(void)
{
    TitleScreenWork *p = gTitleWork;
    int count = 0;
    int scroll;
    int base;
    int span;
    int m;  /* Y coordinate of the current entry */
    int x;  /* row anchor X; the un-inset value doubles as the depth source */
    int x2; /* (u8) Y coordinate of the row's second sprite */
    u32 byteCount;

    if (iwram_3001d20 == 0) {
        p->tick++;
        if ((p->tick & 3) == 0)
            p->parallaxFrame++;
    }

    scroll = 48 - TITLE_BG1_VOFS;
    base = 144 - p->parallaxFrame;

    if (p->logoFrame < TITLE_LOGO_FRAME_END) {
        if ((p->tick & 1) == 0) {
            /* Even tick. */
            span = base - scroll;

            x = sTitleSpriteTable[0][0];
            m = span * (x - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW_INSET;
            x -= TITLE_ROW_INSET;
            WRAP255(m);
            x2 = (u8)(m + OAM_HALF_SPRITE);
            p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, m, 0, 0);
            p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, m, OAM_FLIP_H, 0);
            p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, x2, 0, OAM_FLIP_V);
            p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, x2, OAM_FLIP_H, OAM_FLIP_V);
            p->oam[count * 2 + 1] = TILE_ROW1_EVEN;
            p->oam[count * 2 + 3] = TILE_ROW1_EVEN;
            p->oam[count * 2 + 5] = TILE_ROW1_EVEN;
            p->oam[count * 2 + 7] = TILE_ROW1_EVEN;

            x = sTitleSpriteTable[1][0];
            m = span * (x - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW_INSET;
            x -= TITLE_ROW_INSET;
            WRAP255(m);
            p->oam[count * 2 + 8] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, m, 0, 0);
            p->oam[count * 2 + 9] = TILE_ROW2_EVEN;

            count = 5;

            x = sTitleSpriteTable[2][0];
            m = span * (x - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW3_INSET;
            x -= TITLE_ROW3_INSET;
            WRAP255(m);
            x2 = (u8)(m + OAM_QUAD_OFFSET);
            p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, m, 0, 0);
            p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_32x32(x + OAM_ROW3_SPRITE, m, OAM_FLIP_H, 0);
            p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, x2, 0, OAM_FLIP_V);
            p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_32x32(x + OAM_ROW3_SPRITE, x2, OAM_FLIP_H, OAM_FLIP_V);
            p->oam[count * 2 + 1] = TILE_ROW3_EVEN;
            p->oam[count * 2 + 3] = TILE_ROW3_EVEN;
            p->oam[count * 2 + 5] = TILE_ROW3_EVEN;
            p->oam[count * 2 + 7] = TILE_ROW3_EVEN;
        } else {
            /* Odd tick. */
            span = base - scroll;

            x = sTitleSpriteTable[0][1];
            m = span * (x - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW_INSET;
            x -= TITLE_ROW_INSET;
            WRAP255(m);
            x2 = (u8)(m + OAM_HALF_SPRITE);
            p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, m, 0, 0);
            p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, m, OAM_FLIP_H, 0);
            p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, x2, 0, OAM_FLIP_V);
            p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, x2, OAM_FLIP_H, OAM_FLIP_V);
            p->oam[count * 2 + 1] = TILE_ROW1_ODD;
            p->oam[count * 2 + 3] = TILE_ROW1_ODD;
            p->oam[count * 2 + 5] = TILE_ROW1_ODD;
            p->oam[count * 2 + 7] = TILE_ROW1_ODD;

            x = sTitleSpriteTable[1][1];
            m = span * (x - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW_INSET;
            x -= TITLE_ROW_INSET;
            WRAP255(m);
            x2 = (u8)(m + OAM_HALF_SPRITE);
            p->oam[count * 2 + 8] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, m, 0, 0);
            p->oam[count * 2 + 10] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, m, OAM_FLIP_H, 0);
            p->oam[count * 2 + 12] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, x2, 0, OAM_FLIP_V);
            p->oam[count * 2 + 14] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, x2, OAM_FLIP_H, OAM_FLIP_V);
            p->oam[count * 2 + 9] = TILE_ROW2_ODD;
            p->oam[count * 2 + 11] = TILE_ROW2_ODD;
            p->oam[count * 2 + 13] = TILE_ROW2_ODD;
            p->oam[count * 2 + 15] = TILE_ROW2_ODD;

            count = 8;

            x = sTitleSpriteTable[2][1];
            m = span * (x - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW3_INSET;
            x -= TITLE_ROW3_INSET;
            WRAP255(m);
            x2 = (u8)(m + OAM_QUAD_OFFSET);
            p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, m, 0, 0);
            p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_32x32(x + OAM_ROW3_SPRITE, m, OAM_FLIP_H, 0);
            p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, x2, 0, OAM_FLIP_V);
            p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_32x32(x + OAM_ROW3_SPRITE, x2, OAM_FLIP_H, OAM_FLIP_V);
            p->oam[count * 2 + 1] = TILE_ROW3_ODD;
            p->oam[count * 2 + 3] = TILE_ROW3_ODD;
            p->oam[count * 2 + 5] = TILE_ROW3_ODD;
            p->oam[count * 2 + 7] = TILE_ROW3_ODD;
        }

        count += 4;
    }

    /* Word 0 stamped into every record the logo does not use: a 16x16
    * 256-colour object parked at Y=160, just below the 160-line screen. */
    if (count <= OAM_RECORD_LIMIT) {
        do {
            p->oam[count * 2] = MAKE_LCD_SOLID_SQUARE_16x16(0, 0xa0);
            count++;
        } while (count <= OAM_RECORD_LIMIT);
    }

    REG_BLDCNT = 0x3f50;
    REG_BLDALPHA = 0x0e0e;

    byteCount = count * 8;
    DMA3_COPY(p->oam, OAM_BASE, byteCount);

    m = 32 - TITLE_BG1_VOFS;
    WRAP255(m);
    /* The mask entry appended after the logo records: a 64x64 opaque 256-colour
     * object at X=92 whose Y follows the BG1 scroll (32 - BG1VOFS, wrapped). */
    p->oam[OAM_MASK_WORD] = MAKE_LCD_SOLID_SQUARE_64x64(0x5c, m);
    p->oam[OAM_MASK_WORD + 1] = MAKE_OAM_ATTR2(0, 2, 0);
    DMA3_COPY(&p->oam[OAM_MASK_WORD], (void *)(LCD_OAM_ADDR + byteCount), 8);
    DMA3_COPY(p->oam, OAM_BASE, 32);
}
