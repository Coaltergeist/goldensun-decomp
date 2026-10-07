	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_20080fc
	push	{lr}
	ldr	r3, [r0, #0x4c]
	cmp	r3, #0
	beq	.Lm945_10a
	sub	r3, #1
	str	r3, [r0, #0x4c]
	b	.Lm945_10e
.Lm945_10a:
	mov	r0, #1
	b	.Lm945_128
.Lm945_10e:
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm945_126
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.Lm945_126
	ldr	r3, [r0, #0x40]
	mov	r0, #1
	cmp	r3, r2
	beq	.Lm945_128
.Lm945_126:
	mov	r0, #0
.Lm945_128:
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_20080fc

