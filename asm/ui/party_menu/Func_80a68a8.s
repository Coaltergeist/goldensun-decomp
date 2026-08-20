	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a68a8  @ 0x080a68a8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r8, r0
	mov	r6, r3
	add	r6, #0x48
	mov	r5, r8
	mov	r7, #0x1f
.La68bc:
	ldrh	r1, [r5]
	add	r5, #2
	cmp	r1, #0
	beq	.La68d0
	ldr	r3, [r6]
	mov	r0, #4
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_801bcd4
.La68d0:
	sub	r7, #1
	add	r6, #4
	cmp	r7, #0
	bge	.La68bc
	mov	r0, r8
	bl	Func_80a3d24
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a68a8

