	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808bd24  @ 0x0808bd24
	push	{r5, r6, r7, lr}
	ldr	r2, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r2, r1
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r2]
	ldr	r6, [r3]
	lsl	r2, #2
	add	r2, #0x14
	ldr	r2, [r6, r2]
	sub	r3, #0x4c
	sub	sp, #0xc
	ldr	r7, [r3]
	mov	r0, #0
	cmp	r2, #0
	beq	.L8bdc2
	ldr	r3, [r2, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r2, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r0, #0x80
	ldrh	r1, [r2, #6]
	lsl	r0, #13
	mov	r2, r5
	bl	vec3_translate
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L8bd98
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8bd78
	ldr	r2, =0x1fffff
	add	r3, r2
.L8bd78:
	ldr	r2, [r5, #8]
	asr	r1, r3, #21
	mov	r0, #0x1f
	and	r1, r0
	cmp	r2, #0
	bge	.L8bd88
	ldr	r3, =0x1fffff
	add	r2, r3
.L8bd88:
	asr	r3, r2, #21
	and	r3, r0
	lsl	r3, #5
	add	r3, r1, r3
	ldr	r2, =ewram_2020000
	lsl	r3, #2
	add	r1, r3, r2
	b	.L8bdc0
.L8bd98:
	mov	r1, #0x98
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r1, [r3]
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8bdaa
	ldr	r2, =0xfffff
	add	r3, r2
.L8bdaa:
	ldr	r2, [r5, #8]
	asr	r0, r3, #20
	cmp	r2, #0
	bge	.L8bdb6
	ldr	r3, =0xfffff
	add	r2, r3
.L8bdb6:
	asr	r3, r2, #20
	lsl	r3, #7
	add	r3, r0, r3
	lsl	r3, #2
	add	r1, r3
.L8bdc0:
	ldrb	r0, [r1, #2]
.L8bdc2:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808bd24
