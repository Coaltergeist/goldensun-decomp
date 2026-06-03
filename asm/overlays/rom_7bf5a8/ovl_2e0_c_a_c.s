	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_200848c
	push	{lr}
	bl	OvlFunc_935_2008170
	ldr	r0, =0x9aa
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4be
	bl	OvlFunc_935_2008458
	cmp	r0, #0
	beq	.L4be
	ldr	r0, =0x207
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4be
	mov	r0, #0x50
	bl	__Func_80f9080
	bl	OvlFunc_935_2008410
	ldr	r0, =0x9aa
	bl	__Func_8079358
.L4be:
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_200848c

