	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_20081c8
	push	{r5, lr}
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r3, =.Lm956_5480
	ldr	r3, [r3]
	mov	r5, #0
	b	.Lm956_1e8
.Lm956_1d8:
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x77
	bgt	.Lm956_1f4
	ldr	r3, =.Lm956_5480
	ldr	r3, [r3]
.Lm956_1e8:
	cmp	r3, #3
	bne	.Lm956_1d8
	ldr	r3, =.Lm956_5484
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.Lm956_1d8
.Lm956_1f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20081c8

