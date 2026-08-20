	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8097a54  @ 0x08097a54
	push	{lr}
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L97a72
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L97a72
	ldr	r3, [r0, #0x40]
	cmp	r3, r2
	bne	.L97a72
	ldr	r1, =.La0128
	bl	_Actor_SetScript
.L97a72:
	pop	{r0}
	bx	r0
.func_end Func_8097a54

