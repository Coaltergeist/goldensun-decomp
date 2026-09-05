	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200e3ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0
	mov	r8, r0
	mov	r7, r1
	mov	r10, r3
	mov	r9, r3
	mov	r6, #0
	b	.Lm945_63ca
.Lm945_63c4:
	mov	r3, #1
	add	r10, r3
	add	r6, #1
.Lm945_63ca:
	cmp	r6, #8
	bhi	.Lm945_63e2
	mov	r3, r8
	add	r5, r3, r6
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_63c4
	mov	r0, r5
	bl	__ClearFlag
.Lm945_63e2:
	mov	r6, #0
	b	.Lm945_63ec
.Lm945_63e6:
	mov	r3, #1
	add	r9, r3
	add	r6, #1
.Lm945_63ec:
	cmp	r6, #8
	bhi	.Lm945_6402
	add	r5, r7, r6
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_63e6
	mov	r0, r5
	bl	__ClearFlag
.Lm945_6402:
	mov	r3, r10
	add	r0, r7, r3
	bl	__SetFlag
	mov	r0, r8
	add	r0, r9
	bl	__SetFlag
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200e3ac

