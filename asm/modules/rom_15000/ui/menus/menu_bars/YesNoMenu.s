	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start YesNoMenu  @ 0x08028df4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r2
	mov	r6, r3
	mov	r3, #0
	mov	r7, r0
	mov	r10, r1
	mov	r8, r3
	bl	Func_80284dc
	cmp	r5, #0
	bne	.L28e12
	mov	r5, #3
.L28e12:
	cmp	r7, #0
	beq	.L28e1a
	mov	r3, #0x11
	mov	r8, r3
.L28e1a:
	mov	r0, #5
	bl	AddMenuBarOption
	mov	r0, #6
	bl	AddMenuBarOption
	mov	r1, r5
	mov	r2, r10
	mov	r0, r8
	bl	Func_8028808
	mov	r0, r6
	bl	Func_8028574
	mov	r6, r0
	bl	Func_802851c
	mov	r3, #1
	neg	r3, r3
	cmp	r6, r3
	bne	.L28e46
	mov	r6, #1
.L28e46:
	mov	r0, r6
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end YesNoMenu
