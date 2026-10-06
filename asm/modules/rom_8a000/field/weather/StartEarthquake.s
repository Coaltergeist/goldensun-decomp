	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartEarthquake  @ 0x0809509c
	push	{r5, r6, r7, lr}
	mov	r1, #0x82
	lsl	r1, #3
	mov	r0, #0x1d
	sub	sp, #4
	bl	galloc_ewram
	mov	r5, r0
	mov	r7, r5
	mov	r1, #0
	mov	r0, sp
	str	r1, [r0]
	add	r7, #8
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
	ldr	r0, =Data_a00b8
	bl	DecompressLZ1
	bl	AllocSpriteSlot
	mov	r1, #0x80
	mov	r2, r6
	str	r0, [r5]
	lsl	r1, #2
	bl	UploadSpriteGFX
	str	r0, [r5, #4]
	mov	r0, #0xe
	bl	gfree
	mov	r5, #0
	mov	r6, #0
.L950f0:
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r1, r7
	stmia	r1!, {r6}
	ldr	r2, [r3]
	ldr	r3, =0x40000400
	stmia	r1!, {r3}
	mov	r3, #0xd4
	lsl	r3, #8
	str	r3, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #8]
	asr	r1, #16
	str	r6, [r7, #0xc]
	str	r6, [r7, #0x14]
	asr	r2, #16
	mov	r0, #0
	bl	_Func_8011f54
	ldr	r2, .L9513c	@ 0xf
	mov	r3, r5
	and	r3, r2
	lsl	r0, #16
	add	r3, #1
	add	r5, #1
	str	r0, [r7, #0x10]
	strh	r3, [r7, #0x1c]
	add	r7, #0x20
	cmp	r5, #0x1f
	bls	.L950f0
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Task_Earthquake
	bl	StartTask
	add	sp, #4
	b	.L95158

	.align	2, 0
.L9513c:
	.word	0xf
	.pool

.L95158:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end StartEarthquake

