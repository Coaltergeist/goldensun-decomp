	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start FindFieldItemEvent  @ 0x0808e14c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r5, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r5, r1
	ldr	r3, [r3]
	mov	r8, r0
	ldr	r0, [r5]
	ldr	r6, [r3, #0x10]
	sub	sp, #4
	bl	GetFieldActor
	ldrh	r0, [r0, #6]
	mov	r11, r0
	ldr	r0, [r5]
	bl	Func_808ddec
	ldr	r3, =0x1ff
	mov	r2, r8
	and	r2, r3
	mov	r9, r0
	mov	r8, r2
	bl	Func_808bd24
	mov	r3, #1
	ldr	r1, [r6]
	neg	r3, r3
	mov	r10, r0
	cmp	r1, r3
	beq	.L8e224
.L8e196:
	mov	r3, #4
	ldrsh	r5, [r6, r3]
	mov	r3, #0xf0
	lsl	r3, #8
	ldrh	r2, [r6, #4]
	and	r5, r3
	ldr	r3, .L8e1d4	@ 0x800
	and	r3, r2
	lsl	r3, #16
	asr	r7, r3, #16
	mov	r3, #0xf
	mov	r4, #0xff
	and	r3, r1
	and	r4, r2
	cmp	r3, #4
	bne	.L8e216
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	str	r4, [sp]
	bl	Func_808d428
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.L8e216
	cmp	r7, #0
	beq	.L8e1f2
	mov	r2, r11
	ldr	r1, =0x17ff
	sub	r3, r5, r2
	add	r3, r1
	b	.L8e1e8

	.align	2, 0
.L8e1d4:
	.word	0x800
	.pool

.L8e1e8:
	lsl	r3, #16
	ldr	r2, =0x2ffe
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L8e216
.L8e1f2:
	mov	r1, r8
	ldr	r2, [r6]
	ldrb	r3, [r6, #1]
	cmp	r1, #0
	beq	.L8e200
	cmp	r3, r8
	bne	.L8e216
.L8e200:
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L8e210
	cmp	r4, r9
	bne	.L8e216
	mov	r0, r6
	b	.L8e226
.L8e210:
	mov	r0, r6
	cmp	r4, r10
	beq	.L8e226
.L8e216:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r3
	cmp	r3, r2
	bne	.L8e196
.L8e224:
	mov	r0, #0
.L8e226:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end FindFieldItemEvent

