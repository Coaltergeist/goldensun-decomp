	.include "macros.inc"

.arm_func_start Func_80f0008  @ 0x080f0008
	smull	r12, r0, r1, r0
	smlal	r12, r0, r2, r3
	ldm	sp, {r2, r3}
	smlal	r12, r0, r2, r3
	lsl	r0, #16
	orr	r0, r12, lsr #16
	bx	lr
.func_end Func_80f0008
