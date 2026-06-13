	.include "macros.inc"

.thumb_func_start OvlFunc_922_20085b8
	push	{lr}
	mov	r0, #0xf1
	bl	__PlaySound
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5d6
	ldr	r0, =0x30d
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5f2
.L5d6:
	mov	r1, #0x30
	neg	r1, r1
	mov	r0, #8
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x309
	bl	__SetFlag
	b	.L60c
.L5f2:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #8
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x309
	bl	__ClearFlag
.L60c:
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #2
	bl	__WaitFrames
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20085b8

