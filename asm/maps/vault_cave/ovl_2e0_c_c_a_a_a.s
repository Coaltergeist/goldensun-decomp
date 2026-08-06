	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_20084d0
	push	{lr}
	ldr	r0, =0x9aa
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_4fe
	bl	OvlFunc_935_2008458
	cmp	r0, #0
	beq	.Lm935_4fe
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_4fe
	mov	r0, #0x50
	bl	__PlaySound
	bl	OvlFunc_935_2008410
	ldr	r0, =0x9aa
	bl	__SetFlag
.Lm935_4fe:
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20084d0

