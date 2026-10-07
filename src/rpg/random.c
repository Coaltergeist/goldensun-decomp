/* rpg/random.c */
#include "nonmatching.h"

extern unsigned int sRPGRNGState;

unsigned short RPGRandom(void) {
    unsigned int state = sRPGRNGState * 0x41c64e6d + 0x3039;
    sRPGRNGState = state;
    return state >> 8;
}


unsigned short RPGRandom2(void) {
    extern int RPGRandom_i(void) __asm__("RPGRandom");
    return RPGRandom_i() * 0x64 >> 16;
}
