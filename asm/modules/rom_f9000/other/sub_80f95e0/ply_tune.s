	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_tune  @ 0x080f9c18
	mov	r12, lr
	bl	Func_80f9ab4
	sub	r3, #0x40
	strb	r3, [r1, #0xc]
	ldrb	r3, [r1]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1]
	bx	r12
.func_end ply_tune

