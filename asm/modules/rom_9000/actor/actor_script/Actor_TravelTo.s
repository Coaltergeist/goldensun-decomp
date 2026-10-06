	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Actor_TravelTo  @ 0x0800d14c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r9, r3
	ldr	r3, [r7, #8]
	sub	r0, r1, r3
	mov	r8, r1
	mov	r10, r2
	cmp	r0, #0
	bge	.Ld16a
	ldr	r2, =0xffff
	add	r0, r2
.Ld16a:
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	asr	r1, r0, #16
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.Ld17a
	ldr	r3, =0xffff
	add	r0, r3
.Ld17a:
	ldr	r3, [r7, #0x10]
	mov	r2, r9
	asr	r5, r0, #16
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.Ld18a
	ldr	r3, =0xffff
	add	r0, r3
.Ld18a:
	mov	r3, r5
	mul	r3, r5
	asr	r6, r0, #16
	mov	r0, r1
	mul	r0, r1
	mov	r2, r6
	mul	r2, r6
	add	r0, r3
	add	r0, r2
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r2, #0x80
	lsl	r5, r0, #16
	lsl	r2, #13
	cmp	r5, r2
	bge	.Ld1ec
	ldr	r3, [r7, #8]
	mov	r2, r8
	sub	r1, r2, r3
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	sub	r5, r2, r3
	ldr	r3, [r7, #0x10]
	mov	r2, r9
	sub	r6, r2, r3
	mov	r0, r1
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r4, r0
	mov	r1, r5
	mov	r0, r5
	.call_via r3
	mov	r5, r0
	mov	r1, r6
	mov	r0, r6
	.call_via r3
	add	r4, r5
	add	r4, r0
	mov	r0, r4
	bl	FastIntSqrtFP1616_RAM 
	mov	r5, r0
.Ld1ec:
	mov	r3, #0x80
	lsl	r3, #9
	cmp	r5, r3
	bge	.Ld20c
	mov	r3, r10
	mov	r2, r8
	str	r3, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #24
	str	r2, [r7, #8]
	mov	r2, r9
	str	r2, [r7, #0x10]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	str	r3, [r7, #0x40]
	b	.Ld2e4
.Ld20c:
	mov	r3, r7
	add	r3, #0x58
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Ld27c
	ldr	r1, [r7, #0x30]
	ldr	r3, =Func_8000888
	mov	r0, r1
	.call_via r3
	mov	r1, r0
	ldr	r3, =Func_80008ac
	ldr	r0, [r7, #0x34]
	bl	_call_via_r3
	mov	r1, r0
	cmp	r5, r1
	ble	.Ld23a
	lsr	r3, r1, #31
	add	r3, r1, r3
	asr	r3, #1
	sub	r1, r5, r3
	b	.Ld240
.Ld23a:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r1, r3, #1
.Ld240:
	ldr	r3, =Func_80008ac
	mov	r0, r5
	bl	_call_via_r3
	ldr	r4, [r7, #8]
	mov	r5, r0
	mov	r2, r8
	ldr	r3, =Func_8000888
	sub	r0, r2, r4
	mov	r1, r5
	.call_via r3
	add	r4, r0
	mov	r8, r4
	ldr	r4, [r7, #0xc]
	mov	r2, r10
	sub	r0, r2, r4
	mov	r1, r5
	.call_via r3
	add	r4, r0
	mov	r10, r4
	ldr	r4, [r7, #0x10]
	mov	r2, r9
	sub	r0, r2, r4
	mov	r1, r5
	.call_via r3
	add	r4, r0
	mov	r9, r4
.Ld27c:
	mov	r3, r8
	str	r3, [r7, #0x38]
	mov	r3, r9
	mov	r2, r10
	str	r3, [r7, #0x40]
	ldr	r3, [r7, #8]
	str	r2, [r7, #0x3c]
	mov	r2, r8
	sub	r1, r2, r3
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	sub	r5, r2, r3
	ldr	r3, [r7, #0x10]
	mov	r2, r9
	sub	r6, r2, r3
	mov	r3, #0x56
	add	r3, r7
	mov	r12, r3
	mov	r2, r12
	mov	r3, #0x10
	strb	r3, [r2]
	mov	r2, r1
	cmp	r1, #0
	bge	.Ld2ae
	neg	r2, r1
.Ld2ae:
	mov	r3, r6
	cmp	r6, #0
	bge	.Ld2b6
	neg	r3, r6
.Ld2b6:
	cmp	r2, r3
	bge	.Ld2c2
	mov	r3, #0x12
	mov	r2, r12
	strb	r3, [r2]
	mov	r1, r6
.Ld2c2:
	mov	r3, r7
	add	r3, #0x55
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Ld2e4
	cmp	r1, #0
	bge	.Ld2d2
	neg	r1, r1
.Ld2d2:
	mov	r0, r5
	cmp	r0, #0
	bge	.Ld2da
	neg	r0, r0
.Ld2da:
	cmp	r1, r0
	bge	.Ld2e4
	mov	r3, #0x11
	mov	r2, r12
	strb	r3, [r2]
.Ld2e4:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Actor_TravelTo
