	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021c34  @ 0x08021c34
	push	{r5, lr}
	sub	sp, #4
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #6
	mov	r3, #4
	mov	r0, #0
	bl	CreateUIBox
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L37300
	mov	r2, #0
	mov	r3, #0
	bl	UIDrawText
	mov	r0, r5
	add	sp, #4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021c34
