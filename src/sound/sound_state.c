/* sound/sound_state.c -- get current BGM id + set/toggle a sound flag. */
#include "nonmatching.h"

extern unsigned char ewram_2003040;

void Func_80f9570(unsigned int arg0)
{
    unsigned int hi = arg0 & 0x80;
    arg0 &= 0x7f;
    if (hi != 0)
        ewram_2003040 = ewram_2003040 ^ arg0;
    else
        ewram_2003040 = arg0;
}

extern unsigned char ewram_200303c;

unsigned int Func_80f9594(void) {
    return ewram_200303c;
}
