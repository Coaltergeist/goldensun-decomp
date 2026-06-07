	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_2008674
	push	{lr}
	bl	__Func_8093c00
	cmp	r0, #0
	bne	.L686
	ldr	r3, =.L2dd0
	ldr	r2, [r3]
	ldr	r3, .L68c	@ 0xffffffff
	strh	r3, [r2]
.L686:
	pop	{r0}
	bx	r0

	.align	2, 0
.L68c:
	.word	0xffffffff
.func_end OvlFunc_918_2008674

