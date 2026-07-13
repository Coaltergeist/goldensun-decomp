	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b08b8  @ 0x080b08b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	cmp	r7, #0
	beq	.Lb094a
	mov	r1, #0xd
	ldrsb	r1, [r7, r1]
	mov	r10, r1
	cmp	r1, #0
	beq	.Lb094a
	ldr	r2, [r7]
	ldrb	r6, [r7, #0xc]
	mov	r8, r2
	add	r6, #1
	mov	r1, #4
	ldrsh	r2, [r7, r1]
	mov	r1, #8
	ldrsh	r3, [r7, r1]
	strb	r6, [r7, #0xc]
	lsl	r6, #24
	sub	r3, r2
	asr	r6, #24
	mov	r0, r6
	mul	r0, r3
	mov	r1, r10
	bl	__divsi3
	ldrh	r5, [r7, #4]
	mov	r3, r8
	add	r5, r0
	strh	r5, [r3, #6]
	ldr	r2, =0
	ldr	r3, =0x1ff
	mov	r1, r8
	and	r5, r3
	mov	r9, r2
	ldr	r3, =0xfffffe00
	ldrh	r2, [r1, #0x16]
	and	r3, r2
	orr	r3, r5
	mov	r2, r8
	strh	r3, [r2, #0x16]
	mov	r1, #6
	ldrsh	r2, [r7, r1]
	mov	r1, #0xa
	ldrsh	r3, [r7, r1]
	sub	r3, r2
	mov	r0, r6
	mul	r0, r3
	mov	r1, r10
	bl	__divsi3
	ldrh	r5, [r7, #6]
	mov	r2, r8
	add	r5, r0
	strh	r5, [r2, #8]
	strb	r5, [r2, #0x14]
	b	.Lb0940

	.pool_aligned

.Lb0940:
	cmp	r6, r10
	bne	.Lb094a
	mov	r3, r9
	strb	r3, [r7, #0xd]
	strb	r3, [r7, #0xc]
.Lb094a:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b08b8

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

.section .text.after_b09fc, "ax", %progbits
.thumb_func_start Func_80b0a20  @ 0x080b0a20
	push	{r5, r6, lr}
	ldr	r5, [r0]
	ldr	r6, =0xffff
	mov	r3, #1
	ldr	r4, =0
	strb	r3, [r0, #0xd]
	ldr	r3, =0x1ff
	strh	r1, [r5, #6]
	strh	r1, [r0, #8]
	strh	r1, [r0, #4]
	and	r1, r6
	and	r1, r3
	strb	r4, [r0, #0xc]
	ldr	r3, =0xfffffe00
	ldrh	r4, [r5, #0x16]
	and	r3, r4
	orr	r3, r1
	strh	r3, [r5, #0x16]
	ldr	r3, [r0]
	strh	r2, [r0, #0xa]
	strh	r2, [r0, #6]
	strh	r2, [r3, #8]
	and	r2, r6
	strb	r2, [r3, #0x14]
	b	.Lb0a64

	.pool_aligned

.Lb0a64:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b0a20
