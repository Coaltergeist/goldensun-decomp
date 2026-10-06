	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20082f0
	ldr	r3, =iwram_3001e70
	ldr	r4, [r0, #0x50]
	add	r0, #0x59
	ldrb	r2, [r0]
	ldr	r1, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r2, #0x8d
	lsl	r2, #1
	strb	r3, [r0]
	add	r3, r1, r2
	ldrh	r3, [r3]
	mov	r0, #1
	strh	r3, [r4, #0x1e]
	bx	lr
.func_end OvlFunc_881_20082f0

