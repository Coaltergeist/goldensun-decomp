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

#endif //_PALETTE_H_
