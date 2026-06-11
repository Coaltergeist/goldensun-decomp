	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitMapFlags  @ 0x0808ab74
	push	{r5, r6, lr}
	ldr	r5, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L9f1a8
	lsl	r3, #3
	add	r3, r2
	mov	r6, #2
	ldrsb	r6, [r3, r6]
	cmp	r1, #0
	bne	.L8ac54
	mov	r5, #0x80
	lsl	r5, #2
.L8ab94:
	mov	r0, r5
	bl	_ClearFlag
	ldr	r3, =0x2ff
	add	r5, #1
	cmp	r5, r3
	ble	.L8ab94
	ldr	r3, =gState
	mov	r1, #0xe6
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r6, r3
	beq	.L8ac16
	mov	r5, #0xc0
	lsl	r5, #2
.L8abb6:
	mov	r0, r5
	bl	_ClearFlag
	ldr	r3, =0x3ff
	add	r5, #1
	cmp	r5, r3
	ble	.L8abb6
	ldr	r0, =0x12f
	bl	_SetFlag
	ldr	r5, =gState
	mov	r1, #0x8e
	lsl	r1, #2
	mov	r2, #0
	add	r3, r5, r1
	sub	r1, #6
	str	r2, [r3]
	mov	r0, #0x88
	add	r3, r5, r1
	strh	r2, [r3]
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r0, =0x111
	bl	_ClearFlag
	mov	r0, #0x89
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r0, =0x113
	bl	_ClearFlag
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0x90
	ldrh	r2, [r3]
	lsl	r1, #2
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r2, [r3]
	add	r1, #2
	add	r3, r5, r1
	strh	r2, [r3]
.L8ac16:
	mov	r5, #0x80
.L8ac18:
	mov	r0, r5
	add	r5, #1
	bl	_ClearFlag
	cmp	r5, #0xdf
	ble	.L8ac18
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_ClearFlag
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r0, =0x161
	bl	_ClearFlag
	ldr	r0, =0x123
	bl	_ClearFlag
	mov	r0, #0x8e
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r1, =gState
	ldr	r3, =0x21e
	add	r2, r1, r3
	ldr	r3, =0xffff
	strh	r3, [r2]
	mov	r5, r1
.L8ac54:
	mov	r1, #0xe6
	lsl	r1, #1
	add	r3, r5, r1
	strh	r6, [r3]
	mov	r2, #0xc0
	mov	r3, #0x7f
	lsl	r2, #1
	and	r6, r3
	add	r0, r6, r2
	bl	_SetFlag
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L9f1a8
	lsl	r3, #3
	add	r3, r2
	mov	r2, #3
	ldrsb	r2, [r3, r2]
	add	r1, #0x7e
	add	r3, r5, r1
	strh	r2, [r3]
	cmp	r2, #2
	bne	.L8ac8e
	ldr	r0, =0x123
	bl	_SetFlag
.L8ac8e:
	bl	_CheckLure
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end InitMapFlags

