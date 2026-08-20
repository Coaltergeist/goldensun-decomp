	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801bcd4  @ 0x0801bcd4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r3
	mov	r3, #1
	sub	sp, #0xc
	mov	r4, r2
	neg	r3, r3
	mov	r7, r0
	mov	r5, r1
	str	r2, [sp, #8]
	mov	r6, r4
	cmp	r4, r3
	bne	.L1bcfe
	bl	AllocSpriteSlot
	mov	r4, r0
	str	r0, [sp, #8]
	mov	r0, r6
	cmp	r4, #0x60
	beq	.L1bd86
.L1bcfe:
	sub	r0, r7, #1
	cmp	r0, #8
	bhi	.L1bd84
	ldr	r2, =.L1bd0c
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1bd0c:
	.word	.L1bd30
	.word	.L1bd42
	.word	.L1bd84
	.word	.L1bd5a
	.word	.L1bd84
	.word	.L1bd30
	.word	.L1bd4e
	.word	.L1bd6c
	.word	.L1bd78

.L1bd30:
	mov	r1, #1
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, r8
	bl	LoadOldUIIcon
	b	.L1bd82
.L1bd42:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0x3a
	bl	LoadInventoryIcon
	b	.L1bd82
.L1bd4e:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0x2a
	bl	LoadInventoryIcon
	b	.L1bd82
.L1bd5a:
	mov	r1, #1
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r5
	mov	r1, r8
	bl	LoadMoveIcon
	b	.L1bd82
.L1bd6c:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0
	bl	LoadStatusIcon
	b	.L1bd82
.L1bd78:
	mov	r2, r4
	mov	r0, r5
	mov	r1, #0
	bl	LoadUIBanner
.L1bd82:
	ldr	r4, [sp, #8]
.L1bd84:
	mov	r0, r4
.L1bd86:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801bcd4

