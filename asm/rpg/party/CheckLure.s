	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CheckLure  @ 0x08077c10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x167
	sub	sp, #8
	bl	ClearFlag
	bl	GetPartySize
	mov	r10, r0
	mov	r0, #0
	mov	r8, r0
	cmp	r8, r10
	bge	.L77c9e
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #2
	mov	r9, r2
	mov	r11, r3
.L77c44:
	mov	r2, r9
	ldrb	r0, [r2]
	bl	GetUnit
	mov	r2, #0xd8
	mov	r7, r0
	mov	r1, #0xe
.L77c52:
	ldrh	r3, [r2, r7]
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0
	beq	.L77c8c
	ldrh	r0, [r2, r7]
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	GetItemInfo
	mov	r5, r0
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	add	r5, #0x18
	mov	r6, #3
.L77c70:
	ldrb	r3, [r5]
	add	r5, #4
	cmp	r3, #0x1b
	bne	.L77c86
	ldr	r0, =0x167
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	SetFlag
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
.L77c86:
	sub	r6, #1
	cmp	r6, #0
	bge	.L77c70
.L77c8c:
	sub	r1, #1
	add	r2, #2
	cmp	r1, #0
	bge	.L77c52
	mov	r2, #1
	add	r8, r2
	add	r9, r2
	cmp	r8, r10
	blt	.L77c44
.L77c9e:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end CheckLure
