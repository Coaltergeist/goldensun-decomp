#include "gba/types.h"

/* クレジット用タイルマップの初期化 */
void Func_80f037c(u32 *dst)
{
    register u32 tile __asm__("r2") = 0x80;
    register u32 solid __asm__("r1") = 0x1ff01ff;
    register s32 i __asm__("r3");
    register u32 step __asm__("r4");

    __asm__ volatile ("" : "+r" (tile));
    __asm__ volatile ("" : "+r" (solid));
    tile <<= 9;
    __asm__ volatile ("" : "+r" (tile));
    i = 0x1f;
    __asm__ volatile ("" : "+r" (i));

    do {
        i--;
        *dst++ = solid;
    } while (i >= 0);

    step = 0x20002;
    __asm__ volatile ("" : "+r" (step));
    i = 0xef;
    do {
        i--;
        *dst++ = tile;
        tile += step;
    } while (i >= 0);

    i = 0x2f;
    do {
        i--;
        *dst++ = solid;
    } while (i >= 0);

    tile = 0;
    i = 0xbf;
    do {
        i--;
        *dst++ = tile;
    } while (i >= 0);
}
