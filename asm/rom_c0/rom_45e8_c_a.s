	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_PrintHex  @ 0x080045f0
	push	{lr}
	ldr	r3, =iwram_3001f70
	ldr	r4, =.L795c
	mov	r1, #0xf
	add	r2, r3, #7
	mov	r12, r3
.L45fc:
	mov	r3, r0
	and	r3, r1
	ldrb	r3, [r4, r3]
	strb	r3, [r2]
	sub	r2, #1
	lsr	r0, #4
	cmp	r2, r12
	bge	.L45fc
	ldr	r2, =iwram_3001f70
	mov	r3, #0
	strb	r3, [r2, #8]
	pop	{r0}
	bx	r0
.func_end Debug_PrintHex

.thumb_func_start Func_8004620  @ 0x08004620
	push	{r5, r6, r7, lr}
	mov	r6, r0
	sub	sp, #8
	ldr	r4, =.L7970
	mov	r1, #0x20
	ldr	r7, =iwram_3001f70
	cmp	r6, #0
	bge	.L4634
	neg	r6, r6
	mov	r1, #0x2d
.L4634:
	ldmia	r4!, {r5}
	mov	r2, #9
	cmp	r6, r5
	bcs	.L464e
	mov	r3, #0x20
.L463e:
	sub	r2, #1
	strb	r3, [r7]
	add	r7, #1
	cmp	r2, #0
	beq	.L464e
	ldmia	r4!, {r5}
	cmp	r6, r5
	bcc	.L463e
.L464e:
	strb	r1, [r7]
	sub	r4, #4
	add	r7, #1
	cmp	r2, #0
	beq	.L467e
.L4658:
	ldmia	r4!, {r5}
	mov	r0, r6
	mov	r1, r5
	str	r2, [sp, #4]
	str	r4, [sp]
	bl	__udivsi3
	mov	r3, r0
	add	r3, #0x30
	strb	r3, [r7]
	mov	r3, r5
	mul	r3, r0
	ldr	r2, [sp, #4]
	sub	r2, #1
	add	r7, #1
	sub	r6, r3
	ldr	r4, [sp]
	cmp	r2, #0
	bne	.L4658
.L467e:
	mov	r3, r6
	add	r3, #0x30
	strb	r3, [r7]
	mov	r3, #0
	strb	r3, [r7, #1]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8004620

