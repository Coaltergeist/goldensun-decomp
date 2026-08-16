	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8020088  @ 0x08020088
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r0, =Func_80200cc
	ldr	r7, [r3]
	mov	r5, #0x89
	bl	StopTask
	mov	r3, #0
	mov	r8, r3
	lsl	r5, #2
	mov	r6, #3
.L200a2:
	ldr	r0, [r5, r7]
	cmp	r0, #0
	beq	.L200b0
	bl	_DeleteSprite
	mov	r3, r8
	str	r3, [r5, r7]
.L200b0:
	sub	r6, #1
	add	r5, #4
	cmp	r6, #0
	bge	.L200a2
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8020088
