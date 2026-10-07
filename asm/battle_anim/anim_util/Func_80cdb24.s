	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80cdb24  @ 0x080cdb24
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	bl	AnimStart
	ldr	r3, =0x6784
	orr	r5, r3
	ldr	r3, =0x6003800
	ldr	r2, =REG_BG2CNT
	mov	r8, r3
	mov	r3, #0x80
	strh	r5, [r2]
	lsl	r3, #2
	mov	r5, #0
	mov	r12, r5
	mov	r7, #0
	mov	r14, r3
	mov	r6, #0
.Lcdb4c:
	mov	r3, #0x80
	lsl	r3, #1
	mov	r4, #0
	add	r0, r6, r3
	lsl	r1, r7, #1
	b	.Lcdb64

	.pool_aligned

.Lcdb64:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r10, r3
	mov	r3, r8
	add	r2, r5, r3
	add	r4, #1
	mov	r3, r10
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r5, #2
	cmp	r4, #8
	bne	.Lcdb64
	ldr	r1, =0x6003800
	ldr	r2, .Lcdb8c	@ 0
	mov	r4, #0
	b	.Lcdb94

	.align	2, 0
.Lcdb8c:
	.word	0
	.pool

.Lcdb94:
	add	r3, r5, r1
	add	r4, #1
	strh	r2, [r3]
	add	r5, #2
	cmp	r4, #8
	bne	.Lcdb94
	mov	r3, #0x80
	lsl	r3, #5
	add	r6, r3
	mov	r3, #1
	add	r12, r3
	mov	r3, r12
	add	r7, #8
	cmp	r3, #0x10
	bne	.Lcdb4c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80cdb24

