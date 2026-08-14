	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808d394  @ 0x0808d394
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #1
	mov	r1, #0
	neg	r2, r2
	ldr	r7, [r3]
	mov	r4, r0
	mov	r6, #8
	mov	r12, r1
	mov	r14, r2
.L8d3a8:
	ldmia	r7!, {r0}
	cmp	r0, #0
	beq	.L8d404
	cmp	r4, #7
	bgt	.L8d3d6
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	ldrh	r2, [r0]
	cmp	r3, r14
	beq	.L8d404
	mov	r1, #1
	neg	r1, r1
.L8d3c0:
	lsl	r3, r2, #16
	asr	r3, #16
	cmp	r3, r4
	beq	.L8d410
	add	r0, #0x18
	mov	r5, #0
	ldrsh	r3, [r0, r5]
	ldrh	r2, [r0]
	cmp	r3, r1
	bne	.L8d3c0
	b	.L8d404
.L8d3d6:
	ldrh	r2, [r0]
	lsl	r3, r2, #16
	asr	r3, #16
	mov	r1, r2
	cmp	r3, r14
	beq	.L8d404
	mov	r5, #1
	neg	r5, r5
.L8d3e6:
	lsl	r3, r1, #16
	mov	r1, #0xe0
	lsl	r1, #11
	cmp	r3, r1
	ble	.L8d3f6
	cmp	r6, r4
	beq	.L8d410
	add	r6, #1
.L8d3f6:
	add	r0, #0x18
	ldrh	r2, [r0]
	lsl	r3, r2, #16
	asr	r3, #16
	mov	r1, r2
	cmp	r3, r5
	bne	.L8d3e6
.L8d404:
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	cmp	r3, #3
	ble	.L8d3a8
	ldrh	r2, [r0]
.L8d410:
	lsl	r3, r2, #16
	mov	r5, #1
	asr	r3, #16
	neg	r5, r5
	cmp	r3, r5
	bne	.L8d41e
	mov	r0, #0
.L8d41e:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808d394
