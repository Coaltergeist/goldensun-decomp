	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bf250  @ 0x080bf250
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	_GetUnit
	mov	r2, #0x99
	lsl	r2, #1
	mov	r1, r0
	add	r5, r1, r2
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lbf2a4
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	mov	r7, #0
	cmp	r3, #0
	bne	.Lbf282
	ldr	r2, =0x133
	add	r3, r1, r2
	strb	r7, [r3]
	mov	r0, #1
	b	.Lbf2a6
.Lbf282:
	ldr	r3, =0x133
	add	r6, r1, r3
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	bge	.Lbf2a4
	ldrb	r1, [r5]
	mov	r0, r8
	mov	r2, #0x1e
	bl	Func_80bf208
	cmp	r0, #0
	beq	.Lbf2a4
	strb	r7, [r6]
	mov	r0, #1
	strb	r7, [r5]
	b	.Lbf2a6
.Lbf2a4:
	mov	r0, #0
.Lbf2a6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bf250
