	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b3d8  @ 0x0809b3d8
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r5, #0xed
	lsl	r5, #1
	ldr	r1, [r0, #0x14]
	mov	r2, #0xa0
	lsl	r2, #12
	add	r3, r5
	add	r4, r1, r2
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	ldr	r3, =1
	ldr	r6, [r0, #0x68]
	cmp	r2, r3
	bne	.L9b3fc
	mov	r2, #0x80
	lsl	r2, #11
	add	r4, r1, r2
.L9b3fc:
	ldr	r5, [r0, #0xc]
	cmp	r5, r4
	bgt	.L9b408
	bl	_DeleteActor
	b	.L9b43c
.L9b408:
	ldr	r3, [r0, #0x18]
	mov	r4, #0xc0
	lsl	r4, #4
	mov	r1, #0x80
	add	r2, r3, r4
	lsl	r1, #9
	cmp	r2, r1
	ble	.L9b41a
	mov	r2, r1
.L9b41a:
	neg	r3, r2
	str	r2, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r4, =0xfffe0000
	ldr	r3, [r6, #8]
	str	r3, [r0, #8]
	add	r3, r5, r4
	str	r3, [r0, #0xc]
	sub	r3, r1, r2
	lsl	r2, r3, #2
	add	r2, r3
	ldr	r3, [r6, #0x10]
	mov	r5, #0x80
	sub	r3, r2
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #0x10]
.L9b43c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_809b3d8
