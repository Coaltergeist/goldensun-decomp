/* sound/wait_music.c -- block until the BGM start/transition settles. */
#include "nonmatching.h"

extern unsigned char ewram_2003000;
extern void WaitFrames(int frames);

void Func_80f95a0(void) {
    int i;

    i = 0;
    while (ewram_2003000 != 0) {
        WaitFrames(1);
        if (++i > 0x12b)
            break;
    }
}
