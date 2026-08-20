	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_bendr  @ 0x080f9be0
	mov	r12, lr
	bl	Func_80f9ab4
	strb	r3, [r1, #0xf]
	ldrb	r3, [r1]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1]
	bx	r12
.func_end ply_bendr

