	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitSprites  @ 0x0800bb20
	push	{r5, r6, r7, lr}
	sub	sp, #4
	cmp	r0, #3
	bne	.Lbb40
	mov	r1, #0xe0
	lsl	r1, #4
	mov	r0, #4
	bl	galloc_ewram
	mov	r1, #0xc0
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #3
	bl	galloc_ewram
	b	.Lbb56
.Lbb40:
	mov	r1, #0xe0
	lsl	r1, #4
	mov	r0, #4
	bl	galloc_iwram
	mov	r1, #0xc0
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #3
	bl	galloc_iwram
.Lbb56:
	mov	r6, r0
	bl	LoadSpritePalette
	mov	r5, #0
	mov	r4, sp
	str	r5, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r7
	ldr	r2, =0x85000380
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r5, [r4]
	mov	r0, r4
	mov	r1, r6
	ldr	r2, =0x85000180
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r2, =.L12f20
	mov	r1, #0x80
	mov	r0, #0x5d
	bl	UploadSpriteGFX
	ldr	r5, =0x7c
	mov	r0, #0x35
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_800a418
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end InitSprites

