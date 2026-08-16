	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bf54c  @ 0x080bf54c
	push	{lr}
	bl	_GetUnit
	ldr	r3, =0x13f
	add	r1, r0, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf56a
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf56c
.Lbf56a:
	mov	r0, #0
.Lbf56c:
	pop	{r1}
	bx	r1
.func_end Func_80bf54c
