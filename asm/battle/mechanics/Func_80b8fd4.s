	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8fd4  @ 0x080b8fd4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	add	r3, #0x80
	ldr	r3, [r3]
	mov	r8, r3
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	mov	r2, r8
	mov	r6, #0
	lsl	r3, #7
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x14]
	str	r3, [r2]
	strh	r3, [r5, #0x36]
	mov	r3, #0xf4
	lsl	r3, #8
	strh	r3, [r5, #0x34]
	ldr	r3, =0x2ee0000
	str	r6, [r5, #0x1c]
	str	r3, [r5, #0x20]
	str	r6, [r5, #0x18]
	sub	sp, #0x10
	mov	r10, r0
	bl	InitMatrixStack
	mov	r0, r5
	add	r0, #0xc
	bl	MatrixTranslatev
	mov	r3, #0x36
	ldrsh	r0, [r5, r3]
	bl	MatrixYaw
	mov	r2, #0x34
	ldrsh	r0, [r5, r2]
	bl	MatrixPitch
	add	r0, sp, #4
	str	r6, [r0]
	str	r6, [r0, #4]
	ldr	r3, [r5, #0x20]
	mov	r1, r5
	str	r3, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	mov	r1, #0xc0
	ldr	r3, =Func_80008ac
	lsl	r1, #8
	ldr	r0, =0x3c90000
	bl	_call_via_r3
	ldr	r2, =0x7920000
	mov	r1, r0
	mov	r0, #0
	bl	Func_8005258
	ldr	r2, =gPhysVec
	mov	r3, r10
	add	r3, #0x78
	str	r3, [r2, #0x10]
	mov	r1, #0x76
	mov	r2, r10
	mov	r5, #1
	mov	r3, r8
	sub	r1, r2
	mov	r2, #0x80
	str	r5, [r3, #0x10]
	lsl	r2, #10
	mov	r0, #0xf0
	mov	r3, #0x80
	str	r2, [sp]
	lsl	r0, #15
	lsl	r1, #16
	lsl	r3, #4
	mov	r2, #0
	bl	Func_80c0a24
	mov	r3, r8
	str	r5, [r3, #0x14]
	str	r6, [r3, #0x10]
	add	sp, #0x10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b8fd4
