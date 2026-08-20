	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ed40  @ 0x0801ed40
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	mov	r6, r0
	mov	r0, #0x20
	sub	sp, #0x10
	mov	r5, r1
	mov	r8, r2
	ldr	r7, [r3]
	bl	_GetFlag
	cmp	r0, #0
	beq	.L1ed68
	cmp	r5, #0
	bne	.L1ed62
	mov	r5, #0x12
.L1ed62:
	cmp	r5, #1
	bne	.L1ed68
	mov	r5, #0x13
.L1ed68:
	mov	r0, r5
	bl	GetPortrait
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L1edb0
	cmp	r6, #1
	bls	.L1ed92
	ldr	r2, =0x12ee
	add	r3, r7, r2
	ldrh	r3, [r3]
	mov	r6, #1
	cmp	r3, r0
	beq	.L1ed92
	ldr	r2, =0x12ec
	add	r3, r7, r2
	ldrh	r3, [r3]
	cmp	r3, r0
	bne	.L1edb0
	mov	r6, #0
.L1ed92:
	ldr	r2, =0x12f0
	lsl	r3, r6, #1
	add	r3, r2
	mov	r1, r6
	ldrh	r3, [r7, r3]
	add	r1, #0xe
	str	r1, [sp]
	mov	r1, #1
	str	r3, [sp, #0xc]
	str	r1, [sp, #4]
	add	r2, sp, #0xc
	add	r3, sp, #8
	mov	r1, r8
	bl	LoadPortrait
.L1edb0:
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ed40

