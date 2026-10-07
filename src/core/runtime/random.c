/* random.c -- consolidated TU. */
#include "nonmatching.h"

#include "gba/types.h"
#include "math.h"

extern u32 gRNGState;

/* FF: u16 Random(void) */
u16 Random(void) {
    u32 newState = gRNGState * 0x41C64E6D + 12345;
    gRNGState = newState;
    return newState >> 8;
}
