/* Cluster Func_80049a8..Func_80049a8 extracted from goldensun/rom_c0/src/rom_49a8.s.
 *
 * Total .text for this TU = 4 bytes (= 0x4).
 * Preserves the original ROM layout when slotted between
 * rom_c0/src/rom_49a8_a.o and rom_c0/src/rom_49a8_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "dma.h"
#include "math.h"

void Func_80049a8(void) {}

extern matrix_t Data_8000ac0;

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

extern void *galloc_ewram(u32, u32);

extern matrix_t *gMatrixStack;
extern s32 gMatrixStackSize;

void InitMatrixStack(void) {
    register matrix_t *m asm("r3");
    gMatrixStack = galloc_ewram(2, 48);
    gMatrixStackSize = 0;
    m = &Data_8000ac0;
    MatrixResetRaw(m);
}

void MatrixPush(void) {
    if (gMatrixStackSize > 0) return;

    DMA3_COPY(Data_8000ac0, gMatrixStack, sizeof(matrix_t));
    gMatrixStackSize++;
    gMatrixStack++;
}

void MatrixStore(matrix_t *dst) {
    DMA3_COPY(Data_8000ac0, dst, sizeof(matrix_t));
}

void MatrixLoad(matrix_t *src) {
    DMA3_COPY(src, Data_8000ac0, sizeof(matrix_t));
}

void MatrixPop(void) {
    if (gMatrixStackSize <= 0) return;

    gMatrixStackSize--;
    gMatrixStack--;

    DMA3_COPY(gMatrixStack, Data_8000ac0, sizeof(matrix_t));
}

void MatrixReset(void) {
    register matrix_t *m asm("r3") = &Data_8000ac0;
    MatrixResetRaw(m);
}

extern void Func_8000a30(matrix_t *m);

static inline void MatrixMultiply(matrix_t *m) {
    void (*mul)(matrix_t *m) = Func_8000a30;
    mul(m);
}

void MatrixRotate(s32 *angles) {
    matrix_t m;
    fx32 sinx = sin(angles[0]);
    fx32 cosx = cos(angles[0]);
    fx32 siny = sin(angles[1]);
    fx32 cosy = cos(angles[1]);
    fx32 sinz = sin(angles[2]);
    fx32 cosz = cos(angles[2]);

    m[0][0] = fx32_multiply(cosy, cosz);
    m[0][1] = fx32_multiply(cosy, sinz);
    m[0][2] = -siny;
    m[1][0] = fx32_multiply(fx32_multiply(sinx, siny), cosz) - fx32_multiply(cosx, sinz);
    m[1][1] = fx32_multiply(fx32_multiply(sinx, siny), sinz) + fx32_multiply(cosx, cosz);
    m[1][2] = fx32_multiply(sinx, cosy);
    m[2][0] = fx32_multiply(fx32_multiply(cosx, siny), cosz) + fx32_multiply(sinx, sinz);
    m[2][1] = fx32_multiply(fx32_multiply(cosx, siny), sinz) - fx32_multiply(sinx, cosz);
    m[2][2] = fx32_multiply(cosx, cosy);
    m[3][0] = 0;
    m[3][1] = 0;
    m[3][2] = 0;
    MatrixMultiply(&m);
}

void MatrixPitch(s32 angle) {
    fx32 sinx, cosx;
    matrix_t m;

    sinx = sin(angle);
    cosx = cos(angle);
    MatrixResetRaw(&m);
    m[1][2] = sinx,
    m[1][1] = cosx;
    m[2][2] = cosx;
    m[2][1] = -sinx;
    MatrixMultiply(&m);
}

void MatrixYaw(s32 angle) {
    fx32 sinx, cosx;
    matrix_t m;

    sinx = sin(angle);
    cosx = cos(angle);

    MatrixResetRaw(&m);
    m[0][2] = -sinx;
    m[0][0] = cosx;
    m[2][0] = sinx;
    m[2][2] = cosx;
    MatrixMultiply(&m);
}

void MatrixRoll(s32 angle) {
    fx32 sinx, cosx;
    matrix_t m;

    sinx = sin(angle);
    cosx = cos(angle);

    MatrixResetRaw(&m);
    m[0][1] = sinx;
    m[0][0] = cosx;
    m[1][1] = cosx;
    m[1][0] = -sinx;
    MatrixMultiply(&m);
}

void MatrixTranslatev(vec3_t *v) {
    matrix_t m;
    MatrixResetRaw(&m);
    m[3][0] = v->x;
    m[3][1] = v->y;
    m[3][2] = v->z;
    MatrixMultiply(&m);
}

void MatrixScalev(vec3_t *v) {
    matrix_t m;
    MatrixResetRaw(&m);
    m[0][0] = v->x;
    m[1][1] = v->y;
    m[2][2] = v->z;
    MatrixMultiply(&m);
}

void MatrixRotateTrans(fx32 *angles, vec3_t *v) {
    matrix_t m;
    fx32 sinx = sin(angles[0]);
    fx32 cosx = cos(angles[0]);
    fx32 siny = sin(angles[1]);
    fx32 cosy = cos(angles[1]);
    fx32 sinz = sin(angles[2]);
    fx32 cosz = cos(angles[2]);

    m[0][0] = fx32_multiply(cosy, cosz);
    m[0][1] = fx32_multiply(cosy, sinz);
    m[0][2] = -siny;
    m[1][0] = fx32_multiply(fx32_multiply(sinx, siny), cosz) - fx32_multiply(cosx, sinz);
    m[1][1] = fx32_multiply(fx32_multiply(sinx, siny), sinz) + fx32_multiply(cosx, cosz);
    m[1][2] = fx32_multiply(sinx, cosy);
    m[2][0] = fx32_multiply(fx32_multiply(cosx, siny), cosz) + fx32_multiply(sinx, sinz);
    m[2][1] = fx32_multiply(fx32_multiply(cosx, siny), sinz) - fx32_multiply(sinx, cosz);
    m[2][2] = fx32_multiply(cosx, cosy);
    m[3][0] = v->x;
    m[3][1] = v->y;
    m[3][2] = v->z;
    MatrixMultiply(&m);
}

void MatrixRotateTransScale(s32 *angles, vec3_t *t, vec3_t *s) {
    matrix_t m;
    fx32 sinx = sin(angles[0]);
    fx32 cosx = cos(angles[0]);
    fx32 siny = sin(angles[1]);
    fx32 cosy = cos(angles[1]);
    fx32 sinz = sin(angles[2]);
    fx32 cosz = cos(angles[2]);

    fx32 scale = s->x;

    m[0][0] = fx32_multiply(scale, fx32_multiply(cosy, cosz));
    m[0][1] = fx32_multiply(scale, fx32_multiply(cosy, sinz));
    m[0][2] = fx32_multiply(scale, -siny);

    scale = s->y;

    m[1][0] = fx32_multiply(scale, fx32_multiply(fx32_multiply(sinx, siny), cosz) - fx32_multiply(cosx, sinz));
    m[1][1] = fx32_multiply(scale, fx32_multiply(fx32_multiply(sinx, siny), sinz) + fx32_multiply(cosx, cosz));
    m[1][2] = fx32_multiply(scale, fx32_multiply(sinx, cosy));

    scale = s->z;

    m[2][0] = fx32_multiply(scale, fx32_multiply(fx32_multiply(cosx, siny), cosz) + fx32_multiply(sinx, sinz));
    m[2][1] = fx32_multiply(scale, fx32_multiply(fx32_multiply(cosx, siny), sinz) - fx32_multiply(sinx, cosz));
    m[2][2] = fx32_multiply(scale, fx32_multiply(cosx, cosy));
    m[3][0] = t->x;
    m[3][1] = t->y;
    m[3][2] = t->z;
    MatrixMultiply(&m);
}

extern fx32 FastIntSqrtFP1616_RAM(fx32 x);
extern u32 udivsi3_RAM(u32, u32);
extern u16 DistSquared(fx32, fx32, fx32, fx32, fx32, fx32);
extern s32 Func_8000948(s32 n);

static inline s32 sqrt(s32 n) {
    s32 (*func)(s32) = Func_8000948;
    return func(n);
}

#define FX_ONE 0x00010000  /* 1.0 in 16.16 */

static inline u32 FastDivide(u32 a, u32 b) {
    register u32 (*divide)(u32, u32) = udivsi3_RAM;
    return divide(a,b);
}

#define fx_reciprocal(_x) FastDivide(0x80000000, _x)

void MakeLookMatrix(vec3_t *eye, vec3_t *target, matrix_t *out)
{
    fx32 recip;
    fx32 temp;
    register fx32 neg_dx asm("r8"); // fakematch, reusing rz works as well, but flips r9 / fp
    fx32 dx, dy, dz;
    fx32 rx, ry, rz;
    u8 funcBuf[28];
    fx32 (*sumProducts)(fx32, fx32, fx32, fx32, fx32, fx32) = (fx32 (*)(fx32, fx32, fx32, fx32, fx32, fx32))funcBuf;
    fx32 ex, ey, ez;
    fx32 ux, uy, uz;

    DMA3_COPY(DistSquared, funcBuf, sizeof(funcBuf));

    dx = target->x - eye->x;
    dy = target->y - eye->y;
    dz = target->z - eye->z;

    recip = fx_reciprocal(sqrt(sumProducts(dx >> 8, dx >> 8, dy >> 8, dy >> 8, dz >> 8, dz >> 8))) >> 15;
    recip *= -1;
    dx = fx32_multiply(dx, recip);
    dy = fx32_multiply(dy, recip);
    temp = fx32_multiply(dz, recip);

    // fakematch instruction order

    do {
        neg_dx = -dx;
    } while (0);
    dz = temp;
    temp = fx32_multiply(dy, dy);

    recip = FX_ONE;
    temp = FX_ONE - temp;
    if ((temp) > 0) {
        recip = fx_reciprocal(FastIntSqrtFP1616_RAM(temp)) << 1;
    }

    rx = fx32_multiply(dz, recip);
    ry = 0;
    rz = fx32_multiply(neg_dx, recip);

    ux = fx32_multiply(dy, rz);
    uy = fx32_multiply(dz, rx) - fx32_multiply(dx, rz);
    uz = -fx32_multiply(dy, rx);

    recip = fx_reciprocal(FastIntSqrtFP1616_RAM(sumProducts(ux, ux, uy, uy, uz, uz))) << 1;
    ux = fx32_multiply(ux, recip);
    uy = fx32_multiply(uy, recip);
    uz = fx32_multiply(uz, recip);

    ex = eye->x;
    ey = eye->y;
    ez = eye->z;

    (*out)[0][0] = rx;
    (*out)[1][0] = ry;
    (*out)[2][0] = rz;
    (*out)[3][0] = -sumProducts(ex, rx, ez, rz, ry, ry);

    (*out)[0][1] = ux;
    (*out)[1][1] = uy;
    (*out)[2][1] = uz;
    (*out)[3][1] = -sumProducts(ex, ux, ey, uy, ez, uz);

    (*out)[0][2] = dx;
    (*out)[1][2] = dy;
    (*out)[2][2] = dz;
    (*out)[3][2] = -sumProducts(ex, dx, ey, dy, ez, dz);
}

void MatrixSetLook(vec3_t *a, vec3_t *b) {
    MakeLookMatrix(a, b, &Data_8000ac0);
}

void MatrixLook(vec3_t *a, vec3_t *b) {
    matrix_t m;
    MakeLookMatrix(a, b, &m);
    MatrixMultiply(&m);
}

struct Projection {
    fx32 focal;
    fx32 zMin;
    fx32 zMax;
    s32 originX;
    s32 originY;
};

extern struct Projection gPhysVec;
extern fx32 Func_80008ac(fx32 num, fx32 denom);

static inline fx32 FxDiv(fx32 num, fx32 denom) {
    fx32 (*divide)(fx32, fx32) = Func_80008ac;
    return divide(num, denom);
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

void Func_80009c0(vec3_t *a, vec3_t *b);

static inline void Vec3Transform(vec3_t *a, vec3_t *b) {
    void (*transform)(vec3_t *, vec3_t *) = Func_80009c0;
    transform(a, b);
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
