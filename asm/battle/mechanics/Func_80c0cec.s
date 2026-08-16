	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0cec  @ 0x080c0cec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r2
	ldr	r2, =iwram_3001e80
	ldr	r2, [r2]
	lsl	r3, #16
	mov	r8, r2
	mov	r2, #0xc
	add	r2, r8
	mov	r5, r0
	mov	r9, r1
	mov	r0, r3
	mov	r1, #0x64
	sub	sp, #0x28
	mov	r10, r2
	bl	__divsi3
	mov	r3, r10
	mov	r2, r9
	str	r2, [r3, #4]
	mov	r2, r11
	str	r5, [r3]
	str	r2, [r3, #8]
	mov	r6, #0xff
	ldr	r2, =Func_80008ac
	add	r3, sp, #4
	mov	r5, #0
	lsl	r6, #17
	mov	r1, #0xc0
	str	r5, [r3]
	str	r5, [r3, #4]
	str	r5, [r3, #8]
	mov	r7, r0
	mov	r11, r2
	mov	r0, r6
	lsl	r1, #8
	mov	r9, r3
	bl	_call_via_r11
	lsl	r2, r6, #1
	mov	r1, r0
	mov	r0, r6
	bl	Func_8005258
	bl	InitMatrixStack
	mov	r0, r10
	bl	MatrixTranslatev
	mov	r2, r8
	mov	r3, #0x36
	ldrsh	r0, [r2, r3]
	bl	MatrixYaw
	mov	r2, r8
	mov	r3, #0x34
	ldrsh	r0, [r2, r3]
	bl	MatrixPitch
	add	r0, sp, #0x1c
	mov	r1, r8
	str	r5, [r0]
	str	r5, [r0, #4]
	str	r6, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	ldr	r3, =gPhysVec
	mov	r5, #0x78
	str	r5, [r3, #0xc]
	str	r5, [r3, #0x10]
	bl	InitMatrixStack
	mov	r0, r8
	mov	r1, r10
	bl	MatrixSetLook
	add	r6, sp, #0x10
	mov	r1, r6
	mov	r0, r9
	bl	PhysMove
	ldr	r3, [r6, #4]
	ldr	r2, [r6]
	sub	r2, r5, r2
	sub	r5, r3
	lsl	r5, #8
	mov	r1, #0xf0
	mov	r3, r5
	lsl	r1, #15
	lsl	r5, r7, #8
	lsl	r2, #8
	mov	r0, r1
	sub	r5, r7
	str	r7, [sp]
	lsl	r6, r5, #1
	bl	Func_80c0a24
	mov	r1, #0xc0
	mov	r0, r6
	lsl	r1, #8
	bl	_call_via_r11
	lsl	r5, #2
	mov	r1, r0
	mov	r2, r5
	mov	r0, r6
	bl	Func_8005258
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0cec
