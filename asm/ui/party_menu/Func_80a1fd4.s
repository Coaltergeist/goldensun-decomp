	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1fd4  @ 0x080a1fd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	ldr	r1, [sp, #0x1c]
	mov	r5, r0
	mov	r7, r2
	mov	r0, #1
	mov	r2, r8
	mov	r6, r3
	mov	r10, r1
	neg	r0, r0
	cmp	r2, #0
	bne	.La1ff6
	b	.La212e
.La1ff6:
	ldr	r0, =0x6002500
	bl	_Func_80219c8
	mov	r1, r7
	mov	r0, r8
	bl	__divsi3
	mov	r1, r7
	mov	r9, r0
	mov	r0, r8
	bl	__modsi3
	cmp	r0, #0
	beq	.La2016
	mov	r3, #1
	add	r9, r3
.La2016:
	cmp	r5, #0
	beq	.La2034
	ldr	r2, =gKeyRepeat
	ldr	r4, [r2]
	mov	r3, #0x10
	ldr	r1, [r2]
	and	r4, r3
	ldr	r5, [r2]
	mov	r3, #0x20
	and	r1, r3
	ldr	r2, [r2]
	mov	r3, #0x40
	and	r5, r3
	mov	r3, #0x80
	b	.La204c
.La2034:
	ldr	r2, =gKeyRepeat
	ldr	r4, [r2]
	mov	r3, #0x80
	ldr	r1, [r2]
	and	r4, r3
	ldr	r5, [r2]
	mov	r3, #0x40
	and	r1, r3
	ldr	r2, [r2]
	mov	r3, #0x20
	and	r5, r3
	mov	r3, #0x10
.La204c:
	and	r2, r3
	cmp	r5, #0
	beq	.La2084
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, r10
	ldr	r3, [r1]
	sub	r3, #1
	str	r3, [r1]
	cmp	r3, #0
	bge	.La206a
	mov	r3, r9
	sub	r3, #1
	str	r3, [r1]
.La206a:
	mov	r2, r10
	ldr	r3, [r2]
	mov	r0, r7
	mul	r0, r3
	ldr	r3, [r6]
	mov	r2, r8
	add	r3, r0
	sub	r2, #1
	cmp	r3, r2
	ble	.La20c6
	mov	r1, r8
	sub	r3, r1, r0
	b	.La20ba
.La2084:
	cmp	r2, #0
	beq	.La20ce
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, r10
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	mov	r2, r9
	sub	r2, #1
	cmp	r3, r2
	ble	.La20a2
	mov	r3, r10
	str	r5, [r3]
.La20a2:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r0, r7
	mul	r0, r3
	ldr	r3, [r6]
	mov	r2, r8
	add	r3, r0
	sub	r2, #1
	cmp	r3, r2
	ble	.La20c6
	mov	r2, r8
	sub	r3, r2, r0
.La20ba:
	sub	r3, #1
	sub	r1, r7, #1
	str	r3, [r6]
	cmp	r3, r1
	ble	.La20c6
	str	r1, [r6]
.La20c6:
	bl	Func_800352c
	mov	r0, #1
	b	.La212e
.La20ce:
	cmp	r1, #0
	beq	.La20fc
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r3, [r6]
	sub	r3, #1
	str	r3, [r6]
	cmp	r3, #0
	bge	.La212c
	sub	r2, r7, #1
	str	r2, [r6]
	mov	r1, r10
	ldr	r3, [r1]
	mul	r3, r7
	mov	r1, r8
	sub	r3, r1, r3
	sub	r3, #1
	str	r3, [r6]
	cmp	r3, r2
	ble	.La212c
	str	r2, [r6]
	b	.La212c
.La20fc:
	mov	r0, #1
	neg	r0, r0
	cmp	r4, #0
	beq	.La212e
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r2, [r6]
	add	r2, #1
	str	r2, [r6]
	mov	r1, r10
	ldr	r3, [r1]
	mul	r3, r7
	mov	r1, r8
	sub	r3, r1, r3
	mov	r0, #0
	cmp	r2, r3
	bne	.La2122
	str	r0, [r6]
.La2122:
	ldr	r3, [r6]
	sub	r2, r7, #1
	cmp	r3, r2
	ble	.La212c
	str	r0, [r6]
.La212c:
	mov	r0, #0
.La212e:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a1fd4

