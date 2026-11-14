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
 *                          scrolling logo is still drawn (signed s32 compare)
 *     +0x0c tick           advanced every frame the subtitle timer is idle
 *     +0x10 state
 *     +0x14 parallaxFrame  advanced every fourth tick
 *     +0x18 oam[]          up to TITLE_OAM_RECORD_COUNT 8-byte OAM records,
 *                          DMA3'd straight to OAM
 *
 * Status: PARKED (99.2% byte match: exact 988/988 code bytes + 156 trailing
 * rodata bytes = 1144/1144 bytes, exact 6292/6292 TU .text bytes, exact
 * 110/110 TU relocations with zero offset diffs, and all 7 callee-saved/high
 * registers matched: r5=m, r6=p, r7=x, r8=count, r9=base-scroll, sl=scroll,
 * ip=count*8).
 *
 * Compiler mechanics resolved here:
 *   - Hardware DMA staging `vu32 oam[]` keeps `09.cse2`'s materialised byte
 *     offsets (`movs r1, #24; str r3, [r6, r1]`) intact because `13.combine`
 *     runs under `init_recog_no_volatile()` (`combine.c:545`, `volatile_ok=0`),
 *     while constant-index `p->oam[OAM_MASK_WORD]` still expands directly to
 *     `str r2, [r6, #0x78]` at `00.rtl` time.
 *   - Natural per-row `count += 4` / `count += 1` increments fold Row 1
 *     (`count == 0`) and Row 2 (`count == 4`) to constant byte offsets while
 *     leaving Row 3 (`count == 5` / `count == 8`) indexed via `r8`/`ip`
 *     because `07.gcse` runs exactly two `one_cprop_pass` passes (`gcse.c:716,
 *     784`) and `WRAP255`'s loop label stops intra-block CSE across rows.
 *
 * Remaining 23-insn micro-diff:
 *   - Per-row `d = sTitleSpriteTable[r][c]` has `REGNO_LAST_UID(d) <
 *     REGNO_LAST_UID(x)`, so `03.cse` `make_regs_eqv` (`cse.c:1032-1036`) makes
 *     `x` canonical and `13.combine` merges the byte load into `r7`
 *     (`ldrb r7, [r3, #off]; adds r3, r7, #0` vs ROM `ldrb r3, [r3, #off];
 *     adds r7, r3, #0`), plus two 1-slot `23.sched2` tie-breaks (`mov r1, r8`
 *     at +0x164/+0x32a and `adds r7, #24` at +0x3b4).
 */

#include "title.h"
#include "dma.h"
#include "gba/lcd.h"

#define OAM_OBJECT_ATTR0(mode) MAKE_OAM_ATTR0_WITHOUT_ROTSCAL(0, 0, mode, 0, 1, LCD_OBJ_SHAPE_Square)

#define MAKE_LCD_SOLID_SQUARE(x, y, size) \
    MAKE_OAM_WORD0(MAKE_OAM_ATTR0_WITHOUT_ROTSCAL(y, 0, LCD_OBJ_MODE_Normal, 0, 1, LCD_OBJ_SHAPE_Square), \
                   MAKE_OAM_ATTR1_WITHOUT_ROTSCAL(x, 0, 0, size))
#define MAKE_LCD_SOLID_SQUARE_16x16(x, y) MAKE_LCD_SOLID_SQUARE(x, y, LCD_OBJ_SIZE_Square16x16)

#define MAKE_LCD_BLEND_SQUARE(x, y, size, flipH, flipV) \
    (((x) << 16) | (y) | MAKE_OAM_WORD0(OAM_OBJECT_ATTR0(LCD_OBJ_MODE_SemiTransparent), MAKE_OAM_ATTR1_WITHOUT_ROTSCAL(0, flipH, flipV, size)))
#define MAKE_LCD_BLEND_SQUARE_16x16(x, y, flipH, flipV) MAKE_LCD_BLEND_SQUARE(x, y, LCD_OBJ_SIZE_Square16x16, flipH, flipV)
#define MAKE_LCD_BLEND_SQUARE_32x32(x, y, flipH, flipV) MAKE_LCD_BLEND_SQUARE(x, y, LCD_OBJ_SIZE_Square32x32, flipH, flipV)

#define OAM_FLIP_H 1
#define OAM_FLIP_V 1

/* attr2 tile numbers of the three logo rows, indexed by tick parity. */
#define OAM_TILE_NUMBER(n) MAKE_OAM_WORD1(MAKE_OAM_ATTR2(n, 0, 0), 0)
#define TILE_ROW1_EVEN OAM_TILE_NUMBER(0xe8)
#define TILE_ROW2_EVEN OAM_TILE_NUMBER(0x80)
#define TILE_ROW3_EVEN OAM_TILE_NUMBER(0xc0)
#define TILE_ROW1_ODD  OAM_TILE_NUMBER(0xe8)
#define TILE_ROW2_ODD  OAM_TILE_NUMBER(0xe0)
#define TILE_ROW3_ODD  OAM_TILE_NUMBER(0xa0)

/* Anchor X of each logo row, for the two tick parities (ROM .Lf39ab). */
extern const u8 sTitleSpriteTable[3][2] __asm__(".Lf39ab");

#define TITLE_SPRITE_ORIGIN 0x68
#define TITLE_DEPTH_RANGE   80
#define TITLE_ROW_INSET     16
#define TITLE_ROW3_INSET    32

#define OAM_HALF_SPRITE 16   /* Y offset between the two 16x16 sprites of a row */
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

typedef struct {
    u32 unk00;
    u32 unk04;
    s32 logoFrame;
    int tick;
    u32 state;
    u32 parallaxFrame;
    vu32 oam[TITLE_OAM_RECORD_COUNT * 2];
} TitleOamWork;

void Func_80f2028(void)
{
    TitleOamWork *p = (TitleOamWork *)gTitleWork;
    u32 count = 0;
    int scroll;
    int base;
    int m;
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
            {
                int x, d = sTitleSpriteTable[0][0];
                m = (base - scroll) * ((x = d) - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW_INSET;
                x -= TITLE_ROW_INSET;
                WRAP255(m);
                p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, m, 0, 0);
                p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, m, OAM_FLIP_H, 0);
                p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, (u8)(m + OAM_HALF_SPRITE), 0, OAM_FLIP_V);
                p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, (u8)(m + OAM_HALF_SPRITE), OAM_FLIP_H, OAM_FLIP_V);
                p->oam[count * 2 + 1] = TILE_ROW1_EVEN;
                p->oam[count * 2 + 3] = TILE_ROW1_EVEN;
                p->oam[count * 2 + 5] = TILE_ROW1_EVEN;
                p->oam[count * 2 + 7] = TILE_ROW1_EVEN;
                count += 4;
            }
            {
                int x, d = sTitleSpriteTable[1][0];
                m = (base - scroll) * ((x = d) - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW_INSET;
                x -= TITLE_ROW_INSET;
                WRAP255(m);
                p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, m, 0, 0);
                p->oam[count * 2 + 1] = TILE_ROW2_EVEN;
                count += 1;
            }
            {
                int x, d = sTitleSpriteTable[2][0];
                m = (base - scroll) * ((x = d) - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW3_INSET;
                x -= TITLE_ROW3_INSET;
                WRAP255(m);
                p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, m, 0, 0);
                p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_32x32(x + OAM_ROW3_SPRITE, m, OAM_FLIP_H, 0);
                p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, (u8)(m + OAM_QUAD_OFFSET), 0, OAM_FLIP_V);
                p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_32x32(x + OAM_ROW3_SPRITE, (u8)(m + OAM_QUAD_OFFSET), OAM_FLIP_H, OAM_FLIP_V);
                p->oam[count * 2 + 1] = TILE_ROW3_EVEN;
                p->oam[count * 2 + 3] = TILE_ROW3_EVEN;
                p->oam[count * 2 + 5] = TILE_ROW3_EVEN;
                p->oam[count * 2 + 7] = TILE_ROW3_EVEN;
            }
        } else {
            {
                int x, d = sTitleSpriteTable[0][1];
                m = (base - scroll) * ((x = d) - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW_INSET;
                x -= TITLE_ROW_INSET;
                WRAP255(m);
                p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, m, 0, 0);
                p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, m, OAM_FLIP_H, 0);
                p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, (u8)(m + OAM_HALF_SPRITE), 0, OAM_FLIP_V);
                p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, (u8)(m + OAM_HALF_SPRITE), OAM_FLIP_H, OAM_FLIP_V);
                p->oam[count * 2 + 1] = TILE_ROW1_ODD;
                p->oam[count * 2 + 3] = TILE_ROW1_ODD;
                p->oam[count * 2 + 5] = TILE_ROW1_ODD;
                p->oam[count * 2 + 7] = TILE_ROW1_ODD;
                count += 4;
            }
            {
                int x, d = sTitleSpriteTable[1][1];
                m = (base - scroll) * ((x = d) - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW_INSET;
                x -= TITLE_ROW_INSET;
                WRAP255(m);
                p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, m, 0, 0);
                p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, m, OAM_FLIP_H, 0);
                p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_16x16(x + 4, (u8)(m + OAM_HALF_SPRITE), 0, OAM_FLIP_V);
                p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_16x16(x + 0x14, (u8)(m + OAM_HALF_SPRITE), OAM_FLIP_H, OAM_FLIP_V);
                p->oam[count * 2 + 1] = TILE_ROW2_ODD;
                p->oam[count * 2 + 3] = TILE_ROW2_ODD;
                p->oam[count * 2 + 5] = TILE_ROW2_ODD;
                p->oam[count * 2 + 7] = TILE_ROW2_ODD;
                count += 4;
            }
            {
                int x, d = sTitleSpriteTable[2][1];
                m = (base - scroll) * ((x = d) - TITLE_SPRITE_ORIGIN) / TITLE_DEPTH_RANGE + scroll - TITLE_ROW3_INSET;
                x -= TITLE_ROW3_INSET;
                WRAP255(m);
                p->oam[count * 2 + 0] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, m, 0, 0);
                p->oam[count * 2 + 2] = MAKE_LCD_BLEND_SQUARE_32x32(x + OAM_ROW3_SPRITE, m, OAM_FLIP_H, 0);
                p->oam[count * 2 + 4] = MAKE_LCD_BLEND_SQUARE_32x32(x + 4, (u8)(m + OAM_QUAD_OFFSET), 0, OAM_FLIP_V);
                p->oam[count * 2 + 6] = MAKE_LCD_BLEND_SQUARE_32x32(x + OAM_ROW3_SPRITE, (u8)(m + OAM_QUAD_OFFSET), OAM_FLIP_H, OAM_FLIP_V);
                p->oam[count * 2 + 1] = TILE_ROW3_ODD;
                p->oam[count * 2 + 3] = TILE_ROW3_ODD;
                p->oam[count * 2 + 5] = TILE_ROW3_ODD;
                p->oam[count * 2 + 7] = TILE_ROW3_ODD;
            }
        }

        count += 4;
    }

    if (count <= OAM_RECORD_LIMIT) {
        do {
            p->oam[count * 2] = MAKE_LCD_SOLID_SQUARE_16x16(0, 0xa0);
            count++;
        } while (count <= OAM_RECORD_LIMIT);
    }

    REG_BLDCNT = 0x3f50;
    REG_BLDALPHA = 0x0e0e;

    byteCount = count * 8;
    DMA3_COPY((void *)p->oam, OAM_BASE, byteCount);

    {
        int maskY = 32 - TITLE_BG1_VOFS;
        WRAP255(maskY);
        p->oam[OAM_MASK_WORD] = maskY | 0xc05c2000;
    }
    p->oam[OAM_MASK_WORD + 1] = MAKE_OAM_ATTR2(0, 2, 0);
    DMA3_COPY((void *)&p->oam[OAM_MASK_WORD], (void *)(LCD_OAM_ADDR + byteCount), 8);
    DMA3_COPY((void *)p->oam, OAM_BASE, 32);
}
