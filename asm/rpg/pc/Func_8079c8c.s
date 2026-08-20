	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8079c8c  @ 0x08079c8c
	push	{lr}
	bl	GetUnit
	ldr	r2, =0x129
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79ca2
	bl	Func_80798b4
	b	.L79cb2
.L79ca2:
	mov	r1, #1
	bl	Func_807882c
	cmp	r0, #0
	beq	.L79cb0
	ldr	r0, [r0, #0x14]
	b	.L79cb2
.L79cb0:
	mov	r0, #4
.L79cb2:
	pop	{r1}
	bx	r1
.func_end Func_8079c8c

