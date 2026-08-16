	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8028920  @ 0x08028920
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #1
	neg	r0, r0
	mov	r6, #0
	bl	_GetNumDjinn
	cmp	r0, #0
	bne	.L28934
	mov	r6, #1
.L28934:
	lsl	r3, r6, #1
	add	r3, r6
	ldr	r2, =.L37403
	lsl	r7, r3, #1
	add	r3, r5, r7
	ldrsb	r3, [r2, r3]
	sub	r5, r3, #1
	cmp	r5, #0
	bge	.L28948
	mov	r5, #0
.L28948:
	bl	Func_80284dc
	mov	r0, #1
	bl	AddMenuBarOption
	cmp	r6, #0
	bne	.L2895c
	mov	r0, #0xf
	bl	AddMenuBarOption
.L2895c:
	mov	r0, #2
	bl	AddMenuBarOption
	mov	r0, #7
	bl	AddMenuBarOption
	mov	r0, #0x11
	mov	r1, #7
	mov	r2, #0
	bl	Func_8028808
	mov	r0, r5
	bl	Func_8028574
	mov	r5, r0
	bl	Func_802851c
	cmp	r5, #0
	blt	.L2898a
	add	r3, r5, r7
	ldr	r2, =.L373f7
	add	r3, #1
	ldrsb	r5, [r2, r3]
.L2898a:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8028920
