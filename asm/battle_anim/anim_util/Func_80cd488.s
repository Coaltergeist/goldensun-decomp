	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80cd488  @ 0x080cd488
	ldr	r3, =iwram_3001eec
	ldr	r0, =0x77d0
	ldr	r2, [r3]
	add	r3, r2, r0
	ldr	r3, [r3]
	ldr	r1, =REG_BG2X
	str	r3, [r1]
	ldr	r3, =0x77d4
	add	r2, r3
	ldr	r3, [r2]
	add	r1, #4
	str	r3, [r1]
	bx	lr
.func_end Func_80cd488

