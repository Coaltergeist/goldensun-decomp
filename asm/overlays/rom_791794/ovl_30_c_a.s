	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_791794_f30
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.Lf4a
	bl	__Func_809509c
	bl	OvlFunc_791794_54
.Lf4a:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_791794_f30

