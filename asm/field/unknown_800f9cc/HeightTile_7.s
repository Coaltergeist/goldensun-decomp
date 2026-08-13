	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start HeightTile_7  @ 0x08011e2c
	mov	r3, r0
	mov	r0, #0
	ldrsb	r0, [r3, r0]
	mov	r4, #1
	ldrsb	r4, [r3, r4]
	lsl	r2, #4
	ldr	r3, =.L132fc
	add	r1, r2
	lsl	r0, #19
	ldrb	r3, [r3, r1]
	lsl	r4, #19
	sub	r4, r0
	mul	r3, r4
	add	r0, r3
	bx	lr
.func_end HeightTile_7
