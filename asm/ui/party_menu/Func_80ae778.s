	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ae778  @ 0x080ae778
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0x10
	mov	r7, sp
	ldr	r3, [r3]
	mov	r5, r0
	mov	r0, r7
	mov	r6, r1
	mov	r8, r3
	bl	Func_80ae7fc
	ldrb	r3, [r7, r5]
	sub	r3, #1
	strb	r3, [r7, r5]
	ldrb	r3, [r7, r6]
	ldr	r2, =0x219
	add	r3, #1
	strb	r3, [r7, r6]
	add	r2, r8
	mov	r3, #1
	mov	r10, r3
	ldrb	r3, [r2]
	mov	r5, #0
	cmp	r5, r3
	bcs	.Lae7e4
	mov	r12, r3
	mov	r0, r2
	mov	r14, r12
.Lae7b6:
	mov	r1, r5
	cmp	r5, r12
	bcs	.Lae7da
	ldrb	r6, [r0]
	mov	r4, r7
.Lae7c0:
	add	r3, r1, #1
	lsl	r3, #24
	lsr	r1, r3, #24
	cmp	r1, r6
	bcs	.Lae7da
	ldrsb	r3, [r4, r5]
	ldrsb	r2, [r4, r1]
	sub	r3, r2
	add	r3, #1
	cmp	r3, #2
	bls	.Lae7c0
	mov	r3, #0
	mov	r10, r3
.Lae7da:
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, r14
	bcc	.Lae7b6
.Lae7e4:
	mov	r0, r10
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ae778

