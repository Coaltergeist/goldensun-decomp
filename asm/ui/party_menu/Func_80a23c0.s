	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a23c0  @ 0x080a23c0
	push	{r5, lr}
	ldr	r3, =gState
	sub	sp, #4
	mov	r5, r0
	ldr	r0, [r3, #0x10]
	mov	r3, #0
	str	r3, [sp]
	mov	r2, r5
	mov	r1, #7
	mov	r3, #8
	bl	_Func_801e9d4
	ldr	r0, =0xb0b
	mov	r1, r5
	mov	r2, #0x40
	mov	r3, #0
	bl	_Func_801e7c0
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80a23c0

