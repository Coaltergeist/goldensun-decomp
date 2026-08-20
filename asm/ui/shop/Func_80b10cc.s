	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b10cc  @ 0x080b10cc
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	ldr	r5, [r3, #0xc]
	sub	sp, #4
	cmp	r5, #0
	beq	.Lb10f8
	ldr	r0, =0xc8a
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	ldr	r3, =gState
	ldr	r0, [r3, #0x10]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #6
	mov	r2, r5
	mov	r3, #0x20
	bl	_Func_801ea08
.Lb10f8:
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80b10cc

