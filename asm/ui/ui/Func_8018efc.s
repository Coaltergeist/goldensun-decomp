	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8018efc  @ 0x08018efc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r4, r3
	ldr	r3, =iwram_3001e8c
	mov	r7, r0
	ldr	r5, [r3]
	ldrh	r3, [r7, #0xa]
	sub	r3, #2
	sub	sp, #4
	mov	r0, r2
	mov	r6, r5
	cmp	r4, r3
	bhi	.L18ff0
	ldrh	r3, [r7, #8]
	sub	r3, #2
	cmp	r0, r3
	bhi	.L18ff0
	ldr	r2, [sp, #0x18]
	cmp	r2, #1
	bne	.L18fcc
	bl	Func_8015e8c
	mov	r5, r0
	cmp	r5, #0
	beq	.L18ff0
	ldr	r1, =0xfffff968
	sub	r3, r5, r6
	ldr	r2, =0xb6db6db7
	add	r3, r1
	mov	r1, r3
	mul	r1, r2
	mov	r3, #2
	ldr	r2, =0x12b6
	strb	r3, [r5, #5]
	add	r6, r2
	ldrh	r3, [r6]
	mov	r4, r5
	mov	r8, r1
	add	r4, #0x10
	cmp	r3, #0x63
	bne	.L18f5a
	str	r4, [sp]
	bl	AllocSpriteSlot
	strh	r0, [r6]
	ldr	r4, [sp]
.L18f5a:
	ldrh	r3, [r7, #8]
	ldr	r1, =0xfffe
	ldrh	r2, [r7, #0xc]
	add	r3, r1
	add	r2, r3
	lsl	r2, #3
	ldr	r3, .L18fa0	@ 0x1ff
	add	r2, #4
	and	r2, r3
	ldr	r1, =0xfffffe00
	ldrh	r3, [r4, #6]
	and	r1, r3
	orr	r1, r2
	ldrb	r2, [r7, #0xa]
	ldrb	r3, [r7, #0xe]
	add	r2, #0xfe
	add	r3, r2
	strh	r1, [r4, #6]
	lsl	r3, #3
	lsl	r1, #23
	sub	r3, #1
	lsr	r1, #23
	strb	r3, [r4, #4]
	strh	r1, [r5, #6]
	ldrb	r3, [r4, #4]
	strh	r3, [r5, #8]
	mov	r3, #0
	str	r3, [r5]
	ldrb	r3, [r5, #5]
	mov	r2, r8
	strb	r2, [r5, #0xe]
	cmp	r3, #0
	bne	.L18fc2
	b	.L18fbc

	.align	2, 0
.L18fa0:
	.word	0x1ff
	.pool

.L18fbc:
	add	r3, sp, #0x18
	ldrb	r3, [r3]
	strb	r3, [r5, #5]
.L18fc2:
	mov	r0, r7
	mov	r1, r5
	bl	Func_8016584
	b	.L18ff0
.L18fcc:
	cmp	r1, #0xff
	bhi	.L18ff0
	ldrh	r2, [r7, #0xe]
	add	r4, #1
	ldrh	r3, [r7, #0xc]
	add	r0, #1
	add	r2, r4
	lsl	r2, #5
	add	r3, r0
	add	r0, r2, r3
	mov	r2, #0xa0
	lsl	r2, #2
	cmp	r0, r2
	bcs	.L18ff0
	ldr	r3, =0xf000
	lsl	r2, r0, #1
	orr	r1, r3
	strh	r1, [r5, r2]
.L18ff0:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8018efc

