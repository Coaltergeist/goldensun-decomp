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

.section .text.after_b09fc, "ax", %progbits
