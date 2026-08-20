	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008970
	push	{r5, lr}
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r3, =.Lm955_4834
	ldr	r3, [r3]
	mov	r5, #0
	b	.Lm955_994
.Lm955_980:
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x96
	add	r5, #1
	lsl	r3, #2
	cmp	r5, r3
	bge	.Lm955_9a0
	ldr	r3, =.Lm955_4834
	ldr	r3, [r3]
.Lm955_994:
	cmp	r3, #0
	bne	.Lm955_980
	ldr	r3, =.Lm955_4838
	ldr	r3, [r3]
	cmp	r3, #0x4b
	bne	.Lm955_980
.Lm955_9a0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008970

