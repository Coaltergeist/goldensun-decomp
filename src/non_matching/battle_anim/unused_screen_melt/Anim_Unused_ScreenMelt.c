#include "anim.h"

extern u8 *iwram_3001ef4;

extern void *Func_8001af8(void *, const void *, unsigned int);

extern u8 gBuffer[];

extern unsigned int Random(void);

extern void WaitFrames(int);

void Anim_Unused_ScreenMelt(struct AnimContext *context)
{
    volatile u16 *pal = (volatile u16 *)0x05000040;
    int i;
    u8 *randomTable;
    int step;
    int limit;
    int progress;
    int frame;

    for (i = 0; i < 32; i++) {
        *pal++ = (i << 10) | ((i / 2) << 5) | (i / 2);
    }

    randomTable = iwram_3001ef4;
    step = 16;
    limit = 0;

    {
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy(gBuffer, (void *)0x06008000, 0x7800);
    }

    for (i = 0; i < 256; i++) {
        randomTable[i] = Random() & 0x3f;
    }

    progress = 0;
    for (frame = 0; frame < 27; frame++) {
        int x;
        limit += step / 4;
        step++;

        for (; progress < limit; progress++) {
            for (x = 0; x < 256; x++) {
                int y = progress - randomTable[x];
                if (y >= 0 && y <= 119) {
                    int offset = (x & 7) + (x / 8) * 64 + (y & 7) * 8 + (y / 8) * 2048;
                    u8 *pixel = &gBuffer[offset];
                    s16 color = ((s16 *)0x05000000)[*pixel];
                    int red = color & 31;
                    int green = ((u16)color >> 5) & 31;
                    int blue = ((u16)color >> 10) & 31;
                    int max = red;
                    if (max < green)
                        max = green;
                    if (max < blue)
                        max = blue;
                    *pixel = 63 - max;
                }
            }
        }

        {
            void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
            copy((void *)0x06008000, gBuffer, 0x7800);
        }
        WaitFrames(1);

        if (limit > 0xf8)
            break;
    }

    pal = (volatile u16 *)0x050000c0;
    for (i = 0; i < 32; i++) {
        *pal++ = (i << 10) | ((i / 2) << 5) | (i / 2);
    }

    for (i = 0; i < 0x7800; i++) {
        gBuffer[i] += 0x40;
    }

    {
        void *(*copy)(void *, const void *, unsigned int) = Func_8001af8;
        copy((void *)0x06008000, gBuffer, 0x7800);
    }
    WaitFrames(1);
}
