	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ef68  @ 0x0801ef68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r6, r0
	sub	sp, #4
	mov	r9, r3
	mov	r3, #0
	str	r3, [sp]
	ldrh	r3, [r6, #8]
	sub	r3, #1
	mov	r2, #1
	mov	r11, r3
	mov	r3, r1
	and	r3, r2
	ldrh	r7, [r6, #0xa]
	cmp	r3, #0
	bne	.L1ef9c
	mov	r3, #3
	neg	r3, r3
	and	r1, r3
.L1ef9c:
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	beq	.L1efaa
	mov	r2, #5
	str	r2, [sp]
	mov	r2, #0
.L1efaa:
	ldr	r1, =.L371c4
	mov	r5, r2
	b	.L1f012
.L1efb0:
	ldrsb	r3, [r2, r5]
	ldr	r2, [sp]
	add	r0, r3, r2
	cmp	r0, r11
	bcs	.L1f010
	mov	r4, #0
	cmp	r7, #0
	beq	.L1f010
	ldr	r3, =0xf018
	sub	r2, r7, #1
	mov	r12, r2
	ldr	r2, =0xf00f
	mov	r10, r3
	add	r3, #1
	mov	r8, r3
	mov	r14, r2
.L1efd0:
	ldrh	r2, [r6, #0xe]
	ldrh	r3, [r6, #0xc]
	add	r2, r4
	add	r3, r0
	lsl	r2, #5
	add	r2, r3
	lsl	r2, #1
	mov	r3, r9
	add	r1, r2, r3
	cmp	r4, #0
	bne	.L1efea
	mov	r2, r10
	b	.L1f006
.L1efea:
	cmp	r4, r12
	bne	.L1f004
	mov	r3, r8
	strh	r3, [r1]
	b	.L1f008

	.pool_aligned

.L1f004:
	mov	r2, r14
.L1f006:
	strh	r2, [r1]
.L1f008:
	add	r4, #1
	cmp	r4, r7
	bne	.L1efd0
	ldr	r1, =.L371c4
.L1f010:
	add	r5, #1
.L1f012:
	mov	r2, r1
	ldrsb	r3, [r2, r5]
	cmp	r3, #0
	bge	.L1efb0
	ldr	r3, =0xea5
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1f054
	ldrh	r3, [r6, #0xa]
	ldrh	r2, [r6, #0xe]
	add	r2, r3
	ldrh	r3, [r6, #0xc]
	lsl	r2, #6
	lsl	r3, #1
	add	r2, r9
	add	r2, r3
	mov	r1, r2
	ldr	r3, .L1f060	@ 0xf080
	sub	r1, #0x40
	mov	r0, #1
	strh	r3, [r1]
	add	r1, #2
	cmp	r0, r11
	bcs	.L1f050
	ldr	r3, .L1f064	@ 0xf081
.L1f046:
	add	r0, #1
	strh	r3, [r1]
	add	r1, #2
	cmp	r0, r11
	bcc	.L1f046
.L1f050:
	ldr	r3, .L1f068	@ 0xf082
	strh	r3, [r1]
.L1f054:
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r9
	strb	r3, [r2]
	add	sp, #4
	b	.L1f078

	.align	2, 0
.L1f060:
	.word	0xf080
.L1f064:
	.word	0xf081
.L1f068:
	.word	0xf082
	.pool

.L1f078:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ef68

