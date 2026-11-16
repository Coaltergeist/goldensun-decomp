#include "anim.h"

#define EWRAM_BUFFER ((u8 *)0x02010000)

extern u8 *iwram_3001ef4;
extern void *Func_8001af8(void *, const void *, unsigned int);
extern unsigned int Random(void);
extern void WaitFrames(int);

void Anim_Unused_ScreenMelt(struct AnimContext *context)
{
    int i;
    u8 *randomTable;
    int limit;
    int step;
    int progress;
    void *(*copy)(void *, const void *, unsigned int);

    for (i = 0; i != 32; i++) {
        int half = i / 2;
        ((vu16 *)0x05000040)[i] = (i << 10) | (half << 5) | half;
    }

    randomTable = iwram_3001ef4;
    limit = 0;
    step = 16;

    copy = Func_8001af8;
    copy(EWRAM_BUFFER, (void *)0x06008000, 0x7800);

    for (i = 0; i != 256; i++) {
        randomTable[i] = Random() & 0x3f;
    }

    progress = 0;
    for (i = 0; i != 27; i++) {
        int x;
        limit += step / 4;
        step++;

        for (; progress != limit; progress++) {
            for (x = 0; x != 256; x++) {
                int y = progress - randomTable[x];
                if (y >= 0) {
                    if (y <= 119) {
                        int offset = (x & 7) + ((x / 8) << 6) + ((y & 7) << 3) + ((y / 8) << 11);
                        u8 *pixel = &EWRAM_BUFFER[offset];
                        u16 color = ((u16 *)0x05000000)[*pixel];
                        int max = color & 31;
                        int green = (color >> 5) & 31;
                        int blue = (color >> 10) & 31;
                        if (max < green)
                            max = green;
                        if (max < blue)
                            max = blue;
                        *pixel = 63 - max;
                    }
                }
            }
        }

        copy = Func_8001af8;
        copy((void *)0x06008000, EWRAM_BUFFER, 0x7800);
        WaitFrames(1);

        if (limit > 0xf8)
            break;
    }

    for (i = 0; i != 32; i++) {
        int half = i / 2;
        ((vu16 *)0x050000c0)[i] = (i << 10) | (half << 5) | half;
    }

    for (i = 0; i != 0x7800; i++) {
        EWRAM_BUFFER[i] += 0x40;
    }

    copy = Func_8001af8;
    copy((void *)0x06008000, EWRAM_BUFFER, 0x7800);
    WaitFrames(1);
}
