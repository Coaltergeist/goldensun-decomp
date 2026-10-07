	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a5578  @ 0x080a5578
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0x86
	mov	r8, r3
	lsl	r2, #2
	mov	r5, r1
	mov	r6, r8
	add	r5, r2
	add	r6, #2
	mov	r10, r0
	ldrb	r0, [r6, r5]
	bl	Func_80a3d6c
	mov	r7, r0
	ldrb	r0, [r6, r5]
	bl	_GetUnit
	ldrb	r3, [r6, r5]
	mov	r2, #0x98
	lsl	r2, #2
	add	r3, r2
	mov	r2, r8
	ldrsb	r6, [r2, r3]
	add	r3, r6, #1
	mov	r11, r0
	cmp	r3, r7
	ble	.La55be
	sub	r6, r7, #1
.La55be:
	mov	r1, #5
	mov	r0, r6
	bl	__divsi3
	mov	r1, #5
	mov	r9, r0
	mov	r0, r6
	bl	__modsi3
	mov	r1, #5
	mov	r8, r0
	mov	r0, r7
	bl	__divsi3
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	__modsi3
	cmp	r0, #0
	beq	.La55ea
	add	r5, #1
.La55ea:
	mov	r2, r10
	mov	r3, r11
	str	r3, [r2]
	mov	r3, r9
	str	r3, [r2, #8]
	mov	r3, r8
	str	r5, [r2, #0xc]
	str	r3, [r2, #0x10]
	str	r7, [r2, #0x14]
	str	r6, [r2, #0x18]
	mov	r0, #1
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5578

