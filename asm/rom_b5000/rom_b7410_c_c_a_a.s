	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7f9c  @ 0x080b7f9c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r5, #0x36]
	mov	r3, #0xfe
	lsl	r3, #8
	strh	r3, [r5, #0x34]
	mov	r3, #0xff
	mov	r6, #0
	lsl	r3, #17
	str	r3, [r5, #0x20]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x14]
	str	r6, [r5, #0x1c]
	str	r6, [r5, #0x18]
	sub	sp, #0xc
	bl	InitMatrixStack
	mov	r0, r5
	add	r0, #0xc
	bl	MatrixTranslatev
	mov	r3, #0x36
	ldrsh	r0, [r5, r3]
	bl	MatrixYaw
	mov	r3, #0x34
	ldrsh	r0, [r5, r3]
	bl	MatrixPitch
	mov	r0, sp
	str	r6, [r0]
	str	r6, [r0, #4]
	ldr	r3, [r5, #0x20]
	mov	r1, r5
	str	r3, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b7f9c
