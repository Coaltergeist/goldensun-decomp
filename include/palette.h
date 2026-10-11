#ifndef _PALETTE_H_
#define _PALETTE_H_

#include "gba/types.h"

typedef u16 color_t; // BGR555
typedef color_t palette256_t[256];
typedef color_t palette16x16_t[16][16];
typedef union {
	palette256_t palette256;
	palette16x16_t palette16x16;
} palette_t;

#define PALETTE_BG *(palette256_t*)0x05000000
#define PALETTE_OBJ *(palette256_t*)0x05000200
#define PALETTE_SIZE 0x200
#define PALETTE_COUNT (PALETTE_SIZE / sizeof(color_t))

#define SET_PALETTE(id, value) \
do { \
    u32 _value = value; \
    *((vu16*)(0x05000000) + id) = _value; \
} while (0)


typedef union {
	color_t colors[PALETTE_COUNT * 2]; // BGR555 in u16
	palette_t palettes[2];
	struct {
		palette_t palBG;
		palette_t palOBJ;
	};
} PaletteData;

typedef u16 BGR[3]; // aligns(2)
typedef struct {
	BGR bgr[PALETTE_COUNT];
} PaletteBGR;

typedef union {
	u16 channels[PALETTE_COUNT * 2 * 3];
	BGR colors[PALETTE_COUNT * 2];
	PaletteBGR palettes[2];
	struct {
		PaletteBGR bgrBG;
		PaletteBGR bgrOBJ;
	};
} PaletteBGRData;

/* ---------------------------------------------------------------------------
 * The palette stores one colour as three 16-bit "plane" words, each the 5-bit
 * field of one channel shifted into bits 14..10.  The packed source colour is
 * BGR555, whose fields sit in bits 4..0 (red), 9..5 (green) and 14..10 (blue).
 * The two layouts are not symmetric: the packed fields are adjacent, so each
 * extraction shifts, while the plane fields are not, so the high ones also
 * mask.
 * ---------------------------------------------------------------------------
 */
 /* Extract one 5-bit field of a packed BGR555 colour.  These are pure named
  * wrappers; the shift is written plain because a valid BGR555 colour is never
  * negative, so `c >> 5` and `(unsigned)c >> 5` agree. */
#define BGR555_R(c) (((c) & 0x1f))
#define BGR555_G(c) (((c) >> 5) & 0x1f)
#define BGR555_B(c) (((c) >> 10) & 0x1f)
  /* Pack one 5-bit field of a packed BGR555 colour into a palette plane word. */
#define BGR555_PLANE_R(c) (((c) & 0x1f) << 10)
#define BGR555_PLANE_G(c) (((c) & 0x3e0) << 5)
#define BGR555_PLANE_B(c) ((c) & 0x7c00)

/* 2:4:1 luminance-weighted sum of the three fields, in plane-word units (i.e.
 * scaled by 1024).  Greyscale divides it by 7, the gain mode by 0x60. */
#define BGR555_LUMA(c) ((((c) << 11) & 0xf800) + (((c) << 7) & 0x1f000) \
                        + ((c) & 0x7c00))

/* The inverse: pull one field back out of a palette plane word.  `p` must
 * already be a plane word (only bits 14..10 set), so the widening shift cannot
 * overflow; the masks then keep exactly the field the packed colour wants. */
#define BGR555_FROM_PLANE_R(p) ((((p) << 16) >> 26) & 0x1f)
#define BGR555_FROM_PLANE_G(p) ((((p) << 16) >> 21) & 0x3e0)
#define BGR555_FROM_PLANE_B(p) ((p) & 0x7c00)

/* Reassemble the packed BGR555 colour from its three plane words, in the
 * B, G, R order the plane buffer stores them. */
#define BGR555_FROM_PLANES(b, g, r) \
    (BGR555_FROM_PLANE_B(b) | BGR555_FROM_PLANE_G(g) | BGR555_FROM_PLANE_R(r))

/* Multiply by a 5-bit weight in 4.12 fixed point, i.e. v * m / 16.  `f` is the
  * 16.16 multiply routine to use (Func_8000888 on the title screen). */
#define FIXED_MUL_4_12(f, v, m) \
    ((int)((u32)(f)((u32)(v) >> 4 << 16, ((m) << 16) >> 4) >> 16))
#endif //_PALETTE_H_
