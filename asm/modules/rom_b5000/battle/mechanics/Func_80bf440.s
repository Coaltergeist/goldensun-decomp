	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bf440  @ 0x080bf440
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	ldr	r3, =0x13b
	add	r5, r0, r3
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf476
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r0, #1
	cmp	r3, #0
	beq	.Lbf478
	ldrb	r1, [r5]
	mov	r0, r6
	mov	r2, #0x28
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf476
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #1
	b	.Lbf478
.Lbf476:
	mov	r0, #0
.Lbf478:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80bf440
