	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a4db4  @ 0x080a4db4
	push	{r5, r6, r7, lr}
	sub	sp, #4
	mov	r6, r3
	ldr	r3, [sp, #0x14]
	mov	r5, r0
	str	r3, [sp]
	mov	r1, #3
	mov	r3, r6
	mov	r7, r2
	bl	_Func_801ea08
	mov	r2, #1
	mov	r3, r5
	cmp	r5, #0
	bge	.La4dd4
	neg	r3, r5
.La4dd4:
	cmp	r3, #9
	ble	.La4dda
	mov	r2, #2
.La4dda:
	mov	r3, r5
	cmp	r5, #0
	bge	.La4de2
	neg	r3, r5
.La4de2:
	cmp	r3, #0x63
	ble	.La4de8
	mov	r2, #3
.La4de8:
	cmp	r5, #0
	ble	.La4dfe
	lsl	r2, #3
	sub	r2, r6, r2
	ldr	r0, =.Laf224
	add	r2, #0x10
	mov	r1, r7
	ldr	r3, [sp, #0x14]
	bl	_UIDrawText
	b	.La4e0e
.La4dfe:
	lsl	r2, #3
	sub	r2, r6, r2
	ldr	r0, =.Laf228
	add	r2, #0x10
	mov	r1, r7
	ldr	r3, [sp, #0x14]
	bl	_UIDrawText
.La4e0e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a4db4

