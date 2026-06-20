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

extern const u16 sAtanTable[257];

u16 atan2(s32 y, s32 x) {
    const u16 *ptr;
    s32 cur;
    s32 result;
    s32 wx, wy;
    s32 ratio;

    if (y != 0) {
        if (x != 0) {
            wx = (x < 0) ? -x : x;
            wy = (y < 0) ? -y : y;
            ratio = wx;
            cur = wy * 256;
            ratio = cur / ratio;
            result = 0x4000;
            if (ratio <= 0xFB6A) {
                result = 0;
                ptr = &sAtanTable[127];
                cur = *ptr; ptr -= 64;
                if (ratio > cur) { result |= 0x2000; ptr += 128; }
                cur = *ptr; ptr -= 32;
                if (ratio > cur) { result |= 0x1000; ptr += 64; }
                cur = *ptr; ptr -= 16;
                if (ratio > cur) { result |= 0x800; ptr += 32; }
                cur = *ptr; ptr -= 8;
                if (ratio > cur) { result |= 0x400; ptr += 16; }
                cur = *ptr; ptr -= 4;
                if (ratio > cur) { result |= 0x200; ptr += 8; }
                cur = *ptr; ptr -= 2;
                if (ratio > cur) { result |= 0x100; ptr += 4; }
                cur = *ptr; ptr -= 1;
                if (ratio > cur) { result |= 0x80; ptr += 2; }
                cur = *ptr;
                if (ratio > cur) { result |= 0x40; }
            }
        } else {
            result = 0x4000;
        }
    } else {
        result = 0;
    }

    if (x < 0) result = 0x8000 - result;
    if (y < 0) result = 0 - result;
    return result;
}

u32 c_sqrt(s32 x) {
    s32 result;
    s32 i;
    s32 val;

    result = 0;
    for (i = 15; i >= 0; i--) {
        val = (result << (i + 1)) + (1 << (i << 1));
        if (val <= x) {
            result |= (1 << i);
            x -= val;
        }
    }
    return result;
}
