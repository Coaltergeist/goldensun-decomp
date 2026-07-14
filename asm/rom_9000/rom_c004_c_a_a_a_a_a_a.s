	.include "macros.inc"
	.include "gba.inc"

	.section .text.after, "ax", %progbits

	.section .text.after_c0f4, "ax", %progbits

.thumb_func_start CreateActor  @ 0x0800c150
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r7, r0
	mov	r11, r3
	mov	r9, r1
	str	r2, [sp]
	bl	NewActor
	mov	r3, r7
	cmp	r7, #0
	bge	.Lc176
	ldr	r2, .Lc1c8	@ 0xfff
	add	r3, r7, r2
.Lc176:
	asr	r5, r3, #12
	ldr	r3, .Lc1c8	@ 0xfff
	and	r7, r3
	bl	NewActor
	mov	r6, r0
	cmp	r6, #0
	bne	.Lc188
	b	.Lc2be
.Lc188:
	mov	r3, #0x10
	strh	r3, [r6, #0x20]
	cmp	r5, #0
	beq	.Lc196
	cmp	r5, #2
	beq	.Lc1cc
	b	.Lc230
.Lc196:
	mov	r0, r7
	bl	CreateSprite
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc1ba
	mov	r2, r6
	mov	r3, #1
	add	r2, #0x54
	strb	r3, [r2]
	mov	r0, r7
	str	r5, [r6, #0x50]
	bl	_GetSpriteInfo
	ldrb	r3, [r0, #9]
	lsr	r3, #1
	strh	r3, [r6, #0x20]
	b	.Lc230
.Lc1ba:
	mov	r2, r6
	ldr	r3, .Lc1c4	@ 0
	add	r2, #0x54
	strb	r3, [r2]
	b	.Lc230

	.align	2, 0
.Lc1c4:
	.word	0
.Lc1c8:
	.word	0xfff

.Lc1cc:
	ldr	r3, =iwram_3001e68
	ldr	r1, [r3]
	mov	r0, r1
	add	r0, #0x18
	ldr	r3, [r0]
	lsl	r2, r3, #2
	add	r1, r2
	add	r3, #1
	str	r3, [r0]
	mov	r10, r1
	mov	r3, r6
	mov	r4, #8
	add	r4, r10
	add	r3, #0x54
	strb	r5, [r3]
	mov	r8, r4
	add	r0, sp, #4
	mov	r3, #0
	str	r3, [r0]
	str	r4, [r6, #0x50]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r8
	ldr	r2, =0x85000004
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r7
	bl	CreateSprite
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc220
	mov	r0, r7
	bl	_GetSpriteInfo
	ldrb	r3, [r0, #9]
	lsr	r3, #1
	mov	r2, r8
	strh	r3, [r6, #0x20]
	mov	r3, #0xc
	add	r3, r10
	str	r5, [r2]
	mov	r8, r3
.Lc220:
	add	r0, r7, #1
	bl	CreateSprite
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc230
	mov	r4, r8
	str	r5, [r4]
.Lc230:
	cmp	r6, #0
	beq	.Lc2be
	mov	r0, r6
	mov	r1, r9
	ldr	r2, [sp]
	mov	r3, r11
	bl	Actor_SetPos
	ldr	r3, =.L1358c
	str	r3, [r6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x55
	add	r3, r6
	mov	r12, r3
	mov	r2, #0x80
	lsl	r2, #9
	mov	r1, #0
	mov	r3, #3
	mov	r4, r12
	strh	r1, [r6, #4]
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	str	r2, [r6, #0x34]
	ldr	r0, .Lc28c	@ 0
	strb	r3, [r4]
	str	r2, [r6, #0x48]
	mov	r3, r6
	mov	r2, #0x80
	lsl	r2, #7
	add	r3, #0x59
	str	r2, [r6, #0x44]
	strb	r0, [r3]
	mov	r0, r6
	add	r0, #0x5a
	mov	r3, #1
	strb	r3, [r0]
	str	r1, [r6, #0x4c]
	mov	r1, r9
	strh	r2, [r6, #6]
	cmp	r1, #0
	bge	.Lc2a4
	ldr	r2, =0xffff
	add	r1, r2
	b	.Lc2a4

	.align	2, 0
.Lc28c:
	.word	0
	.pool

.Lc2a4:
	mov	r3, r6
	add	r3, #0x64
	asr	r2, r1, #16
	strh	r2, [r3]
	mov	r3, r11
	cmp	r3, #0
	bge	.Lc2b6
	ldr	r4, =0xffff
	add	r3, r4
.Lc2b6:
	mov	r2, r6
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
.Lc2be:
	mov	r0, r6
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CreateActor
