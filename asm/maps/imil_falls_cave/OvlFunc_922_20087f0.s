	.include "macros.inc"

.thumb_func_start OvlFunc_922_20087f0
	push	{lr}
	mov	r0, #0xf1
	bl	__PlaySound
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_824
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
	b	.Lm922_878
.Lm922_824:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_850
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
	b	.Lm922_878
.Lm922_850:
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_880
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
.Lm922_878:
	ldr	r0, =0x30e
	bl	__ClearFlag
	b	.Lm922_8a4
.Lm922_880:
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
.Lm922_8a4:
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #2
	bl	__WaitFrames
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20087f0

