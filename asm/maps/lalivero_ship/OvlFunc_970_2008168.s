	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_2008168
	push	{lr}
	ldr	r2, =.Lm970_17f4
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x28
	bne	.Lm970_186
	ldr	r1, =.Lm970_17f0
	ldr	r3, [r1]
	cmp	r3, #4
	ble	.Lm970_186
	sub	r3, #1
	str	r3, [r1]
	mov	r3, #0
	str	r3, [r2]
.Lm970_186:
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008168

