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
    register fx32 *m asm("r3") = &Data_8000ac0;
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
