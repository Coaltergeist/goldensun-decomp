	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start FindFieldMoveEvent  @ 0x0808e4b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r2
	ldr	r3, =iwram_3001ebc
	ldr	r5, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r2
	ldr	r3, [r3]
	mov	r9, r0
	ldr	r0, [r5]
	sub	sp, #0xc
	ldr	r7, [r3, #0x10]
	mov	r10, r1
	bl	GetFieldActor
	ldrh	r0, [r0, #6]
	str	r0, [sp, #8]
	mov	r1, r10
	ldr	r0, [r5]
	bl	Func_808df1c
	mov	r3, #0
	str	r0, [r6]
	mov	r8, r0
	mov	r11, r3
	bl	Func_808bd24
	ldr	r2, =0x70000005
	str	r0, [sp, #4]
	cmp	r9, r2
	bne	.L8e502
	mov	r3, #1
	mov	r11, r3
.L8e502:
	mov	r2, #1
	ldr	r1, [r7]
	neg	r2, r2
	cmp	r1, r2
	beq	.L8e5bc
.L8e50c:
	mov	r3, #4
	ldrsh	r5, [r7, r3]
	mov	r3, #0xf0
	lsl	r3, #8
	ldrh	r2, [r7, #4]
	and	r5, r3
	ldr	r3, .L8e54c	@ 0x800
	and	r3, r2
	lsl	r3, #16
	asr	r6, r3, #16
	mov	r3, #0xf
	mov	r4, #0xff
	and	r3, r1
	and	r4, r2
	cmp	r3, #5
	bne	.L8e5ae
	mov	r2, #6
	ldrsh	r0, [r7, r2]
	str	r4, [sp]
	bl	Func_808d428
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.L8e5ae
	cmp	r6, #0
	beq	.L8e56a
	ldr	r2, [sp, #8]
	sub	r3, r5, r2
	ldr	r2, =0x17ff
	add	r3, r2
	b	.L8e560

	.align	2, 0
.L8e54c:
	.word	0x800
	.pool

.L8e560:
	lsl	r3, #16
	ldr	r2, =0x2ffe
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L8e5ae
.L8e56a:
	ldrb	r0, [r7, #1]
	str	r4, [sp]
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	ldr	r4, [sp]
	cmp	r3, r10
	bne	.L8e5ae
	mov	r3, r11
	cmp	r3, #0
	bne	.L8e58c
	ldr	r1, [r7]
	ldr	r3, =0x7000000f
	and	r3, r1
	cmp	r3, r9
	bne	.L8e5ae
	b	.L8e58e
.L8e58c:
	ldr	r1, [r7]
.L8e58e:
	mov	r3, #0x80
	and	r3, r1
	mov	r0, r7
	cmp	r3, #0
	bne	.L8e5be
	mov	r3, #0x10
	and	r3, r1
	cmp	r3, #0
	beq	.L8e5a6
	cmp	r4, r8
	bne	.L8e5ae
	b	.L8e5be
.L8e5a6:
	ldr	r2, [sp, #4]
	mov	r0, r7
	cmp	r4, r2
	beq	.L8e5be
.L8e5ae:
	add	r7, #0xc
	ldr	r3, [r7]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r3
	cmp	r3, r2
	bne	.L8e50c
.L8e5bc:
	mov	r0, #0
.L8e5be:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end FindFieldMoveEvent

