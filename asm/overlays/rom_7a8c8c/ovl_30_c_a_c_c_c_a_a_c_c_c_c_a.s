	.include "macros.inc"

.thumb_func_start OvlFunc_922_20087f0
	push	{lr}
	mov	r0, #0xf1
	bl	__PlaySound
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L824
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__ClearFlag
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x30d
	bl	__ClearFlag
	b	.L878
.L824:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L850
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__ClearFlag
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x30d
	bl	__ClearFlag
	b	.L878
.L850:
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.L880
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__ClearFlag
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x30d
	bl	__SetFlag
.L878:
	ldr	r0, =0x30e
	bl	__ClearFlag
	b	.L8a4
.L880:
	mov	r1, #0
	mov	r2, #0x80
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__ClearFlag
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x30d
	bl	__ClearFlag
	ldr	r0, =0x30e
	bl	__ClearFlag
.L8a4:
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #2
	bl	__WaitFrames
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20087f0

