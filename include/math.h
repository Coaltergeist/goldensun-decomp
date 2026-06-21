#ifndef _MATH_H_
#define _MATH_H_

#include "gba/types.h"

extern fx32 Func_8000888(fx32, fx32); // IWRAM_Fastcall_FX32_Multiply

fx32 sin(s32);
fx32 cos(s32);

static inline fx32 fx32_multiply(fx32 a, fx32 b) {
    fx32 (*fxmul)(fx32, fx32) = Func_8000888;
	register fx32 r0 asm("r0") = a;
	register fx32 r1 asm("r1") = b;

	asm volatile (
        ".align 2, 0\n"
	    "mov r12, pc\n"
	    "bx %0"
	  :
      : "r"(fxmul), "l"(r0), "l"(r1)
	  : "r0", "r1", "r2", "r12"
	);
	return r0;
}

#endif //_MATH_H_
