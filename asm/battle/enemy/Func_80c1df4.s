	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1df4  @ 0x080c1df4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	ldr	r5, [r3]
	mov	r6, r5
	add	r6, #0x40
	ldrb	r4, [r6]
	mov	r1, #0
	sub	sp, #4
	cmp	r1, r4
	bge	.Lc1e20
	ldrh	r3, [r5, #0x10]
	cmp	r3, r0
	beq	.Lc1e20
	mov	r2, r5
	add	r2, #0x10
.Lc1e12:
	add	r1, #1
	cmp	r1, r4
	bge	.Lc1e20
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, r0
	bne	.Lc1e12
.Lc1e20:
	cmp	r1, r4
	beq	.Lc1e82
	mov	r6, r1
	add	r6, #0x34
	ldrsb	r3, [r5, r6]
	mov	r4, #0
	cmp	r3, #0
	bge	.Lc1e40
	mov	r3, #1
	strb	r3, [r5, r6]
	lsl	r3, r1, #2
	add	r3, #0x1c
	mov	r2, #3
	str	r2, [r5, r3]
	ldr	r0, =0x8001
	b	.Lc1eac
.Lc1e40:
	lsl	r7, r1, #2
	b	.Lc1e46
.Lc1e44:
	add	r4, #1
.Lc1e46:
	cmp	r4, #0x1f
	bgt	.Lc1e6e
	ldrsb	r0, [r5, r6]
	mov	r1, #9
	add	r0, #1
	str	r4, [sp]
	bl	__modsi3
	mov	r3, r7
	strb	r0, [r5, r6]
	add	r3, #0x1c
	lsl	r0, #24
	asr	r0, #24
	mov	r2, #1
	ldr	r3, [r5, r3]
	lsl	r2, r0
	and	r3, r2
	ldr	r4, [sp]
	cmp	r3, #0
	bne	.Lc1e44
.Lc1e6e:
	ldrsb	r3, [r5, r6]
	mov	r1, r7
	add	r1, #0x1c
	mov	r2, #1
	lsl	r2, r3
	ldr	r3, [r5, r1]
	orr	r3, r2
	str	r3, [r5, r1]
	ldrsb	r0, [r5, r6]
	b	.Lc1eac
.Lc1e82:
	cmp	r4, #4
	bgt	.Lc1ea8
	mov	r1, #1
	mov	r2, r4
	neg	r1, r1
	add	r2, #0x34
	mov	r3, r1
	strb	r3, [r5, r2]
	lsl	r3, r4, #1
	add	r3, #0x10
	strh	r0, [r5, r3]
	lsl	r3, r4, #2
	add	r3, #0x1c
	mov	r2, #0
	str	r2, [r5, r3]
	add	r3, r4, #1
	strb	r3, [r6]
	mov	r0, #9
	b	.Lc1eac
.Lc1ea8:
	mov	r0, #1
	neg	r0, r0
.Lc1eac:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1df4

