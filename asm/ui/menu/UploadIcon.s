	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UploadIcon  @ 0x0801bc34
	push	{r5, lr}
	mov	r3, #1
	sub	sp, #0xc
	neg	r3, r3
	sub	r0, #1
	mov	r5, r1
	str	r3, [sp, #8]
	cmp	r0, #8
	bhi	.L1bcc6
	ldr	r2, =.L1bc50
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1bc50:
	.word	.L1bc74
	.word	.L1bc84
	.word	.L1bcc6
	.word	.L1bcb6
	.word	.L1bcc6
	.word	.L1bc74
	.word	.L1bcc6
	.word	.L1bcc6
	.word	.L1bc9a

.L1bc74:
	mov	r1, #0
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	str	r1, [sp]
	bl	LoadOldUIIcon
	b	.L1bcc6
.L1bc84:
	bl	AllocSpriteSlot
	mov	r2, r0
	str	r2, [sp, #8]
	cmp	r2, #0x60
	beq	.L1bca6
	mov	r0, r5
	mov	r1, #0x1a
	bl	LoadInventoryIcon
	b	.L1bcc6
.L1bc9a:
	bl	AllocSpriteSlot
	mov	r2, r0
	str	r2, [sp, #8]
	cmp	r2, #0x60
	bne	.L1bcac
.L1bca6:
	mov	r0, #1
	neg	r0, r0
	b	.L1bcc8
.L1bcac:
	mov	r0, r5
	mov	r1, #0
	bl	LoadUIBanner
	b	.L1bcc6
.L1bcb6:
	mov	r1, #0
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, #1
	bl	LoadMoveIcon
.L1bcc6:
	ldr	r0, [sp, #8]
.L1bcc8:
	add	sp, #0xc
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end UploadIcon

