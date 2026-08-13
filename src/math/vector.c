/* math/vector.c */
#include "nonmatching.h"
#include "gba/types.h"
#include "dma.h"
#include "math.h"

struct Projection {
    fx32 focal;
    fx32 zMin;
    fx32 zMax;
    s32 originX;
    s32 originY;
};
extern struct Projection gPhysVec;
extern fx32 Func_80008ac(fx32 num, fx32 denom);
void Func_80009c0(vec3_t *a, vec3_t *b);
extern u32 udivsi3_RAM(u32, u32);

#define MatrixResetRaw(_m) \
    __asm__ volatile( \
        "mov r0, %0\n\t" \
        "mov r1, #0x80\n\t" \
        "mov r2, #0\n\t" \
        "mov r3, #0\n\t" \
        "mov r4, #0\n\t" \
        "lsl r1, r1, #9\n\t" \
        "stmia r0!, {r1-r4}\n\t" \
        "stmia r0!, {r1-r4}\n\t" \
        "stmia r0!, {r1-r4}\n\t" \
        : \
        : "l" (_m) \
        : "r0","r1","r2","r3","r4", "memory" \
    ); \

#define FX_ONE 0x00010000  /* 1.0 in 16.16 */
#define fx_reciprocal(_x) FastDivide(0x80000000, _x)

static inline u32 FastDivide(u32 a, u32 b) {
    register u32 (*divide)(u32, u32) = udivsi3_RAM;
    return divide(a,b);
}

static inline fx32 FxDiv(fx32 num, fx32 denom) {
    fx32 (*divide)(fx32, fx32) = Func_80008ac;
    return divide(num, denom);
}

static inline void Vec3Transform(vec3_t *a, vec3_t *b) {
    void (*transform)(vec3_t *, vec3_t *) = Func_80009c0;
    transform(a, b);
}

void Func_8005208(u32 angle, fx32 zMin, fx32 zMax) {
    s32 f;
    s32 argument;
    s32 sinus;
    s32 cosinus;

    argument = (s32) angle / 2;
    sinus = sin(argument);
    cosinus = cos(argument);
    f = FxDiv(sinus, cosinus * 0x50);
    gPhysVec.zMin = zMin;
    gPhysVec.focal = f;
    gPhysVec.zMax = zMax;
}

void Func_8005258(fx32 focal, fx32 zMin, fx32 zMax) {
    gPhysVec.focal = focal;
    gPhysVec.zMin = zMin;
    gPhysVec.zMax = zMax;
}

s32 PhysMove(vec3_t *src, vec3_t *dst) {
    fx32 scale;
    fx32 depth;
    struct Projection *projection;
    s32  result;
    Vec3Transform(src, dst);

    result = 0;
    projection =  &gPhysVec;
    depth = -dst->z;
    if (depth >= projection->zMin && depth <= projection->zMax) {
        dst->z = depth >> 16;

        if (projection->focal != 0) {
            fx32 d = (u32) depth >> 11;
            fx32 f = projection->focal << 5;
            scale = FastDivide(f, d);
        } else {
            scale = 0x151EB;
        }

        dst->x = projection->originX + fx32_multiply(dst->x, scale) / 0x10000;
        dst->y = projection->originY - fx32_multiply(dst->y, scale) / 0x10000;

        result = scale;
    }

    return result;
}
