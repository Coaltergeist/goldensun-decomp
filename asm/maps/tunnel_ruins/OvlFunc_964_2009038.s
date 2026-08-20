	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_2009038
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, #0x3c
.Lm964_103e:
	cmp	r6, #0
	beq	.Lm964_1054
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #0x14]
	sub	r6, #1
	cmp	r3, r2
	bgt	.Lm964_103e
	b	.Lm964_1056
.Lm964_1054:
	ldr	r2, [r5, #0x14]
.Lm964_1056:
	mov	r3, #0
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x3c]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009038

