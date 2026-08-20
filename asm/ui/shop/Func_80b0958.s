	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b0958  @ 0x080b0958
	push	{r5, lr}
	mov	r5, r0
	ldr	r4, [r5]
	cmp	r4, #0
	beq	.Lb09ea
	mov	r1, #8
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r4, #6]
	sub	r0, r2, r3
	mov	r3, r0
	cmp	r0, #0
	bge	.Lb0972
	add	r3, r0, #3
.Lb0972:
	asr	r3, #2
	cmp	r3, #0
	bge	.Lb097a
	neg	r3, r3
.Lb097a:
	cmp	r0, #0
	ble	.Lb098c
	cmp	r3, #0
	beq	.Lb0986
	sub	r3, r2, r3
	b	.Lb099a
.Lb0986:
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.Lb099a
.Lb098c:
	cmp	r0, #0
	bge	.Lb09ac
	cmp	r3, #0
	beq	.Lb0998
	add	r3, r2, r3
	b	.Lb099a
.Lb0998:
	add	r3, r2, #1
.Lb099a:
	strh	r3, [r4, #6]
	ldrh	r3, [r4, #6]
	ldr	r2, =0x1ff
	ldrh	r1, [r4, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r4, #0x16]
.Lb09ac:
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r4, #8]
	sub	r0, r2, r3
	mov	r3, r0
	cmp	r0, #0
	bge	.Lb09bc
	add	r3, r0, #3
.Lb09bc:
	asr	r3, #2
	cmp	r3, #0
	bge	.Lb09c4
	neg	r3, r3
.Lb09c4:
	cmp	r0, #0
	ble	.Lb09d6
	cmp	r3, #0
	beq	.Lb09d0
	sub	r3, r2, r3
	b	.Lb09e4
.Lb09d0:
	ldr	r1, =0xffff
	add	r3, r2, r1
	b	.Lb09e4
.Lb09d6:
	cmp	r0, #0
	bge	.Lb09ea
	cmp	r3, #0
	beq	.Lb09e2
	add	r3, r2, r3
	b	.Lb09e4
.Lb09e2:
	add	r3, r2, #1
.Lb09e4:
	strh	r3, [r4, #8]
	ldrh	r3, [r4, #8]
	strb	r3, [r4, #0x14]
.Lb09ea:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80b0958

