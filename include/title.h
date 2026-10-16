#ifndef _TITLE_H_
#define _TITLE_H_

#include "gba/types.h"
#include "gba/io.h"
#include "palette.h"

/* ===========================================================================
 * Title-screen and boot-logo vocabulary.
 *
 * The common home for the data structures and constants used by the five
 * routines owned by src/title.c and their parked reconstructions in
 * src/non_matching/title/:
 *
 *   Func_80f2028      per-frame scroll-logo OAM builder (a task)
 *   LoadGS1TitleGFX   title graphics/VRAM loader
 *   StartTitleScreen  sequence driver
 *   NintendoLogo      Nintendo boot-logo phase
 *   CamelotLogo       Camelot boot-logo phase
 *
 * The routines run in sequence and share one work block, the BG scroll shadow
 * and the same palette/map/character VRAM layout.  Naming those once here is
 * what lets the five be read as one sequence and keeps the cross-checked
 * constants from drifting apart; each routine's own tuning stays next to its
 * code.
 * ===========================================================================
 */

/* ---------------------------------------------------------------------------
 * Work block.
 *
 * StartTitleScreen allocates it once as gPtrs[TITLE_WORK_INDEX] and stores the
 * pointer at iwram_3001efc; every routine reaches it through gTitleWork.  The
 * block has a six-word live header and a phase-exclusive tail: while
 * StartTask(Func_80f2028) runs, the tail is Func_80f2028's OAM staging area;
 * once that task is stopped, StartTitleScreen reuses the very same bytes for
 * the five sprite entries the closing fade animates.  The two views overlap,
 * which is why they are a union -- the phases never run at the same time.
 * ---------------------------------------------------------------------------
 */

#define TITLE_WORK_INDEX   0x2b   /* gPtrs[] slot holding the work block */
#define TITLE_WORK_SIZE    0xe0   /* bytes requested from galloc_iwram */

/* The request is smaller than what Func_80f2028 actually touches: its OAM
 * staging runs from TITLE_OAM_OFFSET for TITLE_OAM_RECORD_COUNT 8-byte records,
 * i.e. up to byte 0x3d8, and the trailing DMA3 uploads all of it.  The block is
 * carved out early, while the IWRAM heap past it is still unused. */

/* Tail layout.  Func_80f2028 fills records 0 .. TITLE_OAM_RECORD_COUNT-1 and
 * then overwrites record TITLE_OAM_MASK_RECORD with its mask entry; the sprite
 * entries start TITLE_SPRITE_OFFSET bytes into the block. */
#define TITLE_OAM_OFFSET       0x18
#define TITLE_OAM_RECORD_COUNT 0x78
#define TITLE_OAM_MASK_RECORD  12
#define TITLE_SPRITE_OFFSET    0x80
#define TITLE_SPRITE_COUNT     5

/* One 12-byte sprite entry, the descriptor the title routines hand to
 * Func_8003dec (src/maps/title.c declares the same shape for the map-side
 * animator OvlFunc_879_2008238).  StartTitleScreen fills attr1 with
 * TITLE_SPRITE_ATTR1_DEFAULT and then patches byte 4 and the halfword at byte
 * 6 during the fade. */
typedef struct {
    u32 unk0;   /* +0x00 */
    u32 unk4;   /* +0x04 */
    u32 unk8;   /* +0x08 */
} TitleSprite;

#define TITLE_SPRITE_ATTR1_DEFAULT 0x40004000

typedef struct {
    u32 unk00;         /* +0x00 */
    u32 unk04;         /* +0x04 */
    u32 logoFrame;     /* +0x08  scroll-logo frame counter */
    int tick;          /* +0x0c  system tick (Func_80f2028 advances it) */
    u32 state;         /* +0x10  logo state, set by StartTitleScreen */
    u32 parallaxFrame; /* +0x14  advanced every fourth tick by Func_80f2028 */
    union {
        /* Func_80f2028: the per-frame OAM staging area (+0x18). */
        u32 oam[TITLE_OAM_RECORD_COUNT * 2];
        /* StartTitleScreen: the five fade sprite entries (sprites at +0x80). */
        struct {
            u8 pad[TITLE_SPRITE_OFFSET - TITLE_OAM_OFFSET];
            TitleSprite sprite[TITLE_SPRITE_COUNT];
        } anim;
    };
} TitleScreenWork;

/* The block pointer, named for the block rather than the raw RAM address. */
extern TitleScreenWork *gTitleWork __asm__("iwram_3001efc");

/* `mode` argument of Func_80f3078.
 * The argument is overloaded: the function branches on the range the value
 * falls in, so the constants below are grouped by that range.
 *
 *   mode <  PALMODE_INDIRECT   the value is a raw BGR555 colour and the plane
 *                              is flood-filled with it
 *   mode == PALMODE_INDIRECT   the value is the address of such a colour
 *   PALMODE_PLANE..PALMODE_WARM_ALT
 *                              colour opcode, one per post-processing effect
 *   mode >= PALMODE_PACKED     the low 15 bits are the colour and the
 *                              PALMODE_FLAG_* bits select the operation
 */
typedef enum {
    PALMODE_INDIRECT     = 0x00008000,    /* also the upper bound of a raw colour */
    PALMODE_PLANE        = 0x00010000,   /* straight BGR555 plane decomposition */
    PALMODE_GREYSCALE    = 0x00010001,   /* luminance / 7 in all three planes */
    PALMODE_SEPIA        = 0x00010002,
    PALMODE_WARM         = 0x00010003,   /* warm highlight wash */
    PALMODE_CONTRAST     = 0x00010004,   /* level clamp through curve 1 */
    PALMODE_HALFBLEND    = 0x00010005,   /* half-way to the plane average */
    PALMODE_DESATURATE   = 0x00010006,
    PALMODE_WARM_ALT     = 0x00010007,   /* separate copy of PALMODE_WARM */
    PALMODE_PACKED       = 0x00100000,  /* >= this: colour | PALMODE_FLAG_* */

    /* Operation bits packed into `mode` when it is >= PALMODE_PACKED. */
    PALMODE_FLAG_GAIN    = 0x00200000,  /* per-channel gain */
    PALMODE_FLAG_FADE    = 0x00400000,  /* fade towards the gain colour */
    PALMODE_FLAG_OVERLAY = 0x00800000,  /* brightness overlay */
} PaletteMode;

typedef enum {
    PALFADE_ALL = 0,
    PALFADE_BG = 1,
    PALFADE_OBJ = 2,
} TitlePalFadeType;

typedef struct {
    PaletteData startPal;
    PaletteBGRData currentBGR; // +0x0400
    PaletteBGRData targetBGR;  // +0x1000
    PaletteBGRData rampDelta;  // +0x1c00
    PaletteData paletteBuf[2]; // +0x2800, +0x2c00; palBG +0x000, palOBJ +0x200
    u8 paletteIdx;             // +0x3000
    signed char rampFrames;    // +0x3001, read with ldrsb; s8/char is unsigned here
    u8 rampPos;                // +0x3002
    u8 pad_3003;               // +0x3003
} TitlePaletteState;

extern unsigned char iwram_3001ed0[];

static inline TitlePaletteState* GetPaletteFadeState(void) {
	return *(TitlePaletteState**)&iwram_3001ed0;
}

/* ---------------------------------------------------------------------------
 * Scroll-logo timing (Func_80f2028 and StartTitleScreen).
 *
 * Func_80f2028 draws while the work block's logoFrame is below
 * TITLE_LOGO_FRAME_END and StartTitleScreen stops the task once the same
 * counter reaches it, so the two agree on when the logo is gone.
 * ---------------------------------------------------------------------------
 */
#define TITLE_LOGO_FRAME_END 0x118 /* 280 */

/* ---------------------------------------------------------------------------
 * BG scroll shadow.
 *
 * iwram_3001ad0 is the eight-halfword offset shadow that the VBlank handler
 * copies to REG_ADDR_BG0HOFS..BG3VOFS every frame (src/intr/intr.c).  The title
 * sequence scrolls BG1 vertically (Func_80f2028) and BG2 vertically
 * (StartTitleScreen).
 *
 * The game and the interrupt share the shadow, so a routine that reads a value
 * back right after storing it needs the volatile view, or the compiler will
 * discard the reload.  Most routines only write the shadow or hand its address
 * to DMA and use the plain view.
 * ---------------------------------------------------------------------------
 */
extern u16 iwram_3001ad0[];
extern volatile u16 iwram_3001ad0Volatile[] __asm__("iwram_3001ad0");

#define TITLE_BG1_VOFS          iwram_3001ad0[3] /* BG1VOFS shadow */
#define TITLE_BG2_VOFS          iwram_3001ad0[5] /* BG2VOFS shadow */
#define TITLE_BG1_VOFS_VOLATILE iwram_3001ad0Volatile[3]
#define TITLE_BG2_VOFS_VOLATILE iwram_3001ad0Volatile[5]
#define TITLE_SCROLL_SHADOW_LEN   16     /* bytes copied to REG_ADDR_BG0HOFS */
#define TITLE_SCROLL_SHADOW_PAIRS 4      /* u16 pairs every loader clears */

/* ---------------------------------------------------------------------------
 * Screen bring-up (LoadGS1TitleGFX, StartTitleScreen, NintendoLogo,
 * CamelotLogo).
 *
 * Each logo routine clears the screen, loads its palette/tilemap/tiles,
 * hands the display to LoadStaticUIGFX and then turns the sprite layer on.
 * The palettes and maps land at the same VRAM addresses every time; BG2CNT
 * differs only in the character base CamelotLogo uses.
 * ---------------------------------------------------------------------------
 */

#define TITLE_BG2CNT         0x681  /* priority 1, 256-colour, screenblock 6 */
#define TITLE_BG2CNT_CAMELOT 0x685  /* as above, but character base 1 */
#define TITLE_DISPCNT_LOAD   0x1440 /* BG2+OBJ on, 1D OAM, while loading */
#define TITLE_DISPCNT_RUN    0x1540 /* ... plus BG0 once the screen is live */

#define TITLE_PALETTE_DEST 0x05000000
#define TITLE_MAP_DEST     0x06003000
#define TITLE_CHR_DEST     0x06004000
#define TITLE_FRAME_DEST   0x06004100 /* CamelotLogo animation frame */

#define TITLE_MAP_TILE   0x100
#define TITLE_BLANK_TILE 0x1ff
#define TITLE_MAP_ROWS   20
#define TITLE_MAP_COLS   30
/* The ROM's tilemap loops test the last index, not the count; keep the `<=`
 * form so the comparison constant (0x13 / 0x1d) is emitted unchanged. */
#define TITLE_MAP_ROW_MAX (TITLE_MAP_ROWS - 1)
#define TITLE_MAP_COL_MAX (TITLE_MAP_COLS - 1)

/* A/Start advances or skips every logo wait loop. */
#define TITLE_SELECT_KEY (A_BUTTON | START_BUTTON)

/* ---------------------------------------------------------------------------
 * Title ROM data.
 * ---------------------------------------------------------------------------
 */

/* LoadGS1 sprite tiles and the fade blend table (ROM .Lf38bc, .Lf39b1). */
#define TITLE_FADE_TABLE_LEN 0x3c
extern u8 Lf38bc[] __asm__(".Lf38bc");
extern u8 Lf39b1[] __asm__(".Lf39b1");

/* ---------------------------------------------------------------------------
 * Shared RAM.
 * ---------------------------------------------------------------------------
 */
extern u8 gBuffer[];
extern vs32 gKeyPress;
extern u8 iwram_3001d18;  /* VBlank OAM-upload enable */
extern u8 iwram_3001d20;  /* scroll-logo pause flag */
extern u8 iwram_3001f58;  /* saved flag around StartTitleScreen */
extern u32 iwram_3001e40; /* engine frame counter */
extern u8 ewram_2012580[]; /* StartTitleScreen window A tiles */
extern u8 ewram_20199c0[]; /* StartTitleScreen window B tiles */
extern u8 ewram_2012940[]; /* LoadGS1TitleGFX tilemap source */
extern u8 ewram_201a140[]; /* LoadGS1TitleGFX character source */

#endif // _TITLE_H_
