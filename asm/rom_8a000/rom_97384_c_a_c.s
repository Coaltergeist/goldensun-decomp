	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_08097644  @ 0x08097644
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ea8
	mov	r0, #0xa5
	ldr	r7, [r3]
	lsl	r0, #2
	add	r1, r7, r0
	ldrb	r2, [r1]
	mov	r3, r2
	sub	sp, #0x18
	cmp	r3, #0
	beq	.L97670
	add	r3, #0xff
	strb	r3, [r1]
	b	.L97856

	.pool_aligned

.L97670:
	ldr	r1, =0x28a
	add	r3, r7, r1
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #4
	add	r3, r2
	lsl	r3, #2
	add	r6, r7, r3
	mov	r5, #0
.L97688:
	mov	r2, #0xa2
	lsl	r2, #2
	add	r3, r7, r2
	ldrh	r0, [r3]
	lsl	r3, r5, #3
	add	r0, r3
	mov	r1, #0xa0
	lsl	r0, #16
	bl	__udivsi3
	bl	sin
	add	r5, #1
	asr	r0, #14
	strh	r0, [r6]
	add	r6, #2
	cmp	r5, #0x9f
	bls	.L97688
	mov	r3, #0xa2
	lsl	r3, #2
	add	r2, r7, r3
	ldrh	r3, [r2]
	ldr	r4, =0x28a
	add	r3, #4
	strh	r3, [r2]
	add	r1, r7, r4
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	cmp	r3, #0
	beq	.L97704
	ldr	r0, =0x28d
	mov	r1, #0xa3
	add	r3, r7, r0
	lsl	r1, #2
	mov	r0, #0
	ldrsb	r0, [r3, r0]
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r2, =0x28b
	lsl	r3, #5
	lsl	r0, #10
	orr	r0, r3
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	orr	r0, r3
	mov	r3, #0x80
	lsl	r3, #14
	orr	r0, r3
	mov	r1, #1
	bl	Func_8091200
	mov	r0, #1
	bl	Func_8091254
	bl	Func_80978c4
.L97704:
	mov	r4, #0xa4
	lsl	r4, #2
	add	r3, r7, r4
	ldrh	r0, [r3]
	bl	MapActor_GetActor
	mov	r1, #0
	bl	Func_808e0b0
	ldr	r0, =0x295
	add	r3, r7, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L97728
	cmp	r3, #8
	beq	.L97728
	cmp	r3, #0x10
	bne	.L97806
.L97728:
	mov	r1, #0xa4
	lsl	r1, #2
	add	r5, r7, r1
	ldrh	r0, [r5]
	bl	MapActor_GetActor
	ldr	r2, =0x292
	add	r2, r7
	mov	r6, r0
	ldrh	r0, [r2]
	mov	r11, r2
	bl	MapActor_GetActor
	mov	r9, r0
	cmp	r6, #0
	beq	.L97806
	cmp	r0, #0
	beq	.L97806
	add	r3, sp, #0xc
	mov	r10, r3
	ldr	r3, [r6, #8]
	mov	r4, r10
	str	r3, [r4]
	ldrh	r0, [r5]
	bl	Func_808d394
	mov	r1, #0
	ldrsh	r0, [r0, r1]
	bl	_GetSpriteInfo
	mov	r2, #8
	ldrsb	r2, [r0, r2]
	ldr	r3, [r6, #0xc]
	lsl	r2, #16
	ldr	r5, =0xfffe0000
	add	r3, r2
	add	r3, r5
	mov	r2, r10
	str	r3, [r2, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r2, #8]
	mov	r4, r9
	ldr	r3, [r4, #8]
	mov	r1, r11
	ldrh	r0, [r1]
	mov	r8, sp
	str	r3, [sp]
	bl	Func_808d394
	mov	r2, #0
	ldrsh	r0, [r0, r2]
	bl	_GetSpriteInfo
	mov	r4, r9
	mov	r3, #8
	ldrsb	r3, [r0, r3]
	ldr	r2, [r4, #0xc]
	lsl	r3, #16
	add	r2, r3
	mov	r0, r8
	add	r2, r5
	str	r2, [r0, #4]
	ldr	r3, [r4, #0x10]
	str	r3, [r0, #8]
	mov	r4, r8
	ldr	r0, =0x119
	ldr	r1, [r4]
	bl	_CreateActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L97806
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	ldr	r5, [r6, #0x50]
	strb	r3, [r2]
	ldr	r3, =0xa3d7
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r2, r8
	mov	r1, r10
	ldr	r3, [r2, #8]
	ldr	r0, [r1, #8]
	ldr	r1, [r1]
	sub	r0, r3
	ldr	r3, [r2]
	sub	r1, r3
	bl	atan2
	ldr	r3, =Func_8097a54
	ldr	r2, .L97814	@ 0
	str	r3, [r6, #0x6c]
	mov	r3, r5
	add	r3, #0x26
	strb	r2, [r3]
	mov	r3, #0xd
	ldrb	r2, [r5, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strh	r0, [r6, #6]
	strb	r3, [r5, #9]
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	_Actor_TravelTo
.L97806:
	ldr	r4, =0x295
	add	r5, r7, r4
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	bne	.L97844
	b	.L9783c

	.align	2, 0
.L97814:
	.word	0
	.pool

.L9783c:
	mov	r0, #0x82
	bl	_PlaySound
	ldrb	r2, [r5]
.L97844:
	add	r3, r2, #1
	mov	r0, #0xf0
	strb	r3, [r5]
	lsl	r0, #22
	lsl	r3, #24
	cmp	r3, r0
	bls	.L97856
	mov	r3, #0
	strb	r3, [r5]
.L97856:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Task_08097644

	.section .text.after, "ax", %progbits

.thumb_func_start Func_80978c4  @ 0x080978c4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ea8
	ldr	r2, =0x28e
	ldr	r5, [r3]
	add	r6, r5, r2
	ldrh	r0, [r6]
	sub	sp, #0xc
	mov	r7, #0
	lsl	r0, #16
	add	r1, sp, #8
	add	r2, sp, #4
	mov	r3, sp
	str	r7, [sp, #8]
	str	r7, [sp, #4]
	str	r7, [sp]
	bl	Func_8097948
	ldr	r3, [sp, #8]
	ldr	r2, =0x28b
	asr	r3, #18
	add	r4, r5, r2
	add	r3, #4
	strb	r3, [r4]
	ldr	r3, [sp, #4]
	add	r2, #1
	asr	r3, #18
	add	r0, r5, r2
	add	r3, #4
	strb	r3, [r0]
	ldr	r3, [sp]
	add	r2, #1
	asr	r3, #18
	add	r5, r2
	add	r3, #4
	strb	r3, [r5]
	ldrh	r3, [r6]
	add	r3, #4
	strh	r3, [r6]
	mov	r2, #0x1f
	ldrb	r1, [r4]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r4]
	ldrb	r1, [r0]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r0]
	ldrb	r3, [r5]
	and	r2, r3
	strb	r2, [r5]
	mov	r2, #0xb4
	ldrh	r3, [r6]
	lsl	r2, #1
	cmp	r3, r2
	bcc	.L97934
	strh	r7, [r6]
.L97934:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80978c4

