	.include "macros.inc"

.thumb_func_start OvlFunc_922_2008920
	push	{lr}
	mov	r0, #0xf1
	bl	__PlaySound
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.L952
	mov	r1, #0
	mov	r2, #0x30
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__ClearFlag
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x30d
	bl	__SetFlag
	b	.L97c
.L952:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L984
	mov	r1, #0
	mov	r2, #0x20
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__ClearFlag
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x30d
	bl	__ClearFlag
.L97c:
	ldr	r0, =0x30e
	bl	__ClearFlag
	b	.L9a8
.L984:
	mov	r1, #0
	mov	r2, #0x70
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
.L9a8:
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #2
	bl	__WaitFrames
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008920

