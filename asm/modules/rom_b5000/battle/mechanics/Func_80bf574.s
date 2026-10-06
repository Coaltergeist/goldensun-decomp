	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bf574  @ 0x080bf574
	push	{lr}
	bl	_GetUnit
	mov	r3, #0xa3
	lsl	r3, #1
	add	r1, r0, r3
	ldrb	r2, [r1]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf59e
	add	r3, #0xff
	strb	r3, [r1]
	lsl	r3, #24
	lsr	r3, #24
	cmp	r3, #0
	bne	.Lbf59e
	ldr	r1, =0x147
	add	r2, r0, r1
	strb	r3, [r2]
	mov	r0, #1
	b	.Lbf5a0
.Lbf59e:
	mov	r0, #0
.Lbf5a0:
	pop	{r1}
	bx	r1
.func_end Func_80bf574
