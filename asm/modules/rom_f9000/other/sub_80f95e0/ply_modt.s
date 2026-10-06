	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_modt  @ 0x080f9c00
	mov	r12, lr
	bl	Func_80f9ab4
	ldrb	r0, [r1, #0x18]
	cmp	r0, r3
	beq	.Lf9c16
	strb	r3, [r1, #0x18]
	ldrb	r3, [r1]
	mov	r2, #0xf
	orr	r3, r2
	strb	r3, [r1]
.Lf9c16:
	bx	r12
.func_end ply_modt

