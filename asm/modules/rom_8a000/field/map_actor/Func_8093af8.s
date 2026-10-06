	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8093af8  @ 0x08093af8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x28
	mov	r9, r3
	ldr	r3, =iwram_3001e64
	mov	r2, #0
	mov	r10, r2
	ldr	r5, [r3]
	mov	r2, #0x3f
	mov	r7, r0
	mov	r11, r1
	mov	r8, r2
.L93b1a:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L93bb2
	cmp	r5, r7
	beq	.L93bb2
	mov	r3, r5
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L93bb2
	ldr	r1, [r5, #0xc]
	ldr	r3, [r7, #0xc]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L93b40
	ldr	r3, =0x2fffff
	cmp	r2, r3
	ble	.L93b48
	b	.L93bb2
.L93b40:
	ldr	r2, =0x2fffff
	sub	r3, r1
	cmp	r3, r2
	bgt	.L93bb2
.L93b48:
	ldr	r2, [r5, #8]
	ldr	r3, [r7, #8]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L93b56
	ldr	r3, =0xffff
	add	r0, r3
.L93b56:
	ldr	r2, [r5, #0x10]
	ldr	r3, [r7, #0x10]
	sub	r2, r3
	asr	r0, #16
	cmp	r2, #0
	bge	.L93b66
	ldr	r3, =0xffff
	add	r2, r3
.L93b66:
	asr	r3, r2, #16
	mov	r2, r0
	mul	r2, r0
	mov	r0, r2
	mov	r2, r3
	mul	r2, r3
	mov	r3, r2
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r6, r0
	cmp	r6, r9
	bge	.L93bb2
	ldr	r3, [r7, #0x10]
	ldr	r0, [r5, #0x10]
	ldr	r1, [r5, #8]
	sub	r0, r3
	ldr	r3, [r7, #8]
	sub	r1, r3
	bl	atan2
	lsl	r0, #16
	lsr	r0, #16
	cmp	r6, #0x17
	ble	.L93bae
	ldrh	r3, [r7, #6]
	sub	r3, r0, r3
	lsl	r3, #16
	asr	r0, r3, #16
	ldr	r3, =0xffffd001
	cmp	r0, r3
	blt	.L93bb2
	ldr	r2, =0x2fff
	cmp	r0, r2
	bgt	.L93bb2
.L93bae:
	mov	r10, r5
	mov	r9, r6
.L93bb2:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	add	r5, #0x70
	cmp	r2, #0
	bge	.L93b1a
	mov	r3, r10
	mov	r0, #0
	cmp	r3, #0
	beq	.L93bd8
	mov	r2, r10
	ldr	r3, [r2, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r11
	bne	.L93bd8
	mov	r0, r10
.L93bd8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8093af8

