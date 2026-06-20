/* Standard LCG (multiplier 0x41c64e6d, increment 0x3039). The implicit
 * u16 truncation of (state >> 8) is what produces the lsl #8 / lsr #16
 * tail in the asm. */

#include "gba/types.h"
#include "math.h"

extern u32 gRNGState;

/* FF: u16 Random(void) */
u16 Random(void) {
    u32 newState = gRNGState * 0x41C64E6D + 12345;
    gRNGState = newState;
    return newState >> 8;
}

void vec3_translate(fx32 mag, u32 angle, vec3_t *vec) {
    fx32 n;
    fx32 *res = (fx32*)vec;
    n = sin(angle + 0x4000); // cos(angle)
    n = fx32_multiply(mag, n);
    *res++ += n;
    n = sin(angle);
    res++;
    n = fx32_multiply(mag, n);
    *res += n;
}
