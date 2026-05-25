	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bb8e8
	push	{r5, lr}
	mov	r5, r0
	bl	_Func_8077394
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lbb922
	mov	r1, #0
	bl	_Func_80782a0
	mov	r0, r5
	bl	Func_80bac6c
	mov	r0, r5
	bl	Func_80b7e60
	mov	r0, r5
	bl	Func_80b7dd0
	mov	r5, r0
	ldr	r0, [r5]
	bl	_Func_800c0f4
	mov	r3, #0
	str	r3, [r5]
	strh	r3, [r5, #0x28]
.Lbb922:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80bb8e8

