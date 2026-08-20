	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008368
	push	{lr}
	ldr	r0, =0x9a9
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_390
	bl	OvlFunc_935_2008170
	bl	OvlFunc_935_2008334
	cmp	r0, #0
	beq	.Lm935_390
	ldr	r0, =0x9a9
	bl	__SetFlag
	mov	r0, #0x50
	bl	__PlaySound
	bl	OvlFunc_935_2008398
.Lm935_390:
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008368

