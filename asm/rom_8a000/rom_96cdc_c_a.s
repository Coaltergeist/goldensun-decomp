	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8096fb0  @ 0x08096fb0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r0
	ldr	r0, =iwram_3001ebc
	mov	r3, r0
	sub	r3, #0x4c
	ldr	r2, [r0]
	ldr	r7, [r3]
	ldr	r3, =0xcc6
	mov	r10, r2
	add	r3, r10
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	sub	sp, #4
	mov	r9, r1
	cmp	r6, #0
	bne	.L97004
	mov	r1, #0xe4
	lsl	r1, #3
	mov	r0, #0x38
	bl	galloc_iwram
	mov	r5, r0
	mov	r0, sp
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x850001c8
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.L97006

	.pool_aligned

.L97004:
	ldr	r5, [r0, #0x74]
.L97006:
	mov	r3, r8
	strh	r3, [r5, #0x1c]
	mov	r0, r8
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	strh	r3, [r5, #0x1e]
	ldr	r3, =0xcc6
	add	r3, r10
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	cmp	r6, #0
	bne	.L970d8
	bl	Func_8096c24
	ldr	r3, .L97064	@ 0x200
	mov	r2, r5
	sub	r3, r0
	add	r2, #0x4a
	strh	r3, [r2]
	mov	r3, r5
	add	r3, #0x21
	mov	r4, r9
	strb	r4, [r3]
	mov	r0, #1
	add	r3, #1
	strb	r0, [r3]
	ldr	r2, =0x71c
	sub	r3, #2
	strb	r0, [r3]
	add	r3, #3
	strb	r0, [r3]
	add	r3, r5, r2
	strb	r0, [r3]
	ldr	r3, [r7, #4]
	str	r3, [r5, #0x4c]
	ldr	r3, [r7, #8]
	str	r3, [r5, #0x50]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #0x54]
	ldr	r3, =gState
	mov	r12, r3
	mov	r3, #0xed
	lsl	r3, #1
	add	r3, r12
	b	.L97074

	.align	2, 0
.L97064:
	.word	0x200
	.pool

.L97074:
	ldrh	r1, [r3]
	mov	r4, #0
	ldrsh	r2, [r3, r4]
	ldr	r3, =0x35
	cmp	r2, r3
	bne	.L97086
	mov	r3, r5
	add	r3, #0x45
	strb	r0, [r3]
.L97086:
	lsl	r3, r1, #16
	ldr	r2, =0x37
	asr	r3, #16
	cmp	r3, r2
	bne	.L97096
	mov	r3, r5
	add	r3, #0x45
	strb	r0, [r3]
.L97096:
	mov	r3, #0xfa
	lsl	r3, #1
	add	r3, r12
	mov	r1, #1
	ldr	r0, [r3]
	neg	r1, r1
	bl	Func_80970f8
	mov	r2, #0x1e
	ldrsh	r3, [r5, r2]
	cmp	r3, #8
	beq	.L970b6
	mov	r3, #0xcc
	lsl	r3, #4
	add	r3, r10
	strh	r6, [r3]
.L970b6:
	bl	AllocSpriteSlot
	mov	r3, r5
	add	r3, #0x46
	strh	r0, [r3]
	mov	r1, #0x80
	lsl	r0, #16
	lsl	r1, #1
	asr	r0, #16
	ldr	r2, =.L9c410
	bl	UploadSpriteGFX
	mov	r1, #0xc8
	ldr	r0, =Func_8096f8c
	lsl	r1, #4
	bl	StartTask
.L970d8:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8096fb0

