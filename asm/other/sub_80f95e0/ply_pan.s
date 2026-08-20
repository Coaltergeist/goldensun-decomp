	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_pan  @ 0x080f9bb8
	mov	r12, lr
	bl	Func_80f9ab4
	sub	r3, #0x40
	strb	r3, [r1, #0x14]
	ldrb	r3, [r1]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r1]
	bx	r12
.func_end ply_pan

