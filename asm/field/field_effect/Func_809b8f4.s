	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b8f4  @ 0x0809b8f4
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r2, #0x80
	ldr	r0, [r6, #0xc]
	lsl	r2, #24
	sub	sp, #4
	cmp	r0, r2
	bne	.L9b906
	b	.L9ba1e
.L9b906:
	ldr	r3, [r6, #4]
	ldr	r2, [r6, #0x10]
	sub	r7, r0, r3
	ldr	r3, [r6, #8]
	sub	r5, r2, r3
	mov	r3, r6
	add	r3, #0x41
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L9b988
	mov	r0, r7
	cmp	r7, #0
	bge	.L9b928
	ldr	r3, =0xffff
	add	r0, r7, r3
.L9b928:
	asr	r0, #16
	mov	r3, r5
	cmp	r5, #0
	bge	.L9b934
	ldr	r2, =0xffff
	add	r3, r5, r2
.L9b934:
	mov	r2, r0
	mul	r2, r0
	asr	r3, #16
	mov	r0, r2
	mov	r2, r3
	mul	r2, r3
	mov	r3, r2
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r3, #0x80
	lsl	r0, #16
	lsl	r3, #16
	cmp	r0, r3
	bge	.L9b974
	ldr	r4, =Func_8000888
	mov	r0, r7
	mov	r1, r7
	.call_via r4
	mov	r3, r0
	mov	r1, r5
	mov	r0, r5
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	FastIntSqrtFP1616_RAM 
.L9b974:
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r0, r2
	bgt	.L9b988
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	mov	r0, r6
	bl	Func_809ba5c
	b	.L9ba1e
.L9b988:
	mov	r0, r5
	mov	r1, r7
	bl	atan2
	mov	r3, r6
	add	r3, #0x42
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	lsl	r0, #16
	asr	r4, r0, #16
	cmp	r3, #0
	beq	.L9b9da
	ldrh	r5, [r6, #0x30]
	sub	r3, r4, r5
	lsl	r3, #16
	asr	r2, r3, #16
	mov	r3, r2
	cmp	r2, #0
	bge	.L9b9b2
	neg	r3, r2
.L9b9b2:
	mov	r7, #0x32
	ldrsh	r1, [r6, r7]
	ldrh	r0, [r6, #0x32]
	cmp	r3, r1
	blt	.L9b9da
	cmp	r2, #0
	bge	.L9b9ce
	neg	r3, r2
	cmp	r3, r1
	ble	.L9b9d4
	neg	r3, r0
	lsl	r3, #16
	asr	r2, r3, #16
	b	.L9b9d4
.L9b9ce:
	cmp	r2, r1
	ble	.L9b9d4
	mov	r2, r1
.L9b9d4:
	add	r3, r2, r5
	lsl	r3, #16
	asr	r4, r3, #16
.L9b9da:
	lsl	r3, r4, #16
	lsr	r0, r3, #16
	ldr	r2, [r6, #0x1c]
	ldr	r3, [r6, #0x24]
	add	r7, r2, r3
	ldr	r3, [r6, #0x20]
	strh	r0, [r6, #0x30]
	cmp	r7, r3
	ble	.L9b9ee
	mov	r7, r3
.L9b9ee:
	lsl	r3, r0, #16
	asr	r4, r3, #16
	mov	r0, r4
	str	r7, [r6, #0x1c]
	str	r4, [sp]
	bl	cos
	ldr	r5, =Func_8000888
	mov	r1, r7
	.call_via r5
	ldr	r3, [r6, #4]
	ldr	r4, [sp]
	add	r3, r0
	mov	r0, r4
	str	r3, [r6, #4]
	bl	sin
	mov	r1, r7
	.call_via r5
	ldr	r3, [r6, #8]
	add	r3, r0
	str	r3, [r6, #8]
.L9ba1e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809b8f4
