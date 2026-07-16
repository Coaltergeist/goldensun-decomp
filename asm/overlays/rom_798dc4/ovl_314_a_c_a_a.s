	.include "macros.inc"

.thumb_func_start OvlFunc_903_2008348
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L35c
	ldr	r2, =0xfffff
	add	r3, r2
.L35c:
	ldr	r0, =0x861
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x862
	bl	__ClearFlag
	cmp	r5, #0xf
	bne	.L384
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	b	.L3bc
.L384:
	cmp	r5, #0x10
	bne	.L3a2
	mov	r3, #0x12
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	ldr	r0, =0x861
	bl	__SetFlag
	b	.L3bc
.L3a2:
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	ldr	r0, =0x862
	bl	__SetFlag
.L3bc:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_903_2008348

