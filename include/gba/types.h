#ifndef _GBA_TYPES_H_
#define _GBA_TYPES_H_

typedef unsigned char      u8;
typedef unsigned short    u16;
typedef unsigned int      u32;
typedef unsigned long int u64;
// rom_f9000's stock m4a / "Sappy" engine was prebuilt with signed char (its
// s8 fields load signed in the ROM), unlike Camelot's own code which uses
// unsigned char (__CHAR_UNSIGNED__). old_agbcc has no -fsigned-char, so the
// m4a TU is compiled with -D M4A_SIGNED_CHAR to get a signed s8; everything
// else (and the matched corpus) keeps the historical unsigned s8.
#ifdef M4A_SIGNED_CHAR
typedef signed char        s8;
#else
typedef char               s8;
#endif
typedef short             s16;
typedef int               s32;
typedef long long int     s64;

typedef volatile u8   vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8   vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float  f32;
typedef double f64;

typedef u8  bool8;
typedef u16 bool16;
typedef u32 bool32;
typedef vu8  vbool8;
typedef vu16 vbool16;
typedef vu32 vbool32;

// fixed point math

typedef s32 fx32;
typedef s16 fx16;

typedef struct {
    fx32 x, y;
} vec2_t;

typedef struct {
    fx32 x, y, z;
} vec3_t;

typedef fx32 matrix_t[4][3];

#ifndef NULL
#define NULL ( (void *) 0)
#endif

#endif // _GBA_TYPES_H_
