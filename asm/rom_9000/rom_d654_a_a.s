	.include "macros.inc"

.thumb_func_start Func_800d654
	mov	r2, #4
	ldrsh	r3, [r0, r2]
	ldr	r2, [r0]
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r3, #4]
	mov	r2, r0
	sub	r3, #1
	add	r2, #0x5e
	strh	r3, [r2]
	ldrh	r3, [r0, #4]
	add	r3, #2
	strh	r3, [r0, #4]
	mov	r0, #0
	bx	lr
.func_end Func_800d654

