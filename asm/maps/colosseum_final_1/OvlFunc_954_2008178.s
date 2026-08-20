	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2008178
	push	{r5, r6, lr}
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r2, =.Lm954_441c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0x16
	beq	.Lm954_19e
	mov	r6, r2
.Lm954_18c:
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x77
	bgt	.Lm954_19e
	ldr	r3, [r6]
	cmp	r3, #0x16
	bne	.Lm954_18c
.Lm954_19e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008178

