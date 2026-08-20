	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1c54  @ 0x080c1c54
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r0, [sp, #8]
	mov	r0, #0x24
	mov	r10, r1
	bl	alloc_ewram
	mov	r9, r0
	ldr	r0, [sp, #8]
	bl	_GetUnit
	mov	r7, r0
	mov	r6, r7
	add	r6, #0x10
	mov	r2, #0x24
	ldr	r3, =Func_8001af8
	mov	r1, r6
	mov	r0, r9
	bl	_call_via_r3
	mov	r1, r10
	lsl	r3, r1, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r5, [r6, r0]
	lsl	r0, r3, #5
	mov	r1, #0xa
	add	r0, r10
	mov	r11, r3
	bl	__divsi3
	add	r5, r0
	mov	r0, r9
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1cb6
	mov	r5, r0
.Lc1cb6:
	ldr	r1, =0x270f
	mov	r8, r1
	cmp	r5, r8
	ble	.Lc1cc0
	mov	r5, r8
.Lc1cc0:
	mov	r3, r10
	lsl	r3, #4
	strh	r5, [r6]
	mov	r1, r10
	sub	r0, r3, r1
	mov	r1, #0xa
	mov	r2, #0x12
	ldrsh	r5, [r7, r2]
	str	r3, [sp, #4]
	bl	__divsi3
	add	r5, r0
	mov	r0, r9
	mov	r2, #2
	ldrsh	r3, [r0, r2]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1cee
	mov	r5, r0
.Lc1cee:
	cmp	r5, r8
	ble	.Lc1cf4
	mov	r5, r8
.Lc1cf4:
	mov	r1, r10
	lsl	r1, #5
	mov	r2, r10
	sub	r0, r1, r2
	lsl	r0, #2
	strh	r5, [r7, #0x12]
	mov	r8, r1
	sub	r0, r2
	mov	r1, #0xa
	bl	__divsi3
	ldrh	r5, [r7, #0x18]
	add	r5, r0
	mov	r0, r9
	ldrh	r3, [r0, #8]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1d22
	mov	r5, r0
.Lc1d22:
	ldr	r6, =0x3e7
	cmp	r5, r6
	ble	.Lc1d2a
	mov	r5, r6
.Lc1d2a:
	mov	r0, r8
	strh	r5, [r7, #0x18]
	mov	r1, #0xa
	add	r0, r10
	bl	__divsi3
	mov	r1, r9
	ldrh	r3, [r1, #0xa]
	ldrh	r5, [r7, #0x1a]
	add	r5, r0
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1d4e
	mov	r5, r0
.Lc1d4e:
	cmp	r5, r6
	ble	.Lc1d54
	mov	r5, r6
.Lc1d54:
	mov	r2, r11
	lsl	r0, r2, #4
	strh	r5, [r7, #0x1a]
	mov	r1, #0xa
	add	r0, r11
	bl	__divsi3
	ldrh	r5, [r7, #0x1c]
	add	r5, r0
	mov	r0, r9
	ldrh	r3, [r0, #0xc]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1d7a
	mov	r5, r0
.Lc1d7a:
	cmp	r5, r6
	ble	.Lc1d80
	mov	r5, r6
.Lc1d80:
	mov	r1, #0x14
	strh	r5, [r7, #0x1c]
	mov	r8, r1
	mov	r6, #0x24
	mov	r4, #3
.Lc1d8a:
	ldr	r0, [sp, #4]
	ldrsh	r2, [r6, r7]
	mov	r1, r10
	sub	r3, r0, r1
	add	r5, r2, r3
	mov	r1, r9
	mov	r2, r8
	ldrsh	r3, [r2, r1]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	str	r4, [sp]
	bl	__divsi3
	ldr	r4, [sp]
	cmp	r5, r0
	bge	.Lc1dae
	mov	r5, r0
.Lc1dae:
	cmp	r5, #0xc8
	ble	.Lc1db4
	mov	r5, #0xc8
.Lc1db4:
	mov	r2, #4
	sub	r4, #1
	strh	r5, [r6, r7]
	add	r8, r2
	add	r6, #4
	cmp	r4, #0
	bge	.Lc1d8a
	ldrb	r3, [r7, #0xf]
	add	r3, r10
	strb	r3, [r7, #0xf]
	ldr	r0, [sp, #8]
	bl	_CalcStats
	mov	r0, r9
	bl	free
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1c54

