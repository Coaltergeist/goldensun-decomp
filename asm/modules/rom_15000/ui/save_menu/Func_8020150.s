	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8020150  @ 0x08020150
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	sub	sp, #8
	cmp	r7, #0
	beq	.L2018c
	mov	r3, #0x10
	mov	r5, r1
	mov	r4, #0
	mov	r8, r3
	mov	r6, #3
	add	r5, #0x28
.L2016a:
	ldrb	r0, [r5]
	mov	r3, r8
	lsl	r0, #24
	str	r3, [sp]
	asr	r0, #24
	mov	r3, r4
	mov	r1, #2
	mov	r2, r7
	str	r4, [sp, #4]
	bl	Func_801e9d4
	ldr	r4, [sp, #4]
	sub	r6, #1
	add	r5, #1
	add	r4, #0x18
	cmp	r6, #0
	bge	.L2016a
.L2018c:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8020150
