	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bf524  @ 0x080bf524
	push	{lr}
	bl	_GetUnit
	mov	r3, #0x9f
	lsl	r3, #1
	add	r1, r0, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf544
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf546
.Lbf544:
	mov	r0, #0
.Lbf546:
	pop	{r1}
	bx	r1
.func_end Func_80bf524
