	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a21b0  @ 0x080a21b0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r6, r2
	sub	sp, #4
	mov	r1, r6
	mov	r9, r0
	mov	r11, r3
	mov	r0, r5
	mov	r3, #0x31
	ldr	r7, [sp, #0x24]
	mov	r10, r3
	bl	__divsi3
	mov	r1, r6
	mov	r8, r0
	mov	r0, r5
	bl	__modsi3
	cmp	r0, #0
	beq	.La21e8
	mov	r3, #1
	add	r8, r3
.La21e8:
	mov	r3, r8
	sub	r7, r3
	cmp	r3, #1
	ble	.La224c
	mov	r0, #0
	mov	r3, #1
	str	r0, [sp]
	ldr	r1, =0xf128
	sub	r2, r7, #1
	neg	r3, r3
	mov	r0, r9
	mov	r5, #0
	bl	_Func_8019000
	cmp	r5, r8
	bge	.La223a
.La2208:
	cmp	r5, r11
	bne	.La221e
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r9
	mov	r1, r10
	mov	r2, r7
	sub	r3, #3
	bl	_Func_8019000
	b	.La222e
.La221e:
	mov	r3, #3
	str	r3, [sp]
	mov	r0, r9
	mov	r1, r10
	mov	r2, r7
	sub	r3, #4
	bl	_Func_8019000
.La222e:
	mov	r3, #1
	add	r5, #1
	add	r10, r3
	add	r7, #1
	cmp	r5, r8
	blt	.La2208
.La223a:
	mov	r2, #0
	mov	r3, #1
	str	r2, [sp]
	ldr	r1, =0xf129
	neg	r3, r3
	mov	r0, r9
	mov	r2, r7
	bl	_Func_8019000
.La224c:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a21b0

