	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_f30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.Lf4a
	bl	__Func_9509c
	bl	OvlFunc_54
.Lf4a:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_f30

