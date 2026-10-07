	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a45cc  @ 0x080a45cc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0xf
	mov	r6, r1
	bl	_SetTextColor
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	mov	r8, r2
	cmp	r3, r8
	bne	.La45f0
	mov	r0, #0xe
	bl	_SetTextColor
.La45f0:
	ldr	r7, =0xb33
	mov	r3, #0x18
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #1
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4612
	mov	r0, #0xe
	bl	_SetTextColor
.La4612:
	mov	r3, #0x18
	add	r0, r7, #1
	mov	r1, r6
	mov	r2, #0x20
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #3
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4632
	mov	r0, #0xe
	bl	_SetTextColor
.La4632:
	mov	r3, #0x20
	add	r0, r7, #2
	mov	r1, r6
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #5
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4652
	mov	r0, #0xe
	bl	_SetTextColor
.La4652:
	mov	r3, #0x20
	add	r0, r7, #3
	mov	r1, r6
	mov	r2, #0x50
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #2
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4672
	mov	r0, #0xe
	bl	_SetTextColor
.La4672:
	mov	r3, #0x18
	add	r0, r7, #4
	mov	r1, r6
	mov	r2, #0x50
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #4
	ldrsb	r3, [r5, r3]
	cmp	r3, r8
	bne	.La4692
	mov	r0, #0xe
	bl	_SetTextColor
.La4692:
	add	r0, r7, #5
	mov	r1, r6
	mov	r2, #0x20
	mov	r3, #0x20
	bl	_Func_801e7c0
	mov	r0, #0xf
	bl	_SetTextColor
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a45cc

