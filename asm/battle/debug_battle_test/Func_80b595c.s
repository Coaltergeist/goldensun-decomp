	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b595c  @ 0x080b595c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	sub	sp, #0x10
	mov	r7, r0
	mov	r10, r3
	bl	_Func_80198dc
	mov	r6, sp
	mov	r0, r6
	bl	Func_80b6ae0
	mov	r5, #0
	cmp	r7, #0
	beq	.Lb59aa
	sub	r3, r7, #1
	mov	r8, r3
.Lb5984:
	ldrh	r0, [r6]
	mov	r1, #1
	add	r6, #2
	bl	_Func_8019908
	cmp	r5, r8
	bne	.Lb599a
	ldr	r0, =0x811
	bl	_Func_80175a0
	b	.Lb59a0
.Lb599a:
	ldr	r0, =0x810
	bl	_Func_80175a0
.Lb59a0:
	add	r5, #1
	bl	WaitTextPrompt
	cmp	r5, r7
	bne	.Lb5984
.Lb59aa:
	bl	_Func_80174d8
	mov	r3, r10
	add	r3, #0x45
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lb59d0
	bl	_Func_80198dc
	mov	r0, #0
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x812
	bl	_Func_80175a0
	bl	WaitTextPrompt
	b	.Lb59ea
.Lb59d0:
	cmp	r3, #2
	bne	.Lb59ea
	bl	_Func_80198dc
	mov	r0, #0
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x813
	bl	_Func_80175a0
	bl	WaitTextPrompt
.Lb59ea:
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b595c

	.section .rodata

.Lc3f34:
	.incrom 0xc3f34, 0xc5938
