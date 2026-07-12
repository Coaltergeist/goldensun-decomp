	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20082cc
	ldr	r3, =iwram_3001e70
	mov	r1, #0x8d
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	ldr	r3, [r0, #0x50]
	ldrh	r2, [r2]
	ldr	r1, .L2e8	@ 0
	strh	r2, [r3, #0x1e]
	add	r3, #0x26
	strb	r1, [r3]
	mov	r0, #1
	bx	lr

	.align	2, 0
.L2e8:
	.word	0
.func_end OvlFunc_881_20082cc
