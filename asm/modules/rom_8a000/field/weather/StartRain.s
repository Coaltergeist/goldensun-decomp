	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartRain  @ 0x08094ac8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x82
	lsl	r1, #3
	mov	r0, #0x1d
	sub	sp, #8
	bl	galloc_ewram
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r5, r0
	mov	r0, #0xaa
	mov	r8, r3
	bl	Func_8091ff0
	mov	r6, #0
	mov	r7, r5
	add	r0, sp, #4
	add	r7, #8
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000104
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	bl	galloc_ewram
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =Data_9ff58
	bl	DecompressLZ1
	bl	AllocSpriteSlot
	mov	r1, #0xc0
	str	r0, [r5]
	lsl	r1, #2
	mov	r2, r6
	bl	UploadSpriteGFX
	str	r0, [r5, #4]
	mov	r0, #0xe
	bl	gfree
	mov	r5, #0
.L94b2c:
	mov	r4, #0
	mov	r6, r7
	stmia	r6!, {r4}
	ldr	r3, =0x40000400
	stmia	r6!, {r3}
	mov	r3, #0xd4
	lsl	r3, #8
	str	r3, [r6]
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r2, [r3, #8]
	mov	r0, #0
	str	r1, [r7, #0xc]
	str	r2, [r7, #0x14]
	asr	r1, #16
	asr	r2, #16
	str	r4, [sp]
	bl	_Func_8011f54
	ldr	r2, .L94b8c	@ 0xf
	mov	r3, r5
	and	r3, r2
	lsl	r0, #16
	add	r3, #1
	add	r5, #1
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	ldr	r4, [sp]
	add	r7, #0x20
	cmp	r5, #0x1f
	bls	.L94b2c
	ldr	r3, =REG_BLDCNT
	mov	r2, #0xfc
	lsl	r2, #6
	strh	r2, [r3]
	ldr	r2, =0x1008
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r4, [r3]
	ldr	r0, =Task_Rain
	mov	r1, #0xc8
	lsl	r1, #4
	bl	StartTask
	add	sp, #8
	b	.L94bb0

	.align	2, 0
.L94b8c:
	.word	0xf
	.pool

.L94bb0:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end StartRain

