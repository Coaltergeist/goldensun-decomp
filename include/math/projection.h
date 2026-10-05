#ifndef MATH_PROJECTION_H
#define MATH_PROJECTION_H

#include "gba/types.h"

struct Projection {
    fx32 focal;    // 0x00
    fx32 zMin;     // 0x04
    fx32 zMax;     // 0x08
    s32 originX;   // 0x0C
    s32 originY;   // 0x10
};                 // 0x14

extern struct Projection gPhysVec;

// Compile-time layout checks supported by the production GCC 2.96 compiler.
typedef char ProjectionSizeCheck[(sizeof(struct Projection) == 0x14) ? 1 : -1];
typedef char ProjectionAlignmentCheck[(__alignof__(struct Projection) == 4) ? 1 : -1];
typedef char ProjectionFieldWidthsCheck[
    (sizeof(((struct Projection *)0)->focal) == 4 &&
     sizeof(((struct Projection *)0)->zMin) == 4 &&
     sizeof(((struct Projection *)0)->zMax) == 4 &&
     sizeof(((struct Projection *)0)->originX) == 4 &&
     sizeof(((struct Projection *)0)->originY) == 4) ? 1 : -1];
typedef char ProjectionOffsetsCheck[
    ((u32)&((struct Projection *)0)->focal == 0x00 &&
     (u32)&((struct Projection *)0)->zMin == 0x04 &&
     (u32)&((struct Projection *)0)->zMax == 0x08 &&
     (u32)&((struct Projection *)0)->originX == 0x0C &&
     (u32)&((struct Projection *)0)->originY == 0x10) ? 1 : -1];

#endif // MATH_PROJECTION_H
