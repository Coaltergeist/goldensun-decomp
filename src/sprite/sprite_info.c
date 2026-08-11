/* sprite/sprite_info.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned char L185024[] __asm__(".L185024");

unsigned char *GetSpriteInfo(int arg0) {
    return &L185024[(arg0 & 0xfff) * 20];
}
