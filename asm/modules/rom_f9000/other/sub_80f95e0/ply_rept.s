	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_rept  @ 0x080f9b10
	push	{lr}
	ldr	r2, [r1, #0x40]
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.Lf9b20
	add	r2, #1
	str	r2, [r1, #0x40]
	b	.Lf9ac2
.Lf9b20:
	ldrb	r3, [r1, #3]
	add	r3, #1
	strb	r3, [r1, #3]
	mov	r12, r3
	bl	Func_80f9ab4
	cmp	r12, r3
	bcs	.Lf9b32
	b	.Lf9ac2
.Lf9b32:
	mov	r3, #0
	strb	r3, [r1, #3]
	add	r2, #5
	str	r2, [r1, #0x40]
	pop	{r0}
	bx	r0
.func_end ply_rept

