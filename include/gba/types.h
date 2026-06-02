#ifndef _GBA_TYPES_H_
#define _GBA_TYPES_H_

typedef unsigned char      u8;
typedef unsigned short    u16;
typedef unsigned int      u32;
typedef unsigned long int u64;
typedef char               s8;
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

#define NULL ( (void *) 0)

#endif // _GBA_TYPES_H_
