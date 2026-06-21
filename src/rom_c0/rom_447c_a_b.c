/* Cluster atan2..atan2 extracted from goldensun/asm/rom_c0/rom_447c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_447c_a_a.o and asm/rom_c0/rom_447c_a_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/types.h"
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
