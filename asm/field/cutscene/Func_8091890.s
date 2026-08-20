	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8091890  @ 0x08091890
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	bl	_Func_8079664
	bl	Func_8091858
	mov	r0, r5
	bl	_GetUnit
	mov	r6, r0
	ldrh	r1, [r6, #0x34]
	ldrh	r3, [r6, #0x36]
	strh	r1, [r6, #0x38]
	strh	r3, [r6, #0x3a]
	lsl	r1, #16
	asr	r1, #16
	lsl	r0, r1, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L918ca
	mov	r3, #0
	cmp	r0, #0
	blt	.L918ca
	mov	r3, r0
.L918ca:
	strh	r3, [r6, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L918de
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L918de
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L918de:
	mov	r3, #0x3a
	ldrsh	r0, [r6, r3]
	mov	r2, #0x36
	ldrsh	r1, [r6, r2]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L918fc
	mov	r3, #0
	cmp	r0, #0
	blt	.L918fc
	mov	r3, r0
.L918fc:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L91910
	mov	r2, #0x3a
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L91910
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L91910:
	ldr	r3, =0x131
	add	r2, r6, r3
	mov	r3, #0
	strb	r3, [r2]
	mov	r8, r3
	bl	_GetPartySize
	cmp	r8, r0
	bge	.L91948
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r5, r0
.L9192c:
	ldrb	r0, [r7]
	bl	_GetUnit
	mov	r6, r0
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	add	r7, #1
	cmp	r3, #0
	beq	.L91942
	mov	r3, #1
	add	r8, r3
.L91942:
	sub	r5, #1
	cmp	r5, #0
	bne	.L9192c
.L91948:
	mov	r2, r8
	cmp	r2, #0
	bne	.L919c4
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	_GetUnit
	mov	r5, #1
	mov	r6, r0
	strh	r5, [r6, #0x38]
	lsl	r5, #14
	mov	r3, #0x34
	ldrsh	r1, [r6, r3]
	mov	r0, r5
	bl	__divsi3
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r0, r2
	bgt	.L9197e
	mov	r5, #0
	cmp	r0, #0
	blt	.L9197e
	mov	r5, r0
.L9197e:
	lsl	r3, r5, #16
	strh	r5, [r6, #0x14]
	cmp	r3, #0
	bne	.L91992
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L91992
	mov	r3, #1
	strh	r3, [r6, #0x14]
.L91992:
	mov	r3, #0x3a
	ldrsh	r0, [r6, r3]
	mov	r2, #0x36
	ldrsh	r1, [r6, r2]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L919b0
	mov	r3, #0
	cmp	r0, #0
	blt	.L919b0
	mov	r3, r0
.L919b0:
	strh	r3, [r6, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L919c4
	mov	r2, #0x3a
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L919c4
	mov	r3, #1
	strh	r3, [r6, #0x16]
.L919c4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8091890

