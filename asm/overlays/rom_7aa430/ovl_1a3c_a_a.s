	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_923_2009a3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r9, r0
	mov	r1, #4
	mov	r0, #0x23
	sub	sp, #4
	bl	__galloc_ewram
	mov	r2, r8
	str	r2, [r0]
	ldr	r0, =0x109
	bl	__GetFlag
	mov	r3, r0
	cmp	r3, #0
	bne	.L1a7a
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r8
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000007
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r9
	mov	r0, r8
	str	r3, [r0, #4]
	b	.L1bb6
.L1a7a:
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__GetFieldActor
	mov	r7, r0
	ldr	r4, [r7, #0x10]
	mov	r3, r4
	cmp	r4, #0
	bge	.L1a96
	ldr	r0, =0xfffff
	add	r3, r4, r0
.L1a96:
	ldr	r1, [r7, #8]
	asr	r3, #20
	lsl	r2, r3, #7
	mov	r3, r1
	cmp	r1, #0
	bge	.L1aa6
	ldr	r0, =0xfffff
	add	r3, r1, r0
.L1aa6:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r2, =gBuffer
	lsl	r3, #2
	mov	r0, r8
	add	r2, r3
	ldr	r3, [r0]
	mov	r10, r2
	cmp	r3, #0
	beq	.L1b20
	ldr	r3, [r0, #0x14]
	cmp	r3, #0
	beq	.L1b20
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r0, #0x1a
	mov	r3, r4
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L1b26
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_923__0200a7e8
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r6, #0
	beq	.L1b1a
	mov	r2, r8
	ldr	r3, [r2]
	mov	r1, #6
	sub	r1, r3
	mov	r0, r6
	bl	__Sprite_SetAnim
	mov	r2, r6
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	ldrb	r2, [r6, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L1b1a:
	mov	r3, r8
	str	r5, [r3, #0x14]
	b	.L1b26
.L1b20:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x14]
.L1b26:
	mov	r2, r10
	ldrb	r3, [r2, #2]
	cmp	r3, r9
	bne	.L1bb0
	mov	r0, r8
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	beq	.L1bb0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L1bb6
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_923__0200a7d0
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	cmp	r6, #0
	beq	.L1b82
	mov	r0, r6
	mov	r1, #6
	bl	__Sprite_SetAnim
	mov	r2, r6
	ldr	r3, .L1b88	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L1b82:
	mov	r2, r8
	str	r5, [r2, #0x18]
	b	.L1bb6

	.align	2, 0
.L1b88:
	.word	0
	.pool

.L1bb0:
	mov	r3, #0
	mov	r0, r8
	str	r3, [r0, #0x18]
.L1bb6:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2009a3c
