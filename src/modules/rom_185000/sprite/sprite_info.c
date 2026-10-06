/* sprite/sprite_info.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned char gSpriteInfo[] __asm__("gSpriteInfo");

unsigned char *GetSpriteInfo(int arg0) {
    return &gSpriteInfo[(arg0 & 0xfff) * 20];
}
