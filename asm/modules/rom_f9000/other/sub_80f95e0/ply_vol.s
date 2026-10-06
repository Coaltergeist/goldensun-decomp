	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_vol  @ 0x080f9ba4
	mov	r12, lr
	bl	Func_80f9ab4
	strb	r3, [r1, #0x12]
	ldrb	r3, [r1]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r1]
	bx	r12
.func_end ply_vol

