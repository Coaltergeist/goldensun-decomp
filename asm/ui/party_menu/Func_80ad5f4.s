	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ad5f4  @ 0x080ad5f4
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x91
	ldr	r3, [r3]
	lsl	r2, #2
	lsl	r0, #2
	add	r0, r2
	str	r1, [r3, r0]
	bx	lr
.func_end Func_80ad5f4

