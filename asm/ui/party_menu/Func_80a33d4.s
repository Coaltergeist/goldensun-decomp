	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a33d4  @ 0x080a33d4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r0
	mov	r3, #0xa8
	mov	r6, r8
	sub	sp, #4
	mov	r7, r1
	mov	r5, #0
	mov	r10, r3
	add	r6, #0x48
.La33ec:
	mov	r3, r10
	str	r3, [sp]
	mov	r1, r5
	mov	r0, #2
	mov	r2, r7
	mov	r3, #0xf8
	bl	_Func_801eb64
	add	r5, #1
	stmia	r6!, {r0}
	cmp	r5, #7
	ble	.La33ec
	mov	r3, #0xa8
	mov	r6, r8
	mov	r5, #8
	mov	r10, r3
	add	r6, #0x68
.La340e:
	mov	r3, r10
	str	r3, [sp]
	mov	r3, #0x80
	mov	r1, r5
	mov	r0, #2
	mov	r2, r7
	lsl	r3, #1
	bl	_Func_801eb64
	add	r5, #1
	stmia	r6!, {r0}
	cmp	r5, #0xf
	ble	.La340e
	mov	r3, #0xa8
	mov	r6, r8
	mov	r5, #0x10
	mov	r10, r3
	add	r6, #0x88
.La3432:
	mov	r3, r10
	str	r3, [sp]
	mov	r3, #0x80
	mov	r1, r5
	mov	r0, #2
	mov	r2, r7
	lsl	r3, #1
	bl	_Func_801eb64
	add	r5, #1
	stmia	r6!, {r0}
	cmp	r5, #0x1f
	ble	.La3432
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a33d4

