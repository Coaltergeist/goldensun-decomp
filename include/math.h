// math.h
#ifndef MATH_H
#define MATH_H

#include "util.h"

/**
 * Fixed point number type, with a 16-bit integer part and a 16-bit fractional part (Q16.16)
 * (For example: 1.0 is encoded as 0x00010000, 1.5 is encoded as 0x00018000, etc.)
 * To convert from `int` to `fx32` or vice versa, shift left or right by 16 bits, respectively.
 * Most operators work as expected on `fx32` such as addition, subtraction, and comparison,
 * but multiplying or dividing two `fx32`s must be done with the `fxmul` and `fxdiv` functions.
 * Multiplying or dividing an `fx32` by an integer can be done normally with operators, though.
 */
typedef s32 fx32;

/**
 * Half-width fixed-point number type, with an 8-bit integer part and an 8-bit fractional part (Q8.8)
 * Used in only a few places and doesn't have any math functions for it.
 * To convert to or from an `fx32`, shift left or right by 8 bits, respectively.
 */
typedef s16 fx16;

/// Macro for creating `fx32` literals from decimal literals.
/// (Example: `fx32 f = FX(1.5);`)
#define FX(f) ((fx32)((f) * 0x10000 + (typeof(f))0.5))

/// Fixed point multiply
#if GS1 && defined(MATCHING)
// GS1 uses a nasty inline asm hack when calling fxmul to bypass libgcc's indirect call thunks
// and save a few CPU cycles. It uses a version of fxmul with a modified calling convention
// where the return address is passed in r12 instead of lr.
// In GS2 this is no longer used because gscc's bl lr hack makes it unnecessary.
extern int fxmul_fastcall[];
static inline fx32 fxmul(fx32 a, fx32 b) CONST_FN {
	register fx32 r0 asm("r0") = a;
	register fx32 r1 asm("r1") = b;
	asm volatile (
	    "mov r12, pc\n"
	    "bx %0"
	 :: "r"(fxmul_fastcall), "l"(r0), "l"(r1)
	  : "r1", "r2", "r12"
	);
	return r0;
}
#else // GS2
extern fx32 fxmul(fx32 a, fx32 b) CONST_FN;
#endif

/// Fixed point divide
/// Note that arguments are in reverse order compared to the `/` operator.
extern fx32 fxdiv(fx32 denom, fx32 num) CONST_FN;

/// Integer square root
extern s32 sqrt(s32 x) CONST_FN;

/// Fixed point square root
extern fx32 fxsqrt(fx32 x) CONST_FN;

/// Sine
extern fx32 sin(u16 angle) CONST_FN;

/// Cosine
extern fx32 cos(u16 angle) CONST_FN;

/// Arc tangent
extern u16 atan2(fx32 y, fx32 x) CONST_FN;


//= Vectors ====================================================================================

/// Fixed-point 2D vector type
typedef struct vec2 {
	fx32 x, y;
} vec2;

/// Fixed-point 3D vector type
typedef struct vec3 {
	fx32 x, y, z;
} vec3;

/// Translate a `vec3` by the given angle and magnitude along the XZ plane.
extern void vec3_translate(fx32 mag, u16 angle, vec3* vec);

/// Multiply a `vec3` with `gMatrix`.
extern void vec3_transform(const vec3* src, vec3* dest);


//= Matrices ===================================================================================

/// Fixed-point 4x3 matrix type (with column-major ordering.)
typedef fx32 Matrix[4][3];

/// Global transformation matrix for all matrix operations.
extern Matrix gMatrix;

/// Reset `gMatrix` to the identity matrix and clear the matrix stack.
extern void InitMatrixStack(void);

/// Clear the matrix stack.
extern void ClearMatrixStack(void);

/// Reset `gMatrix` to the identity matrix.
extern void MatrixReset(void);

/// Save `gMatrix` to the matrix at `dest`.
extern void MatrixStore(Matrix* dest);

/// Load `gMatrix` from the matrix at `src`.
extern void MatrixLoad(const Matrix* src);

/// Save `gMatrix` to the top of the matrix stack.
/// Note: In vanilla GS, the matrix "stack" has a capacity of 1 and can only store one matrix.
extern void MatrixPush(void);

/// Restore `gMatrix` from the top of the matrix stack.
extern void MatrixPop(void);

/// Multiply `gMatrix` with another matrix.
extern void MatrixMultiply(const Matrix* matrix);

/// Rotate `gMatrix` around the X axis.
extern void MatrixPitch(u16 angle);

/// Rotate `gMatrix` around the Y axis.
extern void MatrixYaw(u16 angle);

/// Rotate `gMatrix` around the Z axis.
extern void MatrixRoll(u16 angle);

/// Rotate `gMatrix` by the given Euler angles.
extern void MatrixRotate(const vec3* angles);

/// Translate `gMatrix` by the vector `vec`.
extern void MatrixTranslatev(const vec3* vec);

/// Translate `gMatrix` by the vector (`x`,`y`,`z`).
#if GS1
extern void MatrixTranslatef3(fx32 x, fx32 y, fx32 z);
#else // GS1
inline void MatrixTranslatef3(fx32 x, fx32 y, fx32 z) {
	vec3 v = { x, y, z }; MatrixTranslatev(&v);
}
#endif // !GS1

/// Scale `gMatrix` by the vector `vec`.
extern void MatrixScalev(const vec3* vec);

/// Scale `gMatrix` by the vector (`x`,`y`,`z`).
#if !GS1
extern void MatrixScalef3(fx32 x, fx32 y, fx32 z);
#else // GS1
inline void MatrixScalef3(fx32 x, fx32 y, fx32 z) {
	vec3 v = { x, y, z }; MatrixScalev(&v);
}
#endif // !GS1

/// Scale `gMatrix` by the scalar `scale`.
#if !GS1
extern void MatrixScalef(fx32 scale);
#else // GS1
inline void MatrixScalef(fx32 scale) {
	MatrixScalef3(scale, scale, scale);
}
#endif // !GS1

/// Rotate and translate `gMatrix`. (unused)
extern void MatrixRotateTrans(const vec3* angles, const vec3* trans);

/// Rotate, translate, and scale `gMatrix`. (unused)
extern void MatrixRotateTransScale(const vec3* angles, const vec3* trans, const vec3* scale);

/// Create a rotation matrix to look at point `b` from point `a` and write it to `dest`.
extern void MakeLookAtMatrix(const vec3* a, const vec3* b, Matrix* dest);

/// Create a rotation matrix to look at point `b` from point `a` and write it to `gMatrix`.
extern void LoadLookAtMatrix(const vec3* a, const vec3* b);

/// Rotate `gMatrix` to look at point `b` from point `a`.
extern void MatrixLookAt(const vec3* a, const vec3* b);


#endif // MATH_H
